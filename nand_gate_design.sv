// NAND Gate Design
module nand_gate(
  input logic a,
  input logic b,
  output logic y
);
  
  // Continuous assignment modeling the NAND logic
  assign y = ~ (a & b);
  
endmodule
