module beep(input clk, enable, output reg Y);

//couting register
reg [5:0] delay;



always @(posedge clk) begin
    

    //waits 50 cycles before giving an output
    if(enable) begin
        
        delay = delay + 1;
        
        if(delay == 50) Y = 1;
        
    end
    
    else begin
     
    delay = 0; 
    Y = 0;
    
    end
    
end

endmodule
