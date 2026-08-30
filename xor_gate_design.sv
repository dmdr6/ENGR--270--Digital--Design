// 2-input XOR Gate Design
module xor_gate (
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the XOR logic
  assign y = a ^ b;
  
endmodule
