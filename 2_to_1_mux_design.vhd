library IEEE;
use IEEE.std_logic_1164.all;

entity two_to_one_mux is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Sel : in std_logic;
        Y : out std_logic
    );
end two_to_one_mux;

architecture Behavioral of two_to_one_mux is
begin
	Y <= A when Sel = '0' else B;
end Behavioral;
