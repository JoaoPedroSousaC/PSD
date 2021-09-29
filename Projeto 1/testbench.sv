module tb_somador;
  byte   A_tb;
  byte  B_tb;
  
  byte   Soma_tb;
  
  logic flag_tb;
  
  
  somador duv(.a(A_tb), .b(B_tb),  .s(Soma_tb),  .flag(flag_tb));
  
 
  initial begin
   	
   A_tb = 0;
   B_tb = 0;
   
    
    $monitor("%b + %b = %b, flag = %b", A_tb, B_tb, Soma_tb, flag_tb);   
 
  #1 
 
  #1 A_tb = 8'b11111111;  B_tb = 8'b11111110;     
  #1 A_tb = 8'b10000000;  B_tb = 8'b11111110; 
  #1 A_tb = 8'b01111111;  B_tb = 8'b11111110; 
  #1 A_tb = 8'b01111111;  B_tb = 8'b00000001; 
  #1 A_tb = 8'b10000000;  B_tb = 8'b00000100; 
  #1 A_tb = 8'b00001000;  B_tb = 8'b11111100;
  #1 A_tb = 8'b01111111;  B_tb = 8'b00000111;  
    
    
    
  #1  

  
   $finish();
  end  
endmodule

  