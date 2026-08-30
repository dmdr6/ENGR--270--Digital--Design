// 2-input NOR Gate Design
module nor_gate (
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the NOR logic
  assign y = ~ (a | b);
  
endmodule
