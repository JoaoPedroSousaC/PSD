module somador( a, b, s,  flag);
  	input byte  a, b;
  	
  	output byte  s;
	output bit flag;
 	byte soma;

 always_comb begin
  	soma = a + b;
 	s = soma;
   	if(a[7] == b[7])
      begin
        if(a[7] == 1'b1) 
          begin 
            if (soma[7] == 1'b0) 
            
              begin
              	flag = 1'b0; 
              end 
            
          	else 
              begin
              	flag = 1'b1;
              end
          end 
        else
          begin
          
            if (soma[7] == 1'b1) 
              begin 
           	 	flag = 1'b0; 
              end
            
           	else 
              begin
                flag = 1'b1;
              end
          end
      end 
   		else
    	flag = 1'b1;
  end  
endmodule: somador
