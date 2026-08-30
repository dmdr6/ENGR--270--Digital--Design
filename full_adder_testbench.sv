// Full Adder Testbench
module full_adder_tb;
  
  // Testbench signals to drive inputs and observe outputs
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic cout;
  
  // Instantiate the Unit Under Test (UUT)
  full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: a = 0, b = 0, cin = 0 -> sum = 0, cout = 0
    a = 0; b = 0; cin = 0;
    #10;

    // Case 2: a = 0, b = 0, cin = 1 -> sum = 1, cout = 0
    a = 0; b = 0; cin = 1;
    #10;
    
    // Case 3: a = 0, b = 1, cin = 0 -> sum = 1, cout = 0
    a = 0; b = 1; cin = 0;
    #10;
        
    // Case 4: a = 0, b = 1, cin = 1 -> sum = 0, cout = 1
    a = 0; b = 1; cin = 1;
    #10;
   
    // Case 5: a = 1, b = 0, cin = 0 -> sum = 1, cout = 0
    a = 1; b = 0; cin = 0;
    #10;
   
    // Case 6: a = 1, b = 0, cin = 1 -> sum = 0, cout = 1
    a = 1; b = 0; cin = 1;
    #10;
    
    // Case 7: a = 1, b = 1, cin = 0 -> sum = 0, cout = 1
    a = 1; b = 1; cin = 0;
    #10;
    
    // Case 8: a = 1, b = 1, cin = 1 -> sum = 1, cout = 1
    a = 1; b = 1; cin = 1;
    #10;
    
    // End simulation
    $finish;
  end
  
endmodule
