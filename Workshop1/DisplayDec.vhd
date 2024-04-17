----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:31 04/17/2024 
-- Design Name: 
-- Module Name:    DisplayDec - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DisplayDec is
    Port ( seg : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           sw : in  STD_LOGIC_VECTOR (3 downto 0));
end DisplayDec;

architecture Behavioral of DisplayDec is
 signal d : STD_LOGIC_VECTOR (3 downto 0);
 signal q : STD_LOGIC_VECTOR (6 downto 0);
begin

	--Turn on displays
	an <= B"0000";
	
	--Input
	d <= sw;

process(d)
begin
	--Decode BCD input
	case d is
		when "0000" =>
			q <= "1000000"; --0
		when "0001" =>
			q <= "1111001"; --1
		when "0010" =>
			q <= "0100100"; --2
		when "0011" =>
			q <= "0110000"; --3
		when "0100" =>
			q <= "0011001"; --4
		when "0101" =>
			q <= "0010010"; --5
		when "0110" =>
			q <= "0000010"; --6
		when "0111" =>
			q <= "1111000"; --7
		when "1000" =>
			q <= "0000000"; --8
		when "1001" =>
			q <= "0010000"; --9
		when others =>
			q <= "1111111"; --'off'
	end case;
	
end process;

	--Output
	seg <= q;

end Behavioral;

