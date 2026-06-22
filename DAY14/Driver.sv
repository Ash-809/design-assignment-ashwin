`timescale 1ns/1ps

class driver;

    virtual axi_dma_if vif;
    mailbox #(transaction) gen2driv;

    function new(virtual axi_dma_if vif, mailbox #(transaction) gen2driv);
        this.vif = vif;
        this.gen2driv = gen2driv;
    endfunction

    task reset();
        $display("[DRIVER] Initiating System Reset Protocol...");
        vif.DMA_EN        <= 1'b0;
        vif.DMA_GO        <= 1'b0;
        vif.SG_MODE       <= 1'b0;
        vif.DMA_SRC       <= 32'h0;
        vif.DMA_DST       <= 32'h0;
        vif.DMA_BNUM      <= 32'h0;
        vif.DMA_CHUNK     <= 8'h0;
        vif.SG_DESC_ADDR  <= 32'h0;
        wait(vif.ARESETn);
        $display("[DRIVER] Reset Released. System Ready.");
    endtask

    task main();
        forever begin
            transaction trans;
            gen2driv.get(trans);
            
            @(posedge vif.ACLK);
            vif.DMA_EN   <= 1'b1;
            vif.SG_MODE  <= trans.sg_mode;
            
            if (trans.sg_mode) begin
                vif.SG_DESC_ADDR <= trans.sg_desc_addr;
                trans.print("DRIVER_SG");
            end else begin
                vif.DMA_SRC   <= trans.src_addr;
                vif.DMA_DST   <= trans.dest_addr;
                vif.DMA_BNUM  <= trans.transfer_bytes;
                vif.DMA_CHUNK <= trans.chunk_size;
                trans.print("DRIVER_NORMAL");
            end
            
            vif.DMA_GO   <= 1'b1;
            @(posedge vif.ACLK);
            vif.DMA_GO   <= 1'b0;

            if (trans.sg_mode) begin
                wait(vif.SG_DONE);
            end else begin
                wait(vif.DMA_DONE);
            end
            
            repeat(5) @(posedge vif.ACLK);
            $display("[DRIVER] Current Transaction Complete.");
        end
    endtask

endclass
