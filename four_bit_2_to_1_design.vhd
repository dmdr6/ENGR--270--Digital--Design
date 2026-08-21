library IEEE;
use IEEE.std_logic_1164.all;

entity four_bit_2_to_1_mux is
	Port (
        Sel : in std_logic;
    	A : in std_logic_vector(3 downto 0);
    	B : in std_logic_vector(3 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end four_bit_2_to_1_mux;

architecture Behavioral of four_bit_2_to_1_mux is
begin
	Y <= A when Sel = '0' else B;
end Behavioral;
