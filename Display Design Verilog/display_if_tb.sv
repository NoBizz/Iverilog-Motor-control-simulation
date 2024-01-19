`timescale 1ns/10ps 

module display_if_tb;

 reg [7:0] bcd = 0;
 reg [3:0] enable_segment;
 wire [15:0] seg;
 wire [15:0] segtwo;
 


 initial begin
 
  
   $dumpfile("display_if_tb.vcd");
   $dumpvars;

   enable_segment = 1;
    
   //number to be displayd
   bcd = 2'd55;

   #50 $stop;
   
  
 end
  
//the bcd register array splits its connections between display 1 and 2

 display_if display1(bcd[3:0],enable_segment,seg);
 display_if display2(bcd[7:4],enable_segment,segtwo);

 endmodule
