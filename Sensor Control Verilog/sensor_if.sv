module sensor_if(input sens_active,reset,clk,output passed);

// Using a shift register to wait by exploiting its propagation delay
reg [255-1:0] shift_reg;

/*
compleated is passed on only if the circuit has went threw all the required stages
uninterupted is an internal switch for checking in what the state is the sensore
before preceading to the nexr execution block
*/
reg compleated,uninterupted;

  always @(posedge clk) begin

  //execute of the sensore is not interupted
  if(~reset && sens_active && ~uninterupted)begin

      shift_reg <= {shift_reg[255-2:0], sens_active};

      if(shift_reg[255-1])begin
        uninterupted = 1;
        shift_reg <= 0;
      end
    end  

    //execute if the sensore is interupted
    if(~reset && uninterupted && ~sens_active)begin
      
      shift_reg <= {shift_reg[255-2:0], ~sens_active};

    end if(uninterupted && shift_reg[255-1] && ~sens_active) begin
    
      compleated = 1;
    
    end

    if(reset) begin
      shift_reg <= 0;
      compleated = 0;
      uninterupted = 0;
    end
  end
  
  assign passed = compleated;

endmodule
