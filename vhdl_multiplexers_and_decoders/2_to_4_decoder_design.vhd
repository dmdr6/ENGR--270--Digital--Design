library IEEE;
use IEEE.std_logic_1164.all;

entity two_to_four_decoder is
	Port (
    	A : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end two_to_four_decoder;

architecture Behavioral of two_to_four_decoder is
begin
	with A select
    	Y <= "0001" when "00",
        	 "0010" when "01",
             "0100" when "10",
             "1000" when "11",
             "0000" when others;
end Behavioral;
