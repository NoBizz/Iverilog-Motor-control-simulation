module display_if(input [3:0] bcd,enable_segment, output reg [15:0] seg);


//the block is executed only when any change in the input is detected

always @(bcd,enable_segment) begin


//the module will execute only when the enable is on

  if(enable_segment) begin


    //bcd is our number we want to display
    
    case(bcd)
  
    /*
      each number has its own coresponding segment
      from 1 to 9, the default simply turns the segments off untill further notice
    */

  
      0: seg = 16'b111111110000110;
      1: seg = 16'b011000000000000; 
      2: seg = 16'b110111011100000;
      3: seg = 16'b111110011000000;
      4: seg = 16'b011000101100000;
      5: seg = 16'b101110111100000;
      6: seg = 16'b101111111100000;
      7: seg = 16'b111000100000000;
      8: seg = 16'b111111111100000;
      9: seg = 16'b111110111100000;

      default : seg = 16'b0000000000000000;
    endcase
  end
end

endmodule
