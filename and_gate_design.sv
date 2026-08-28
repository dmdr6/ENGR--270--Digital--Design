// 2-input AND Gate Design
module and_gate(
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the AND logic
  assign y = a & b;

endmodule
