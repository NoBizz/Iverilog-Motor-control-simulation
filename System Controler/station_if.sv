module station_if(input reset , clk, enable, input [3:0] code, output Y);

    wire [3:0] cm;

    //current state
    reg [1:0] ps;

    //next state
    reg [1:0] ns;

    //State encoding
    reg [1:0] scan = 2'b00 , beep = 2'b10 , db = 2'b01 , led = 2'b11;
    wire dbstate,beepstate,ledlights,scanner;
    
    always @(clk) begin
       
       //next state logic
        if(reset) ps = scan;
        else ps = ns;
        
        case(ps)
           
           scan : if(scanner) ns = beep;
                  else ns = scan;
                  
           beep : if(beepstate) ns = db;
                  else ns = beep;
                  
           //feedback loop from LED to database      
           //if no item is found
           db : if(dbstate) ns = led;
                else ns = led;
                
           led : if(ledlights) ns = scan;
                 else ns = db;
           
           default: ns = scan; 
       endcase
        
   end
   
   //decoder is used to controll the enableing signals to each of the modules
    decoder_2x4 decoder(ps,cm);
    scanner scanmod(clk,cm[0],code,scanner);
    beep beeper(clk,cm[1],beepstate);
    database dbs(clk,cm[2],code,dbstate);
    LED leds(clk,cm[3],dbstate,ledlights);

endmodule
