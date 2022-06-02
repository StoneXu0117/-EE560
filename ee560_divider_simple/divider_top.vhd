------------------------------------------------------------------------------
-- Copyright (c) 2009 by Gandhi Puvvada, EE-Systems, USC, Los Angeles, CA 90089

-- Written by Gandhi Puvvada  gandhi@usc.edu Date: 2/6/04, 6/2/05, 6/2/08, 6/7/09, 5/20/2012
-- Modified by Rishvanth Prabakar for Nexys-4 Date: 5/22/2017

-- File name: divider_top.vhd  -- written to suit Nexys4

 -- The program does the following:
 
 -- We set the 4-bit dividend (Xin) and the 4-bit divisor (Yin) 
 -- on Sw7-Sw4 and Sw3-Sw0 respectively. 
 -- The BtnL (Btn Left) is our Start button and BtnR (Btn Right) is our Ack button.
 -- The LD3, LD2, LD1, LD0 glow when BtnL, BtnU, BtnR, BtnD  are pressed respectively.
 -- The LD4 glows when the Done signal is activated by the divider.
 -- LD7, LD6, LD5 represent Initial (QI), Compute (QC) and Done (QD) states.
 -- The BtnC (the center button)  the Nexys 3 board acts as the Reset button in this design.
 -- The 4 digits (SSDs) from left to right display, the dividend, the divisor,
 -- the quotient, and the remainder.
 
 -- We did not add debouncing circuitry, nor single stepping circuitry
 -- in this rather simple-minded design. 
 
-- Here we are deliberately using a very slow clock ( DIV_CLK(25) ) so that 
-- we can see the quotient and remainder changing progressively. 
-- In the other design with debouncing and single stepping, we will use the 
-- full-speed clock.

-- Make sure to use the divider_top.ucf file containing pin info.

-- When you compile this file on webpack/ISE, do not forget to specify the JTAG
-- clock as the Startup clock (since we are using the JTAG programming mode) as follows:
-- Generate Programming File => Properties => Startup options => Startup clock => JTAG clock
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library UNISIM;
use UNISIM.VComponents.all; -- Xilinx primitive BUFGP

entity divider_top is

port    (clk_port:  in std_logic;
	    sw7, sw6, sw5, sw4, sw3, sw2, sw1, sw0: in std_logic;
	    btnC: in std_logic; -- RESET button
	    btnL, btnU, btnR, btnD: in std_logic; -- btnU, btnD are not really needed here, but we kept here for uniformity in top designs to the extent possible
                                              -- btnL = start, btnR = ack
	    LD7, LD6, LD5, LD4, LD3, LD2, LD1, LD0: out std_logic; 
	    ca, cb, cc, cd, ce, cf, cg, dp: out std_logic;
	    AN3, AN2, AN1, AN0: out std_logic
		);

end  divider_top ;
------------------------------------------------------------------------------
architecture divider_top_arc of divider_top   is
	------------
	signal display_digit:   std_logic_vector (3 downto 0); -- hex digit to be sent to 7-seg
	signal SSD: std_logic_vector (6 downto 0); -- Seven Segment Display Digit
	
	signal RESET: std_logic; -- pressing btn3 and btn2 together means RESET
	signal BCLK: std_logic; -- buffered clock
	signal divclk: std_logic_vector(25 downto 0); -- divided clocks used internally
	signal clk : std_logic; -- divided clock
	
	signal sev_seg_clk: std_logic_vector (1 downto 0); -- for scan control of the 7-seg. displays
	
	signal xin, yin, q, r:    std_logic_vector(3 downto 0);
	signal start, ack, done, resetb, Qi, Qc, Qd :        std_logic;
	------------	
	--component declarations done here
	------------	
	component divider 
	
	  port (
		xin, yin: IN std_logic_vector(3 downto 0); -- dividend, divisor
		start, ack: IN  std_logic;
		clk, resetb: IN  std_logic;
		done: OUT std_logic;
		q, r: OUT std_logic_vector(3 downto 0);
		Qi, Qc, Qd: OUT std_logic -- One-hot state bits
		);
	
	end component;
	------------	
	--bufgp for clock

   component BUFGP

         port (I: in std_logic; O: out std_logic);

   end component;
   ------------

