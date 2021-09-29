module SN74LS165(PL, Clock1, Clock2, DS, P0, P1, P2, P3, P4, P5, P6, P7, Q7, Q7b);
  	input wire PL, DS, P0, P1, P2, P3, P4, P5, P6, P7;
  	input Clock1, Clock2;  	
  	output wire Q7, Q7b;
  	bit Q0, Q1, Q2, Q3, Q4,Q5,Q6;
  	bit valor, valorb;
	assign Q7 = valor;
	assign Q7b = ~valor; 	
   

  always_ff @(posedge Clock1 or posedge Clock2 or PL) begin
           
    if (!PL) begin
     
        Q0 = P0;
      	Q1 = P1;
      	Q2 = P2;
      	Q3 = P3;
      	Q4 = P4;
      	Q5 = P5;	
        Q6 = P6;
      	valor = P7;
      	
    
    end 
    else  
      if((Clock1 && ~Clock2) || (~Clock1 && Clock2)) begin
          
        	Q0 <= DS;
      		Q1 <= Q0;
      		Q2 <= Q1;
      		Q3 <= Q2;
            Q4 <= Q3;
            Q5 <= Q4;	
            Q6 <= Q5;
            valor <= Q6;
               
      end
    
      
  end
endmodule