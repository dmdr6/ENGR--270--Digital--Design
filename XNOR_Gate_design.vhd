library IEEE;
use IEEE.std_logic_1164.all;

entity XNOR_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end XNOR_Gate;

architecture Behavioral of XNOR_Gate is
begin
	Y <= A xnor B;
end Behavioral;
