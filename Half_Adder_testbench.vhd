library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder_tb is
end Half_Adder_tb;

architecture Behavior of Half_Adder_tb is

	-- Signal declarations
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Sum : std_logic;
    signal Carry : std_logic;

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.Half_Adder
    	Port map (
        	A => A,
            B => B,
            Sum => Sum,
            Carry => Carry
        );

	-- Stimulus process testing states of the Half Adder truth table
    stim_proc: process
    begin
    	-- Case 1: A = 0, B = 0 -> Output: Sum = 0, Carry = 0
        A <= '0' ; B <= '0';
        wait for 10 ns;
        
    	-- Case 2: A = 0, B = 1 -> Output: Sum = 1, Carry = 0
        A <= '0' ; B <= '1';
        wait for 10 ns;

    	-- Case 3: A = 1, B = 0 -> Output: Sum = 1, Carry = 0
        A <= '1' ; B <= '0';
        wait for 10 ns;

    	-- Case 4: A = 1, B = 1 -> Output: Sum = 0, Carry = 1
        A <= '1' ; B <= '1';
        wait for 10 ns;
        
        -- Stop simulation
        wait;
    end process;

end Behavior;
