--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU.vhf
-- /___/   /\     Timestamp : 05/29/2023 20:28:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl /home/agustin/Materias/EDI/Trabajos_Practicos/TP3/ProyectosXilink/TP3/ALU.vhf -w /home/agustin/Materias/EDI/Trabajos_Practicos/TP3/ProyectosXilink/TP3/ALU.sch
--Design Name: ALU
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

entity M2_1_MXILINX_ALU is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_ALU;

architecture BEHAVIORAL of M2_1_MXILINX_ALU is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity saturador_MUSER_ALU is
   port ( A   : in    std_logic_vector (3 downto 0); 
          Ovf : in    std_logic; 
          Sat : in    std_logic; 
          O   : out   std_logic_vector (3 downto 0));
end saturador_MUSER_ALU;

architecture BEHAVIORAL of saturador_MUSER_ALU is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal S       : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_73 : std_logic;
   signal XLXN_79 : std_logic;
   component M2_1_MXILINX_ALU
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_0";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_1";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_2";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_3";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_4";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_5";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_6";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_7";
begin
   XLXI_16 : M2_1_MXILINX_ALU
      port map (D0=>A(3),
                D1=>XLXN_45,
                S0=>S,
                O=>O(3));
   
   XLXI_17 : M2_1_MXILINX_ALU
      port map (D0=>A(2),
                D1=>XLXN_46,
                S0=>S,
                O=>O(2));
   
   XLXI_18 : M2_1_MXILINX_ALU
      port map (D0=>A(1),
                D1=>XLXN_47,
                S0=>S,
                O=>O(1));
   
   XLXI_19 : M2_1_MXILINX_ALU
      port map (D0=>A(0),
                D1=>XLXN_48,
                S0=>S,
                O=>O(0));
   
   XLXI_20 : M2_1_MXILINX_ALU
      port map (D0=>XLXN_73,
                D1=>XLXN_79,
                S0=>A(3),
                O=>XLXN_45);
   
   XLXI_21 : M2_1_MXILINX_ALU
      port map (D0=>XLXN_79,
                D1=>XLXN_73,
                S0=>A(3),
                O=>XLXN_46);
   
   XLXI_22 : M2_1_MXILINX_ALU
      port map (D0=>XLXN_79,
                D1=>XLXN_73,
                S0=>A(3),
                O=>XLXN_47);
   
   XLXI_23 : M2_1_MXILINX_ALU
      port map (D0=>XLXN_79,
                D1=>XLXN_73,
                S0=>A(3),
                O=>XLXN_48);
   
   XLXI_26 : AND2
      port map (I0=>Ovf,
                I1=>Sat,
                O=>S);
   
   XLXI_28 : VCC
      port map (P=>XLXN_73);
   
   XLXI_29 : GND
      port map (G=>XLXN_79);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity andbitabit_MUSER_ALU is
   port ( A : in    std_logic_vector (3 downto 0); 
          B : in    std_logic_vector (3 downto 0); 
          O : out   std_logic_vector (3 downto 0));
end andbitabit_MUSER_ALU;

architecture BEHAVIORAL of andbitabit_MUSER_ALU is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU is
   port ( A        : in    std_logic_vector (3 downto 0); 
          B        : in    std_logic_vector (3 downto 0); 
          C1       : in    std_logic; 
          C2       : in    std_logic; 
          C3       : in    std_logic; 
          C4       : in    std_logic; 
          CarryOut : out   std_logic; 
          Ovf      : out   std_logic; 
          R        : out   std_logic_vector (3 downto 0));
end ALU;

architecture BEHAVIORAL of ALU is
   signal XLXN_7    : std_logic_vector (3 downto 0);
   signal XLXN_8    : std_logic_vector (3 downto 0);
   signal XLXN_9    : std_logic_vector (3 downto 0);
   signal XLXN_10   : std_logic_vector (3 downto 0);
   signal XLXN_11   : std_logic_vector (3 downto 0);
   signal Ovf_DUMMY : std_logic;
   component orbitabit
      port ( A : in    std_logic_vector (3 downto 0); 
             B : in    std_logic_vector (3 downto 0); 
             O : out   std_logic_vector (3 downto 0));
   end component;
   
   component andbitabit_MUSER_ALU
      port ( A : in    std_logic_vector (3 downto 0); 
             B : in    std_logic_vector (3 downto 0); 
             O : out   std_logic_vector (3 downto 0));
   end component;
   
   component sumador
      port ( res  : in    std_logic; 
             A    : in    std_logic_vector (3 downto 0); 
             B    : in    std_logic_vector (3 downto 0); 
             Cout : out   std_logic; 
             Ovf  : out   std_logic; 
             O    : out   std_logic_vector (3 downto 0));
   end component;
   
   component saturador_MUSER_ALU
      port ( A   : in    std_logic_vector (3 downto 0); 
             O   : out   std_logic_vector (3 downto 0); 
             Ovf : in    std_logic; 
             Sat : in    std_logic);
   end component;
   
   component muxal
      port ( S : in    std_logic; 
             A : in    std_logic_vector (3 downto 0); 
             B : in    std_logic_vector (3 downto 0); 
             O : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   Ovf <= Ovf_DUMMY;
   XLXI_1 : orbitabit
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                O(3 downto 0)=>XLXN_9(3 downto 0));
   
   XLXI_2 : andbitabit_MUSER_ALU
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                O(3 downto 0)=>XLXN_8(3 downto 0));
   
   XLXI_3 : sumador
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                res=>C2,
                Cout=>CarryOut,
                O(3 downto 0)=>XLXN_7(3 downto 0),
                Ovf=>Ovf_DUMMY);
   
   XLXI_4 : saturador_MUSER_ALU
      port map (A(3 downto 0)=>XLXN_7(3 downto 0),
                Ovf=>Ovf_DUMMY,
                Sat=>C3,
                O(3 downto 0)=>XLXN_11(3 downto 0));
   
   XLXI_5 : muxal
      port map (A(3 downto 0)=>XLXN_9(3 downto 0),
                B(3 downto 0)=>XLXN_8(3 downto 0),
                S=>C1,
                O(3 downto 0)=>XLXN_10(3 downto 0));
   
   XLXI_6 : muxal
      port map (A(3 downto 0)=>XLXN_10(3 downto 0),
                B(3 downto 0)=>XLXN_11(3 downto 0),
                S=>C4,
                O(3 downto 0)=>R(3 downto 0));
   
end BEHAVIORAL;


