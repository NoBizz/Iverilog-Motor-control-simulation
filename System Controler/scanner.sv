module scanner(input clk,enable, input[3:0] code,output reg code_valid);


//two registers, both areuse to do a hard verification
reg [3:0] validation;
reg [3:0] hardcopy;

always @(posedge clk) begin
    
    if(enable) begin
    
    //by conneting two registers in paralel and
    //loading the next value after one iteration we can simultainiosly 
    //check if the value is undefined in other words not valid
        validation[hardcopy] = code[hardcopy];
        
        if(validation[hardcopy] == 1'bx)begin
            
            code_valid = 0;
        end
        else begin
        
            if(hardcopy == 4)begin
             code_valid = 1;
            end       
        
        hardcopy = hardcopy +1;
        end
    end
    
    else begin
     
        hardcopy = 0;
        code_valid = 0;
        
     end;

end

endmodule
