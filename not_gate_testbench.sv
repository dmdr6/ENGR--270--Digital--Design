// NOT Gate Testbench
module not_gate_tb;
  
  // Testbench signals to drive inputs and observe outputs
  logic a;
  logic y;
  
  // Instantiate the Unit Under Test (UUT)
  not_gate uut (
    .a(a),
    .y(y)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: a = 0 -> y = 1
    a = 0;
    #10;
    
    // Case 2: a = 1 -> y = 0
    a = 1;
    #10;
    
    // End simulation
    $finish;
  end
 
endmodule
