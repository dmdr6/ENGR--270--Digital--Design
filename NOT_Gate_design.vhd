library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_Gate is
	Port (
    	A : in std_logic;
        Y : out std_logic
    );
end NOT_Gate;

architecture Behavioral of NOT_Gate is
begin
	Y <= not A;
end Behavioral;