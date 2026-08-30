// 2-to-1 MUX Testbench
module mux_2_to_1_tb;
  
  // Testbench signals to drive input and observe outputs
  logic s;
  logic a;
  logic b;
  logic y;
  
  // Instantiate the Unit Under Test (UUT)
  mux_2_to_1 uut (
    .s(s),
    .a(a),
    .b(b),
    .y(y)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: s = 0, a = 0, b = 0 -> y = 0
    s = 0; a = 0; b = 0;
    #10;
    
    // Case 2: s = 0, a = 0, b = 1 -> y = 0
    s = 0; a = 0; b = 1;
    #10;
    
    // Case 3: s = 0, a = 1, b = 0 -> y = 1
    s = 0; a = 1; b = 0;
    #10;

    // Case 4: s = 0, a = 1, b = 1 -> y = 1
    s = 0; a = 1; b = 1;
    #10;

    // Case 5: s = 1, a = 0, b = 0 -> y = 0
    s = 1; a = 0; b = 0;
    #10;

    // Case 6: s = 1, a = 0, b = 1 -> y = 1
    s = 1; a = 0; b = 1;
    #10;

    // Case 7: s = 1, a = 1, b = 0 -> y = 0
    s = 1; a = 1; b = 0;
    #10;

    // Case 8: s = 1, a = 1, b = 1 -> y = 1
    s = 1; a = 1; b = 1;
    #10;
    
    // End simulation
    $finish;
  end
  
endmodule
