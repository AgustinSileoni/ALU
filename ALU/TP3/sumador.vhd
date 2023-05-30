----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:16 05/25/2023 
-- Design Name: 
-- Module Name:    sumador - Behavioral 
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

entity sumador is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  res: in STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end sumador;

architecture Behavioral of sumador is
signal AUX : STD_LOGIC_VECTOR (3 downto 0);
signal CarryAux : STD_LOGIC_VECTOR (3 downto 0);
signal Baux : STD_LOGIC_VECTOR(3 downto 0);

begin
	
	Baux(0)<= B(0) xor res;
	Baux(1)<= B(1) xor res;
	Baux(2)<= B(2) xor res;
	Baux(3)<= B(3) xor res;
	
	
	
	AUX(0) <= A(0) xor Baux(0);
	O(0) <= AUX(0) xor res;
	CarryAux(0) <= (res and (A(0) or Baux(0))) or (A(0) and Baux(0)) ;
	AUX(1) <= A(1) xor Baux(1);
	O(1) <=  AUX(1) xor CarryAux(0);
	CarryAux(1) <= ((CarryAux(0) and (A(1) or Baux(1))) or (A(1) and Baux(1))) ;
	AUX(2) <= A(2) xor Baux(2);
	O(2) <= AUX(2) xor CarryAux(1);
	CarryAux(2) <= (CarryAux(1) and (A(2) or Baux(2))) or (A(2) and Baux(2)) ;
	AUX(3) <= A(3) xor Baux(3);
	O(3) <= AUX(3) xor CarryAux(2);
	CarryAux(3) <= (CarryAux(2) and (A(3) or Baux(3))) or (A(3) and Baux(3)) ;
	Cout <= CarryAux(3);
	Ovf <= CarryAux(3) xor CarryAux(2) ;

		

end Behavioral;
