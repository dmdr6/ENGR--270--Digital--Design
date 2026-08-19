library IEEE;
use IEEE.std_logic_1164.all;

entity OR_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end OR_Gate;

architecture Behavioral of OR_Gate is
begin
	Y <= A or B;
end Behavioral;
