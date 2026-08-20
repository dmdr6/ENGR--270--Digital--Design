library IEEE;
use IEEE.std_logic_1164.all;

entity Full_Adder is
	Port (
    	A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
	Sum <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end Behavioral;
