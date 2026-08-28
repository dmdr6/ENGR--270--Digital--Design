// NOT Gate Design
module not_gate (
  input logic a,
  output logic y
);
  
  // Continuous assignment modeling the NOT logic
  assign y = ~a;

endmodule
