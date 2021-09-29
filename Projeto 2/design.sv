module Mux( C1, C2, C3, C4, C5, C6, C7, C8, Seletor, Saida);
    input byte  C1, C2, C3, C4, C5, C6, C7, C8;
  	input bit [2:0] Seletor;
    output byte Saida;
    

 always_comb begin
   if(Seletor == 3'b000)
     Saida = C1;
   if(Seletor == 3'b001)
     Saida = C2;
   if(Seletor == 3'b010)
     Saida = C3;
   if(Seletor == 3'b011)
     Saida = C4;
   if(Seletor == 3'b100)
     Saida = C5;
   if(Seletor == 3'b101)
     Saida = C6;
   if(Seletor == 3'b110)
     Saida = C7;
   if(Seletor == 3'b111)
     Saida = C8;
end
  
endmodule: Mux
