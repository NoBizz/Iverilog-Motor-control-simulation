module steppermotor(input dir,enable,pulse, input wire signed [31:0] distance);



      //coils
reg A,B,C,D;

      //step count
reg [31:0] steps = 0;

      //step position keeps track of quarter circle  the motor is at     
reg [3:0] p = 0;

  always @(pulse) begin
    
    //distance is given in steps whitch are calculated in a different module
    if(steps != distance) begin

    //the step will be compleated and incremented only when the enite circle has been rotated
    if(p == 4 ) begin
    
        p = 0;
        steps = steps + 1;
    
    end

    // direction controll for going forwards
    if(enable && dir) begin
        
       case(p)
        
          0 : {A, B, C, D} = {1'd1,1'd0,1'd0,1'd1};
          1 : {A, B, C, D} = {1'd1,1'd1,1'd0,1'd0};
          2 : {A, B, C, D} = {1'd0,1'd1,1'd1,1'd0};
          3 : {A, B, C, D} = {1'd0,1'd0,1'd1,1'd1};

          default: {A, B, C, D} = {1'd0,1'd0,1'd0,1'd0};
       endcase
     end 

    //direction controll for going backwards
     if(enable && ~dir) begin
        
        case(p)
        
          0 : {D, C, B, A} = {1'd1,1'd0,1'd0,1'd1};
          1 : {D, C, B, A} = {1'd1,1'd1,1'd0,1'd0};
          2 : {D, C, B, A} = {1'd0,1'd1,1'd1,1'd0};
          3 : {D, C, B, A} = {1'd0,1'd0,1'd1,1'd1};
          
            default: {A, B, C, D} = {1'd0,1'd0,1'd0,1'd0};
        endcase
        
     end 
    end   

    //stop the motors if one of these conditions are true
     if(~enable || steps == distance) begin
     
        {A ,B ,C ,D} = {1'd0,1'd0,1'd0,1'd0};
        p = 0;
        
     end 
    p = p+1;
  end

endmodule
