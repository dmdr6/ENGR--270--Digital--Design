library IEEE;
use IEEE.std_logic_1164.all;

entity two_to_four_decoder_tb is
end two_to_four_decoder_tb;

architecture Behavior of two_to_four_decoder_tb is

	-- Signal declarations
    signal A : std_logic_vector(1 downto 0) := "00";
    signal Y : std_logic_vector(3 downto 0);

begin

	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.two_to_four_decoder
    	Port map (
        	A => A,
            Y => Y
        );

	-- Stimulus process testing states of the 2-to-4 Decoder truth table
    stim_proc: process
    begin
    	-- Case 1: A = 00 -> Output: Y = 0001
        A <= "00";
        wait for 10 ns;

    	-- Case 2: A = 01 -> Output: Y = 0010
        A <= "01";
        wait for 10 ns;

    	-- Case 3: A = 10 -> Output: Y = 0100
        A <= "10";
        wait for 10 ns;
        
    	-- Case 4: A = 11 -> Output: Y = 1000
        A <= "11";
        wait for 10 ns;
        
        -- Stop simulation
        wait;
    end process;

end Behavior;
