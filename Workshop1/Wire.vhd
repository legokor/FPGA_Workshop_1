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

architecture Gate of Wire is
begin
	Led <= (sw(1) xnor sw(0)) & (sw(1) xor sw(0)) & (sw(1) nand sw(0)) & (sw(1) and sw(0)) & (sw(1) nor sw(0)) & (sw(1) or sw(0)) & (not sw(1)) & (sw(0));
end Gate;

