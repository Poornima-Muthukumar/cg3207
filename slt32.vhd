----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:57:12 10/02/2013 
-- Design Name: 
-- Module Name:    and32 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity slt32 is
    Port ( operand1 : in  STD_LOGIC_VECTOR (31 downto 0);
           operand2 : in  STD_LOGIC_VECTOR (31 downto 0);
           debug : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end slt32;

architecture arch_and32 of and32 is

signal result: std_logic_vector (31 downto 0):= "00000000000000000000000000000000";

begin
process(clk)


begin
if (clk'event and clk='1') then

result <= operand1 and operand2;

end if;

result1 <= result;
end process;
end arch_and32;