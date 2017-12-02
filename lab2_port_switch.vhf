--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab2_port_switch.vhf
-- /___/   /\     Timestamp : 08/08/2017 18:15:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab2_port_switch.vhf -w /home/btech/cs1160345/Lab2/lab2_port_switch.sch
--Design Name: lab2_port_switch
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity demux is
   port ( E  : in    std_logic; 
          s0 : in    std_logic; 
          s1 : in    std_logic; 
          x  : in    std_logic; 
          y0 : out   std_logic; 
          y1 : out   std_logic; 
          y2 : out   std_logic; 
          y3 : out   std_logic);
end demux;

architecture BEHAVIORAL of demux is
   attribute BOX_TYPE   : string ;
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND4B2
      port map (I0=>s0,
                I1=>s1,
                I2=>x,
                I3=>E,
                O=>y0);
   
   XLXI_2 : AND4B1
      port map (I0=>s0,
                I1=>s1,
                I2=>x,
                I3=>E,
                O=>y1);
   
   XLXI_3 : AND4B1
      port map (I0=>s1,
                I1=>s0,
                I2=>x,
                I3=>E,
                O=>y2);
   
   XLXI_4 : AND4
      port map (I0=>s0,
                I1=>s1,
                I2=>x,
                I3=>E,
                O=>y3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux is
   port ( s0 : in    std_logic; 
          s1 : in    std_logic; 
          x0 : in    std_logic; 
          x1 : in    std_logic; 
          x2 : in    std_logic; 
          x3 : in    std_logic; 
          y  : out   std_logic);
end mux;

architecture BEHAVIORAL of mux is
   attribute BOX_TYPE   : string ;
   signal XLXN_1               : std_logic;
   signal XLXN_2               : std_logic;
   signal XLXN_6               : std_logic;
   signal XLXN_7               : std_logic;
   signal XLXI_9_I0_openSignal : std_logic;
   signal XLXI_9_I1_openSignal : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_4 : OR4
      port map (I0=>XLXN_7,
                I1=>XLXN_6,
                I2=>XLXN_2,
                I3=>XLXN_1,
                O=>y);
   
   XLXI_5 : AND3B2
      port map (I0=>s0,
                I1=>s1,
                I2=>x0,
                O=>XLXN_1);
   
   XLXI_6 : AND3B1
      port map (I0=>s0,
                I1=>s1,
                I2=>x1,
                O=>XLXN_2);
   
   XLXI_7 : AND3B1
      port map (I0=>s1,
                I1=>s0,
                I2=>x2,
                O=>XLXN_6);
   
   XLXI_8 : AND3
      port map (I0=>s1,
                I1=>s0,
                I2=>x3,
                O=>XLXN_7);
   
   XLXI_9 : AND2
      port map (I0=>XLXI_9_I0_openSignal,
                I1=>XLXI_9_I1_openSignal,
                O=>open);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity priorityencoder is
   port ( x0 : in    std_logic; 
          x1 : in    std_logic; 
          x2 : in    std_logic; 
          x3 : in    std_logic; 
          E  : out   std_logic; 
          S0 : out   std_logic; 
          S1 : out   std_logic);
end priorityencoder;

architecture BEHAVIORAL of priorityencoder is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_2 : OR4
      port map (I0=>x0,
                I1=>x3,
                I2=>x2,
                I3=>x1,
                O=>E);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_1,
                I1=>x3,
                O=>S0);
   
   XLXI_5 : AND3B2
      port map (I0=>x3,
                I1=>x2,
                I2=>x1,
                O=>XLXN_1);
   
   XLXI_7 : AND2B1
      port map (I0=>x3,
                I1=>x2,
                O=>XLXN_2);
   
   XLXI_8 : OR2
      port map (I0=>x3,
                I1=>XLXN_2,
                O=>S1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity priorityencoder_MUSER_lab2_port_switch is
   port ( x0 : in    std_logic; 
          x1 : in    std_logic; 
          x2 : in    std_logic; 
          x3 : in    std_logic; 
          E  : out   std_logic; 
          S0 : out   std_logic; 
          S1 : out   std_logic);
end priorityencoder_MUSER_lab2_port_switch;

architecture BEHAVIORAL of priorityencoder_MUSER_lab2_port_switch is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
begin
   XLXI_2 : OR4
      port map (I0=>x0,
                I1=>x3,
                I2=>x2,
                I3=>x1,
                O=>E);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_1,
                I1=>x3,
                O=>S0);
   
   XLXI_5 : AND3B2
      port map (I0=>x3,
                I1=>x2,
                I2=>x1,
                O=>XLXN_1);
   
   XLXI_7 : AND2B1
      port map (I0=>x3,
                I1=>x2,
                O=>XLXN_2);
   
   XLXI_8 : OR2
      port map (I0=>x3,
                I1=>XLXN_2,
                O=>S1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab2_port_switch is
   port ( dest0 : in    std_logic_vector (1 downto 0); 
          dest1 : in    std_logic_vector (1 downto 0); 
          dest2 : in    std_logic_vector (1 downto 0); 
          din0  : in    std_logic; 
          din1  : in    std_logic; 
          din2  : in    std_logic; 
          req0  : in    std_logic; 
          req1  : in    std_logic; 
          req2  : in    std_logic; 
          ack0  : out   std_logic; 
          ack1  : out   std_logic; 
          ack2  : out   std_logic; 
          dout0 : out   std_logic; 
          dout1 : out   std_logic; 
          dout2 : out   std_logic; 
          src   : out   std_logic_vector (1 downto 0));
end lab2_port_switch;

architecture BEHAVIORAL of lab2_port_switch is
   attribute BOX_TYPE   : string ;
   signal garbagein1  : std_logic;
   signal garbageout1 : std_logic;
   signal XLXN_21     : std_logic;
   signal XLXN_47     : std_logic;
   signal XLXN_56     : std_logic;
   signal XLXN_59     : std_logic;
   signal XLXN_60     : std_logic;
   signal src_DUMMY   : std_logic_vector (1 downto 0);
   component priorityencoder_MUSER_lab2_port_switch
      port ( E  : out   std_logic; 
             S0 : out   std_logic; 
             S1 : out   std_logic; 
             x0 : in    std_logic; 
             x1 : in    std_logic; 
             x2 : in    std_logic; 
             x3 : in    std_logic);
   end component;
   
   component Mux
      port ( s0 : in    std_logic; 
             s1 : in    std_logic; 
             x0 : in    std_logic; 
             x1 : in    std_logic; 
             x2 : in    std_logic; 
             x3 : in    std_logic; 
             y  : out   std_logic);
   end component;
   
   component Demux
      port ( E  : in    std_logic; 
             s0 : in    std_logic; 
             s1 : in    std_logic; 
             x  : in    std_logic; 
             y0 : out   std_logic; 
             y1 : out   std_logic; 
             y2 : out   std_logic; 
             y3 : out   std_logic);
   end component;
   
   component AND3B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B3 : component is "BLACK_BOX";
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
begin
   src(1 downto 0) <= src_DUMMY(1 downto 0);
   XLXI_12 : priorityencoder_MUSER_lab2_port_switch
      port map (x0=>req0,
                x1=>req1,
                x2=>req2,
                x3=>XLXN_21,
                E=>open,
                S0=>src_DUMMY(0),
                S1=>src_DUMMY(1));
   
   XLXI_17 : Mux
      port map (s0=>src_DUMMY(1),
                s1=>src_DUMMY(0),
                x0=>dest0(0),
                x1=>dest1(0),
                x2=>dest2(0),
                x3=>garbagein1,
                y=>XLXN_60);
   
   XLXI_18 : Mux
      port map (s0=>src_DUMMY(1),
                s1=>src_DUMMY(0),
                x0=>dest0(1),
                x1=>dest1(1),
                x2=>dest2(1),
                x3=>garbagein1,
                y=>XLXN_59);
   
   XLXI_20 : Demux
      port map (E=>garbagein1,
                s0=>src_DUMMY(1),
                s1=>src_DUMMY(0),
                x=>garbagein1,
                y0=>ack0,
                y1=>ack1,
                y2=>ack2,
                y3=>XLXN_56);
   
   XLXI_21 : Mux
      port map (s0=>src_DUMMY(1),
                s1=>src_DUMMY(0),
                x0=>din0,
                x1=>din1,
                x2=>din2,
                x3=>garbagein1,
                y=>XLXN_47);
   
   XLXI_23 : Demux
      port map (E=>garbagein1,
                s0=>XLXN_59,
                s1=>XLXN_60,
                x=>XLXN_47,
                y0=>dout0,
                y1=>dout1,
                y2=>dout2,
                y3=>garbageout1);
   
   XLXI_24 : AND3B3
      port map (I0=>req2,
                I1=>req1,
                I2=>req0,
                O=>XLXN_21);
   
   XLXI_26 : OR2B1
      port map (I0=>req0,
                I1=>req0,
                O=>garbagein1);
   
end BEHAVIORAL;



