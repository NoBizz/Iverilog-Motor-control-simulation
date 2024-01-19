`timescale 1ns/10ps

module squrt_tb;

    reg clk,reset,next,previous;
    reg [31:0] n;
    reg [31:0] delta;
    
    integer i ;
    
    
    initial begin
        
        //delcareing variables
        clk = 0;
        n = 1'd1;
        delta = 3'b00_1;
    
        reset = 0;
        next = 1;
        previous = 1;
    
        $dumpfile("sqrt_tb.vcd");
        $dumpvars;
        
        //i represents one cycle
        for(i = 0; i < 200 ; i = i+1) begin
            clk = ~clk; #10;
            
            //set previous to 0 and continue with next
            if(i > 1)begin
                previous = 0;
            end
            
        end
      
    end
    
    printsqrt print(reset,previous,next,clk,n,delta,i);
    

endmodule
