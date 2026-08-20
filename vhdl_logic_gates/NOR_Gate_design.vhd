library IEEE;
use IEEE.std_logic_1164.all;

entity NOR_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end NOR_Gate;

architecture Behavioral of NOR_Gate is
begin
	Y <= A nor B;
end Behavioral;
