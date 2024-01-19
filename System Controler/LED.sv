module LED(input clk,enable,dbstate, output reg Y);

//green  = led[0]  ; red = led [0]
reg [1:0]led;

always @(posedge clk) begin

//determines what the leds should be set to depending on the previous state
    if(enable) begin
        
        case(dbstate)
        
            0 : {led[1], led[0],Y } = {1'b1,  1'b0, 1'b0};
            
            1 : {led[0] , led[1] , Y} = {1'b1, 1'b0 , 1'b1};
         
            
        endcase
        
        
    end

end


endmodule
