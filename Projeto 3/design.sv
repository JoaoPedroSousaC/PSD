module Contador(Reset, Clock, UpDown, Load, Entrada, Saida);
  	input wire Reset, UpDown, Load;
  	input Clock;
  	input wire [3:0] Entrada;
  	output wire [3:0] Saida;
  	
  bit[3:0] valor;
  assign Saida = valor;
 	
   

  always_ff @(posedge Clock, negedge Reset or Load)
    begin  
      
      if(Reset)
        valor = 0;
      else        
        if(Load)
          valor = Entrada;
        else  
          if(UpDown)
          	valor = Saida  + 1'b1;
      	  if(!UpDown)  
      		   
          	valor = Saida - 1'b1;
    end

endmodule