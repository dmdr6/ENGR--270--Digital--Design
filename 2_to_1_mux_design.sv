// 2-to-1 MUX Design
module mux_2_to_1 (
  input logic s,
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the 2-to-1 MUX logic
  assign y = s ? b : a;
 
endmodule
