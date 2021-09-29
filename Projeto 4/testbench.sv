module SN74LS165_tb();
  
  bit PL, Clock1, Clock2, DS, P0, P1, P2, P3, P4, P5, P6, P7, Q7, Q7b;
  
 
  
  SN74LS165 SN74LS165(.PL(PL), .Clock1(Clock1),
                .Clock2(Clock2),
                .DS(DS),
                .P0(P0),
                .P1(P1),
                .P2(P2),
                .P3(P3),
                .P4(P4),
                .P5(P5),
                .P6(P6),
                .P7(P7),
                .Q7(Q7),
                .Q7b(Q7b));
  
  initial begin
    $dumpfile("SN74LS165_tb.vcd");
    $dumpvars(1, SN74LS165_tb);
    
   
    
    $monitor("Q= %b; Qb= %b; Clock1= %b; Clock2= %b; PL= %b; DS= %b   ", Q7, Q7b, Clock1 ,Clock2, PL, DS); 
    
    P0 = 1;
    P1 = 0;
    P2 = 0;
    P3 = 0;
    P4 = 0;
    P5 = 1;
    P6 = 0;
    P7 = 1;   
 
     
    
    #1 DS = 1'b1;
    #1 PL = 1'b1;
    #1 Clock1 = 1'b1;
    #1 DS = 1'b0;
    
    #1 Clock1 = 1'b0;
    #1 Clock1 = 1'b1;
    #1 Clock2 = 1'b1;
    #1 Clock1 = 1'b0;
    #1 Clock1 = 1'b1;
    #1 Clock2 = 1'b0;
    #1 Clock1 = 1'b0;
    #1 Clock1 = 1'b1;
    #1 Clock1 = 1'b0;
    #1 Clock1 = 1'b1;
    
    
    #1 PL = 1'b0;
    #1 PL = 1'b1;
   #100 $finish();
  end
  	
endmodule: SN74LS165_tb;
