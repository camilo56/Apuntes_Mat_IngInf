--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : p3ej1b.vhf
-- /___/   /\     Timestamp : 11/11/2016 10:52:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/Users/eps/Desktop/P3/p3ej1b/p3ej1b.vhf -w C:/Users/eps/Desktop/P3/p3ej1b/p3ej1b.sch
--Design Name: p3ej1b
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

entity p3ej1b is
   port ( CLK : in    std_logic; 
          CLR : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end p3ej1b;

architecture BEHAVIORAL of p3ej1b is
   attribute BOX_TYPE   : string ;
   signal XLXN_4   : std_logic;
   signal XLXN_13  : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   XLXI_1 : FDC
      port map (C=>CLK,
                CLR=>XLXN_4,
                D=>XLXN_13,
                Q=>Q0_DUMMY);
   
   XLXI_2 : FDC
      port map (C=>CLK,
                CLR=>XLXN_4,
                D=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   XLXI_3 : FDC
      port map (C=>CLK,
                CLR=>XLXN_4,
                D=>Q1_DUMMY,
                Q=>Q2_DUMMY);
   
   XLXI_4 : FDC
      port map (C=>CLK,
                CLR=>XLXN_4,
                D=>Q2_DUMMY,
                Q=>Q3_DUMMY);
   
   XLXI_5 : OR2
      port map (I0=>Q3_DUMMY,
                I1=>CLR,
                O=>XLXN_4);
   
   XLXI_6 : INV
      port map (I=>Q3_DUMMY,
                O=>XLXN_13);
   
end BEHAVIORAL;


