module decoder_2_to_4_tb;
  
  // Testbench signals to drive inputs and observe outputs
  logic en;
  logic [1:0] a;
  logic [3:0] y;
  
  // Instantiate the Unit Under Test (UUT)
  decoder_2_to_4 uut (
    .en(en),
    .a(a),
    .y(y)
  );
  
  // Stimulus process
  initial begin
    
    // Case 1: Disabled (en = 0) -> y = 0000
    en = 0; a = 2'b00;
    #10;
    
    // Case 2: Enabled, select line 0 (a = 00) -> y = 0001
    en = 1; a = 2'b00;
    #10;
    
    // Case 3: Enabled, select line 1 (a = 01) -> y = 0010
    en = 1; a = 2'b01;
    #10;
    
    // Case 4: Enabled, select line 2 (a = 10) -> y = 0100
    en = 1; a = 2'b10;
    #10;
    
    // Case 5: Enabled, select line 3 (a = 11) -> y = 1000
    en = 1; a = 2'b11;
    #10;
    
    // Stop simulation
    $finish;
  end
  
endmodule