begin
	------------
	--concurrent assignments
	
	-- Disable the memories so that they do not interfere with the rest of the design.
	 --MemOE <= '1';  MemWR <= '1';  RamCS <= '1';  FlashCS <= '1';  QuadSpiFlashCS <= '1';  
	------------


	BUF_GP_1:   BUFGP   port map (I => CLK_PORT, O => BCLK); 
	
	RESET <= btnC;		 -- You reset by pushing btnC
	
	resetb <= not (RESET); -- low active reset for the core design
	
	------------
	divider_1:divider
	
		port map (
					 xin, yin,
					 start, ack,
					 clk, resetb,
					 done, q, r,
					 Qi, Qc, Qd
					);
	------------        
	xin  <= (sw7, sw6, sw5, sw4); -- Note aggregate notation (the comma inside the (sw7, sw6, sw5, sw4))
	yin  <= (sw3, sw2, sw1, sw0); -- Here it is like a concatenation operator but rules for aggregate and concatenation are different.
	------------
	start <= btnL; ack <= btnR;
	------------
	LD7 <= Qi; LD6 <= Qc; LD5 <= Qd; LD4 <= done;
	LD3 <= start; LD2 <= btnU; LD1 <= ack; LD0 <= btnD; 
	------------
	--Clock Divider derives slower clocks from the 100 MHz clock on Nexys-3 board
	CLOCK_DIVIDER1: process (BCLK, RESET)
						 begin
							 if (RESET = '1') then
								 divclk <= (others => '0');
							 elsif (BCLK'event and BCLK = '1') then
								 divclk <= divclk + '1';
							 end if;
						 end process CLOCK_DIVIDER1;
	------------

	-- pick a divided clock bit to assign to system clock
	-- your decision should not be "too fast" or else you will not see you state machine working
	clk <= divclk(25); --  divclk(25) = (~1.5Hz) = (100MHz / 2**26)
	-- in future designs we will use the full speed clocks	
		-- clk <= BCLK; -- Usually we let students work at a low frequency
	    -- But here we are giving the high-speed 100 MHz clock to user design 
		
	dp <= divclk(25); 
	-- dot points flash when downloading is successful
		

	-- need a scan clk for the seven segment display 
	-- 191Hz (100 MHz / 2^19) works well	
	sev_seg_clk  <= divclk(19 downto 18); -- 7 segment display scanning 
	
	------------
		process (sev_seg_clk)
		 begin
			AN0 <= '1'; AN1 <= '1'; AN2 <= '1'; AN3 <= '1'; 
			-- Note: The above default assignments are needed so that
			-- we can assign an active value selectively one at a time
			case sev_seg_clk  is
					 when "00" => AN0 <= '0'; -- SSD0 right-most
					 when "01" => AN1 <= '0'; -- SSD1
					 when "10" => AN2 <= '0'; -- SSD2
					 when "11" => AN3 <= '0'; -- SSD3 left-most
					 when others => null;
			 end case;
		 end process;
	------------
	with sev_seg_clk  select
			display_digit <=      xin      when "11",    -- SSD3  left-most
								  yin      when "10",    -- SSD2
								  q        when "01",    -- SSD1
								  r        when others;  -- SSD0 right-most
	------------
	with display_digit select
	  SSD <= "1001111" when "0001",  --1
					 "0010010" when "0010",  --2
					 "0000110" when "0011",  --3
					 "1001100" when "0100",  --4
					 "0100100" when "0101",  --5
					 "0100000" when "0110",  --6
					 "0001111" when "0111",  --7
					 "0000000" when "1000",  --8
					 "0000100" when "1001",  --9
					 "0001000" when "1010",  --A
					 "1100000" when "1011",  --b
					 "0110001" when "1100",  --C
					 "1000010" when "1101",  --d
					 "0110000" when "1110",  --E
					 "0111000" when "1111",  --F
					 "0000001" when others;  --0
	
	(ca,cb,cc,cd,ce,cf,cg) <= SSD; -- aggregate notation on the left
	------------
end divider_top_arc ;
------------------------------------------------------------------------------