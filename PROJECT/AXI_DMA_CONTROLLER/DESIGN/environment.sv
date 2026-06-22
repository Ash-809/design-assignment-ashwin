class environment;
    agent      agt; 
    scoreboard scb;
    
    mailbox #(transaction) mon2scb;
    virtual axi_dma_if vif;

    function new(virtual axi_dma_if vif);
        this.vif = vif;
        mon2scb = new(); 
        agt = new(vif, mon2scb); 
        scb = new(mon2scb);
    endfunction

    task run(); 
        fork 
            agt.run(); 
            scb.run(); 
        join_any 
    endtask
endclass
