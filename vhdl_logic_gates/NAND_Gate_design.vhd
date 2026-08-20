library IEEE;
use IEEE.std_logic_1164.all;

entity NAND_Gate is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end NAND_Gate;

architecture Behavioral of NAND_Gate is
begin
	Y <= A nand B;
end Behavioral;
