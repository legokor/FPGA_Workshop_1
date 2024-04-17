----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:37 04/17/2024 
-- Design Name: 
-- Module Name:    Multiplexer - Behavioral 
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

entity Multiplexer is
    Port ( sw : in  STD_LOGIC_VECTOR (1 downto 0);
           btn : in  STD_LOGIC_VECTOR (3 downto 0);
           Led : out  STD_LOGIC_VECTOR (2 downto 0));
end Multiplexer;

architecture Behavioral of Multiplexer is
	signal sel : STD_LOGIC_VECTOR (1 downto 0);
	signal d0 : STD_LOGIC;
	signal d1 : STD_LOGIC;
	signal d2 : STD_LOGIC;
	signal d3 : STD_LOGIC;
	signal q : STD_LOGIC;
begin
	sel <= sw;
	d0  <= btn(0);
	d1  <= btn(1);
	d2  <= btn(2);
	d3  <= btn(3);
	
	with sel select
		q <= d0 when "00",
			  d1 when "01",
			  d2 when "10",
			  d3 when others;
			  
	Led <= q & sw;

end Behavioral;

