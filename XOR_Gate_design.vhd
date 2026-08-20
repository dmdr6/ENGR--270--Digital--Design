library IEEE;
use IEEE.std_logic_1164.all;

entity XOR_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end XOR_Gate;

architecture Behavioral of XOR_Gate is
begin
	Y <= A xor B;
end Behavioral;
