// 2-input XNOR Gate Design
module xnor_gate (
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the XNOR logic
  assign y = a ~^ b;
  
endmodule
