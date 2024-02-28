----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 08:52:11 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 library ieee;
    use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
 entity sevenSegDecoder_tb is 
       
      
       --notice entity is empty.  The testbench has no external connections.
   end sevenSegDecoder_tb;
   
   architecture test_bench of sevenSegDecoder_tb is 
       component sevenSegDecoder is
       port (i_D : in STD_LOGIC_VECTOR (3 downto 0);
                  o_S : out STD_LOGIC_VECTOR (6 downto 0) );
       end component sevenSegDecoder;
     
     -- declare any additional components required
     
     
     signal w_sw : std_logic_vector (3 downto 0):=  "0000";
     signal w_seg :std_logic_vector (6 downto 0);
    -- signal w_Y : std_logic_vector (6 downto 0);
     
   begin
   
       -- PORT MAPS ----------------------------------------
       -- map ports for any component instances (port mapping is like wiring hardware)
       sevenSegDecoder_inst : sevenSegDecoder port map (
               i_D => w_sw,
               o_S => w_seg
           );
       -----------------------------------------------------
   
       -- PROCESSES ----------------------------------------    
       -- Test Plan Process --------------------------------
       -- Implement the test plan here.  Body of process is continuous from time = 0  
       test_process : process 
       begin
       -- Place test cases here. The first two have been written for you
           w_sw <= x"0"; wait for 10 ns;
               assert w_seg = x"40" report "error on nill" severity failure;
           w_sw <= x"1"; wait for 10 ns;
               assert w_seg = x"79" report "error on Jan" severity failure;   
           w_sw <= x"2"; wait for 10 ns;
               assert w_seg = x"24" report "error on Feb" severity failure;
           w_sw <= x"3"; wait for 10 ns;
               assert w_seg = x"30" report "error on mar" severity failure;    
           w_sw <= x"4"; wait for 10 ns;    
               assert w_seg = x"19" report "error on Apr" severity failure;
           w_sw <= x"5"; wait for 10 ns;    
               assert w_seg = x"12" report "error on May" severity failure;
           w_sw <= x"6"; wait for 10 ns;    
               assert w_seg = x"02" report "error on Jun" severity failure;
           w_sw <= x"7"; wait for 10 ns;    
               assert w_seg = x"78" report "error on Jun" severity failure; 
           w_sw <= x"8"; wait for 10 ns;    
               assert w_seg = x"00" report "error on Jun" severity failure;
           --; wait for 10 ns;   
              -- assert w_Y = '1' report "error on Aug" severity failure;
           w_sw <= x"9"; wait for 10 ns;
               assert w_seg = x"18" report "error on Sep" severity failure;
           w_sw <= x"A"; wait for 10 ns;
               assert w_seg = x"08" report "error on Oct" severity failure;
           w_sw <= x"B"; wait for 10 ns;
               assert w_seg = x"03" report "error on Nov" severity failure;
           w_sw <= x"C"; wait for 10 ns;
               assert w_seg = x"27" report "error on Dec" severity failure;
           w_sw <= x"D"; wait for 10 ns;
               assert w_seg = x"21" report "error on Dec" severity failure;
           w_sw <= x"E"; wait for 10 ns;
               assert w_seg = x"06" report "error on Dec" severity failure;
           w_sw <= x"F"; wait for 10 ns;
               assert w_seg = x"0E" report "error on Dec" severity failure;
            --wait for 10 ns;
              -- assert w_Y = '0' report "error on 14?" severity failure;
            --wait for 10 ns;
              -- assert w_Y = '0' report "error on Huh" severity failure;
           
       wait; -- wait forever
       end process;    
       -----------------------------------------------------    
       
   end test_bench;


