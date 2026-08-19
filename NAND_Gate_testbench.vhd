library IEEE;
use IEEE.std_logic_1164.all;

entity NAND_Gate_tb is
end NAND_Gate_tb;

architecture Behavior of NAND_Gate_tb is

	-- Signal declarations
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.NAND_Gate
    	Port map (
        	A => A,
            B => B,
            Y => Y
        );

	-- Stimulus process testing states of the NAND Gate truth table
    stim_proc: process
    begin
    	-- Case 1: A = 0, B = 0 -> Output: Y = 1
        A <= '0' ; B <= '0';
        wait for 10 ns;
        
    	-- Case 2: A = 0, B = 1 -> Output: Y = 1
        A <= '0' ; B <= '1';
        wait for 10 ns;

    	-- Case 3: A = 1, B = 0 -> Output: Y = 1
        A <= '1' ; B <= '0';
        wait for 10 ns;
        
    	-- Case 4: A = 1, B = 1 -> Output: Y = 0
        A <= '1' ; B <= '1';
        wait for 10 ns; 
        
        -- Stop simulation
        wait;
    end process;

end Behavior;