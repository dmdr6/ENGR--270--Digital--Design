library IEEE;
use IEEE.std_logic_1164.all;

entity two_to_one_mux_tb is
end two_to_one_mux_tb;

architecture Behavior of two_to_one_mux_tb is

	-- Signal declarations
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Sel : std_logic := '0';
	signal Y : std_logic;
    
begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.two_to_one_mux
    	Port map (
        	A => A,
            B => B,
            Sel => Sel,
            Y => Y
        );

	-- Stimulus process testing states of the 2-to-1 Multiplexer truth table
    stim_proc: process
    begin
    	-- Case 1: Sel = 0, A = 0, B = 0 -> Output: Y = 0
        Sel <= '0' ; A <= '0' ; B <= '0';
        wait for 10 ns;
        
    	-- Case 2: Sel = 0, A = 0, B = 1 -> Output: Y = 0
        Sel <= '0' ; A <= '0' ; B <= '1';
        wait for 10 ns;

    	-- Case 3: Sel = 0, A = 1, B = 0 -> Output: Y = 1
        Sel <= '0' ; A <= '1' ; B <= '0';
        wait for 10 ns;

    	-- Case 4: Sel = 0, A = 1, B = 1 -> Output: Y = 1
        Sel <= '0' ; A <= '1' ; B <= '1';
        wait for 10 ns;

    	-- Case 5: Sel = 1, A = 0, B = 0 -> Output: Y = 0
        Sel <= '1' ; A <= '0' ; B <= '0';
        wait for 10 ns;

    	-- Case 6: Sel = 1, A = 0, B = 1 -> Output: Y = 1
        Sel <= '1' ; A <= '0' ; B <= '1';
        wait for 10 ns;

    	-- Case 7: Sel = 1, A = 1, B = 0 -> Output: Y = 0
        Sel <= '1' ; A <= '1' ; B <= '0';
        wait for 10 ns;

    	-- Case 8: Sel = 1, A = 1, B = 1 -> Output: Y = 1
        Sel <= '1' ; A <= '1' ; B <= '1';
        wait for 10 ns;
        
        -- Stop simulation
        wait;
    end process;

end Behavior;
