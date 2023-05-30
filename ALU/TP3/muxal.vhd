----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:49 05/28/2023 
-- Design Name: 
-- Module Name:    muxal - Behavioral 
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

entity muxal is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end muxal;

architecture Behavioral of muxal is
--Si la entrada S=0 selecciona las entradas A, si S=1 selecionna B
begin
	process(A,B,S)
    begin
        if S = '0' then
            O(3)<= A(3); 
				O(2)<= A(2);
				O(1)<= A(1);
				O(0)<= A(0);
        else
            O(3) <= B(3); 
				O(2) <= B(2);
				O(1) <= B(1);
				O(0) <= B(0);
        end if;
   end process;

end Behavioral;

