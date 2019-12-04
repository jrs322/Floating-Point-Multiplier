//check for zeroes
//add the exponents and subtract 127
//check for over/underflow
//multiply the mantissas
//normalize the sign of the result
//round the result
module floating_point_multiplication(clk, input_a, input_b, product);
  input[31:0] input_a. input_b;
  input clk;
  output[31:0] product;
  wire[7:0] exponent_a, exponent_b;
  wire sign_a, sign_b;
  wire[23:0] mantissa_a, mantissa_b;
  reg[31:0] product_reg;
  reg[7:0] exponent_sum;
  assign mantissa_a = {1'b1, input_a[23:0]};
  assign mantissa_b = {1'b1, input_b[23:0]};
  always@(posedge clk) begin
    if (input_a ==32'b0 or input_b==32'b0)
      product_reg = 32'b0;
    else begin
      
    end
  end
endmodule 

module exponent_calc(expo_a, expo_b, expo_out);
  input[7:0] expo_a, expo_b;
  output[7:0] expo_out;
endmodule

module mantissa_multiplier(mant_a, mant_b, mant_p);
  input[23:0] mant_a, mant_b;
  output[23:0] mant_p;
  reg[47:0] p_reg;
  reg[4:0] counter;
  assign
  always @(mant_a or mant_b)
    begin
      for(counter = 24'b0; counter < 24; counter = counter + 1'b1) begin
        if( multiplier[counter] == 1'b1 ) product = product + ( multiplicand << counter );
      end
    end
endmodule
