`timescale 1ns/1ps

class generator;
    transaction trans;
    mailbox #(transaction) gen2driv;
    int transaction_count;
    event ended; 

   
    int force_mode = -1; 
    int force_size = -1;

    function new(mailbox #(transaction) gen2driv);
        this.gen2driv = gen2driv;
    endfunction

    task run();
        for (int i = 0; i < transaction_count; i++) begin
            trans = new();
            if (!trans.randomize()) $fatal(1, "[GENERATOR] Randomization failed!");
            
            if (force_mode == 0) trans.sg_mode = 1'b0;
            if (force_mode == 1) trans.sg_mode = 1'b1;
            if (force_size  > 0) trans.transfer_bytes = force_size;

            gen2driv.put(trans.copy());
            
            if (trans.sg_mode)
                $display("[GENERATOR] Created SG Transaction %0d", i+1);
            else
                $display("[GENERATOR] Created Normal Transaction %0d (Size: %0d)", i+1, trans.transfer_bytes);
        end
        -> ended; 
    endtask
endclass
