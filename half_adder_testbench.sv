// Half Adder Testbench
module half_adder_tb;
  
  // Testbench signals to drive inputs and observe outputs
  logic a;
  logic b;
  logic sum;
  logic carry;
  
  // Instantiate the Unit Under Test (UUT)
  half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: a = 0, b = 0 -> sum = 0, carry = 0
    a = 0; b = 0;
    #10;
    
    // Case 2: a = 0, b = 1 -> sum = 1, carry = 0
    a = 0; b = 1;
    #10;
    
    // Case 3: a = 1, b = 0 -> sum = 1, carry = 0
    a = 1; b = 0;
    #10;
    
    // Case 4: a = 1, b = 1 -> sum = 0, carry = 1
    a = 1; b = 1;
    #10;
    
    // Stop simulation
    $finish;
  end
  
endmodule
