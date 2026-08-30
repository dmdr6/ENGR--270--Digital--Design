// Half Adder Design
module half_adder (
  input logic a,
  input logic b,
  output logic sum,
  output logic carry
);
  
  // Continuous assignment modeling the Half Adder logic
  assign sum = a ^ b;
  assign carry = a & b;
  
endmodule
