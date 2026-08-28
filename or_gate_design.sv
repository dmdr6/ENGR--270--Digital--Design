// 2-input OR Gate Design
module or_gate (
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the AND logic
  assign y = a | b;

endmodule
