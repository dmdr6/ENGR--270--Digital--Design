// 2-input XNOR Gate Testbench
module xnor_gate_testbench;
  
  // Testbench signals to drive inputs and observe outputs
  logic a;
  logic b;
  logic y;
  
  // Instantiate the Unit Under Test (UUT)
  xnor_gate uut (
    .a(a),
    .b(b),
    .y(y)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: a = 0, b = 0 -> y = 1
    a = 0; b = 0;
    #10;
    
    // Case 2: a = 0, b = 1 -> y = 0
    a = 0; b = 1;
    #10;
    
    // Case 3: a = 1, b = 0 -> y = 0
    a = 1; b = 0;
    #10;
    
    // Case 4: a = 1, b = 1 -> y = 1
    a = 1; b = 1;
    #10;
    
    // End simulation
    $finish;
  end
  
endmodule
