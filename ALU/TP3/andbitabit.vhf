--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : andbitabit.vhf
-- /___/   /\     Timestamp : 05/29/2023 20:28:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl /home/agustin/Materias/EDI/Trabajos_Practicos/TP3/ProyectosXilink/TP3/andbitabit.vhf -w /home/agustin/Materias/EDI/Trabajos_Practicos/TP3/ProyectosXilink/TP3/andbitabit.sch
--Design Name: andbitabit
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity andbitabit is
   port ( A : in    std_logic_vector (3 downto 0); 
          B : in    std_logic_vector (3 downto 0); 
          O : out   std_logic_vector (3 downto 0));
end andbitabit;

architecture BEHAVIORAL of andbitabit is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_2 : AND2
      port map (I0=>B(3),
                I1=>A(3),
                O=>O(3));
   
   XLXI_3 : AND2
      port map (I0=>B(2),
                I1=>A(2),
                O=>O(2));
   
   XLXI_4 : AND2
      port map (I0=>B(1),
                I1=>A(1),
                O=>O(1));
   
   XLXI_5 : AND2
      port map (I0=>B(0),
                I1=>A(0),
                O=>O(0));
   
end BEHAVIORAL;


