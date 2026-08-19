library IEEE;
use IEEE.std_logic_1164.all;

entity AND_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end AND_Gate;

architecture Behavioral of AND_Gate is
begin
	Y <= A and B;
end Behavioral;