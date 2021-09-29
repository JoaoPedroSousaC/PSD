module Contador_tb();
  
  bit Reset, Clock, UpDown, Load;
  bit [3:0] Entrada;
  bit [3:0] Saida;
 
  
  Contador Cont(.Reset(Reset), .Clock(Clock),
         .UpDown(UpDown),
         .Load(Load),
         .Entrada(Entrada),
         .Saida(Saida));
  
  initial begin
    $dumpfile("Contador_tb.vcd");
    $dumpvars(1, Contador_tb);
    UpDown = 1'b1;
    #01 Clock = 1'b0; 
    
    
    $monitor("[%0tns] Reset: %b; Up/Down: %b; Load: %b; Entrada: %b; Saida: %d;   ",$time, Reset, UpDown,  Load ,Entrada, Saida); 
    
    		
  
   #10 Reset = 1'b1;
   #15 Reset = 1'b0;    
   #20 Reset = 1'b1;  
   #20 Reset = 1'b0; 
   #10 Load = 1'b1;
   #10 Load = 1'b0; 
   
   #01 UpDown = 1'b1; 
   #05Reset = 1'b1;   
    
   #30 Reset = 1'b0;
   #30 Reset = 1'b1; 
   #10 Reset = 1'b0; 
    #1 UpDown = 1'b0;
   #5 Entrada = 4'b0101;  
   #30 Load = 1'b1;   
   #5 Reset = 1'b1; 
  #200 $finish();
  end
  	always #1 Clock = ~Clock;
endmodule: Contador_tb;
