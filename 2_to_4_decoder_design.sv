module decoder_2_to_4 (
  input logic en,
  input logic [1:0] a,
  output logic [3:0] y
);
  
  // Continuous assignment modeling the 2-to-4 Decoder logic
  assign y[0] = en & ~a[0] & ~a[0];
  assign y[1] = en & ~a[0] &  a[0];
  assign y[2] = en &  a[1] & ~a[0];
  assign y[3] = en &  a[1] &  a[0]; 
  
endmodule
