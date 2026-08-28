// NOT Gate Design
module NOT_Gate (
  input logic a,
  output logic y
);
  
  // Continuous assignment modeling the NOT logic
  assign y = ~a;

endmodule
