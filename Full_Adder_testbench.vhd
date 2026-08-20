library IEEE;
use IEEE.std_logic_1164.all;

entity Full_Adder_tb is
end Full_Adder_tb;

architecture Behavior of Full_Adder_tb is

	-- Signal declarations
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Cin : std_logic := '0';
    signal Sum : std_logic;
    signal Cout : std_logic;

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.Full_Adder
    	Port map (
        	A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

	-- Stimulus process testing states of the Full Adder truth table
    stim_proc: process
    begin
    	-- Case 1: A = 0, B = 0, Cin = 0 -> Output: Sum = 0, Cout = 0
        A <= '0' ; B <= '0' ; Cin <= '0';
        wait for 10 ns;
        
    	-- Case 2: A = 0, B = 0, Cin = 1 -> Output: Sum = 1, Cout = 0
        A <= '0' ; B <= '0' ; Cin <= '1';
        wait for 10 ns;        
        
    	-- Case 3: A = 0, B = 1, Cin = 0 -> Output: Sum = 1, Cout = 0
        A <= '0' ; B <= '1' ; Cin <= '0';
        wait for 10 ns;        

    	-- Case 4: A = 0, B = 1, Cin = 1 -> Output: Sum = 0, Cout = 1
        A <= '0' ; B <= '1' ; Cin <= '1';
        wait for 10 ns;    
        
    	-- Case 5: A = 1, B = 0, Cin = 0 -> Output: Sum = 1, Cout = 0
        A <= '1' ; B <= '0' ; Cin <= '0';
        wait for 10 ns;   
        
    	-- Case 6: A = 1, B = 0, Cin = 1 -> Output: Sum = 0, Cout = 1
        A <= '1' ; B <= '0' ; Cin <= '1';
        wait for 10 ns;            

    	-- Case 7: A = 1, B = 1, Cin = 0 -> Output: Sum = 0, Cout = 1
        A <= '1' ; B <= '1' ; Cin <= '0';
        wait for 10 ns;    
        
    	-- Case 8: A = 1, B = 1, Cin = 1 -> Output: Sum = 1, Cout = 1
        A <= '1' ; B <= '1' ; Cin <= '1';
        wait for 10 ns;            
        
        -- Stop simulation
        wait;
    end process;

end Behavior;
