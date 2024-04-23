----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:28 04/17/2024 
-- Design Name: 
-- Module Name:    Wire - Behavioral 
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


entity Wire is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end Wire;

architecture Behavioral of Wire is
begin
	Led <= sw;
end Behavioral;

