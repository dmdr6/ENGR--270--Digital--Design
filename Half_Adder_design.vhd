library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Sum : out std_logic;
        Carry : out std_logic
    );
end Half_Adder;

architecture Behavioral of Half_Adder is
begin
	Sum <= A xor B;
    Carry <= A and B;
end Behavioral;
