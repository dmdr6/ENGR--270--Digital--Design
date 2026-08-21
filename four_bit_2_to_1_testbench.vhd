library IEEE;
use IEEE.std_logic_1164.all;

entity four_bit_2_to_1_mux_tb is
end four_bit_2_to_1_mux_tb;

architecture Behavior of four_bit_2_to_1_mux_tb is

	-- Signal declarations
    signal Sel : std_logic;
    signal A : std_logic_vector(3 downto 0) := "0000";
    signal B : std_logic_vector(3 downto 0) := "0000";
    signal Y : std_logic_vector(3 downto 0);

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.four_bit_2_to_1_mux
    	Port map (
        	Sel => Sel,
        	A => A,
            B => B,
            Y => Y
        );

	-- Stimulus process testing states of the 4-bit 2-to-1 MUX truth table
    stim_proc: process
    begin
    	-- Case 1: Sel = 0, A = 0000, B = 0000 -> Output: Y = 0000
        Sel <= '0' ; A <= "0000" ; B <= "0000";
        wait for 10 ns;
        
    	-- Case 2: Sel = 0, A = 0000, B = 1010 -> Output: Y = 0000
        Sel <= '0' ; A <= "0000" ; B <= "1010";
        wait for 10 ns;

    	-- Case 3: Sel = 0, A = 1010, B = 0000 -> Output: Y = 1010
        Sel <= '0' ; A <= "1010" ; B <= "0000";
        wait for 10 ns;
        
    	-- Case 4: Sel = 0, A = 1010, B = 1010 -> Output: Y = 1010
        Sel <= '0' ; A <= "1010" ; B <= "1010";
        wait for 10 ns;
                
    	-- Case 5: Sel = 1, A = 0000, B = 0000 -> Output: Y = 0000
        Sel <= '1' ; A <= "0000" ; B <= "0000";
        wait for 10 ns;

    	-- Case 6: Sel = 1, A = 0000, B = 1010 -> Output: Y = 1010
        Sel <= '1' ; A <= "0000" ; B <= "1010";
        wait for 10 ns;
        
    	-- Case 7: Sel = 1, A = 1010, B = 0000 -> Output: Y = 0000
        Sel <= '1' ; A <= "1010" ; B <= "0000";
        wait for 10 ns;     
        
    	-- Case 8: Sel = 1, A = 1010, B = 1010 -> Output: Y = 1010
        Sel <= '1' ; A <= "1010" ; B <= "1010";
        wait for 10 ns;          
        
        -- Stop simulation
        wait;
    end process;

end Behavior;