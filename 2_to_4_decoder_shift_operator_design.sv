module decoder_2_to_4 (
  input logic en,
  input logic [1:0] a,
  output logic [3:0] y
);
  
  // Continuous assignment modeling the 2-to-4 Decoder logic
  assign y = en ? (4'b0001 << a) : 4'b0000;
  
endmodule
