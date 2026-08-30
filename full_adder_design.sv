// Full Adder Design
module full_adder (
  input logic a,
  input logic b,
  input logic cin,
  output logic sum,
  output logic cout
);
  
  // Continuous assignment modeling the Full Adder logic
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
  
endmodule
