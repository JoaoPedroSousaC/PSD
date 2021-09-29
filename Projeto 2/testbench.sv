module mux_tb;
  byte C1, C2, C3, C4, C5, C6, C7, C8, Saida;
  bit [2:0] Seletor;
  
  
  Mux s1(.C1(C1), .C2(C2), .C3(C3), .C4(C4), .C5(C5), .C6(C6), .C7(C7), .C8(C8), .Saida(Saida), .Seletor(Seletor));
  
  initial begin
    $display("*** teste ***");
    
    $monitor("Seletor=%b , Saida=%b", Seletor, Saida);
    C1 = 8'b00000000;
    C2 = 8'b00000001;
    C3 = 8'b00000010;
    C4 = 8'b00000011;
    C5 = 8'b00000100;
    C6 = 8'b00000101;
    C7 = 8'b00000110;
    C8 = 8'b00000111;
    #1 Seletor = 3'b000;
    #1 Seletor = 3'b001;
    #1 Seletor = 3'b010;
    #1 Seletor = 3'b011;
    #1 Seletor = 3'b100;
    #1 Seletor = 3'b101;
    #1 Seletor = 3'b110;
    #1 Seletor = 3'b111;
    
    #1 $finish();
  end
endmodule;