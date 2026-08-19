library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_Gate_tb is
end NOT_Gate_tb;

architecture Behavior of NOT_Gate_tb is

	-- Signal declarations
    A : std_logic := '0';
    Y : std_logic;

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.NOT_Gate
    	Port map (
        	A => A,
            Y => Y
        );

	-- Stimulus process testing states of the NOT Gate truth table
    stim_proc: process
    begin
    	-- Case 1: A = 0 -> Output: Y = 1
        A <= '0';
        wait for 10 ns;
        
        -- Case 2: A = 1 -> Output: Y = 0
        A <= '1';
        wait for 10 ns;
        
        -- Stop simulation
        wait;
    end process;

end Behavior;