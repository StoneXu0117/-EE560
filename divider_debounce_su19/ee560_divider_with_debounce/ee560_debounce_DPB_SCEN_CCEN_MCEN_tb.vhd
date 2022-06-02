------------------------------------------------------------------------------
-- File name: ee560_debounce_DPB_SCEN_CCEN_MCEN_tb.vhd 
-- Date: 6/6/2009 
-- (C) Copyright 2009 Gandhi Puvvada 

--  Test bench to test ee560_debounce_DPB_SCEN_CCEN_MCEN.vhd
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ee560_debounce_DPB_SCEN_CCEN_MCEN_tb is
end  ee560_debounce_DPB_SCEN_CCEN_MCEN_tb ;
----------------------------------------------------------------
architecture behv of ee560_debounce_DPB_SCEN_CCEN_MCEN_tb   is

---------------
	-- clock period
	
		constant clk_period: time := 10 ns;
		---------------
	-- local signals
	-- names may be chosen as <design_signal_name>_tb
		---------------
		signal clk_tb, resetb_tb: std_logic;
		signal PB_tb, DPB_tb, SCEN_tb, MCEN_tb, CCEN_tb: std_logic;
		-- signal done_tb: std_logic;
	
		signal clock_count: integer range 0 to 9999;
		---------------
	-- component declarations
		---------------
component ee560_debounce_DPB_SCEN_CCEN_MCEN is
generic  (N_dc: 		positive);
port     (CLK, RESETB	:in  std_logic; -- CLK = 100 MHz
		  PB		:in  std_logic; -- push button
	 	  DPB, SCEN, MCEN, CCEN	:out std_logic -- debounced PB, single_CEN, multi_CEN, continuous CEN 
		 );
end  component ee560_debounce_DPB_SCEN_CCEN_MCEN ;
		---------------
begin -- start of the body of the architecture

  -- component instantiations 

  UUT: ee560_debounce_DPB_SCEN_CCEN_MCEN
		generic map (N_dc => 4)
		port  map   (clk_tb, resetb_tb,  -- CLK = 100 MHz
		  PB_tb, -- push button
	 	  DPB_tb, SCEN_tb, MCEN_tb, CCEN_tb -- debounced PB, single_CEN, multi_CEN, continuous CEN 
		 );
	---------------
  -- concurrent statements

	-- reset generation by a simple concurrent statement
	  resetb_tb <= '0', '1' after (clk_period * 4.1); 
	---------------
   -- processes
   ---------------
	clock_generate: process
	begin
	  clk_tb <= '0', '1' after (clk_period/2);
	  wait for clk_period;
	end process clock_generate;
   ---------------
   clock_counting: process (clk_tb, resetb_tb)
	begin
		if (resetb_tb = '0') then
		   clock_count <= 0;
		elsif clk_tb'event and clk_tb = '1' then
		   clock_count  <=  clock_count  +  1;  
		end if;
	end process clock_counting;
   ---------------	
	stim_divider: process
		---------------	
		begin
		
			PB_tb <= '0';
			wait until (resetb_tb = '1');
			wait for (clk_period * 1);	
			wait for 2 ns; -- a little after the clock edge
			PB_tb <= 	'1'; wait for (clk_period * 16);
			PB_tb <= 	'0'; wait for (clk_period * 3);
			PB_tb <= 	'1'; wait for (clk_period * 3);
			PB_tb <= 	'0'; wait for (clk_period * 4);
			PB_tb <= 	'1'; wait for (clk_period * 4);
			PB_tb <= 	'0'; wait for (clk_period * 1);
			PB_tb <= 	'1'; wait for (clk_period * 175);
			PB_tb <= 	'0'; wait for (clk_period * 6);
			PB_tb <= 	'1'; wait for (clk_period * 40);
			PB_tb <= 	'0'; wait for (clk_period * 1);
			PB_tb <= 	'1'; wait for (clk_period * 60);
			PB_tb <= 	'0'; wait for (clk_period * 6);
			PB_tb <= 	'1'; wait for (clk_period * 55);
			PB_tb <= 	'0'; wait for (clk_period * 50);
			
			
			PB_tb <= 	'1' after (clk_period * 16), 
						'0' after (clk_period * 19), 
						'1' after (clk_period * 22), 
						'0' after (clk_period * 26), 
						'1' after (clk_period * 30), 
						'0' after (clk_period * 31), 
						'1' after (clk_period * 32);
			wait for (clk_period * 75);
			
			PB_tb <= 	'0', 
						'1' after (clk_period * 6); 
			wait for (clk_period * 40);	
			
			PB_tb <= 	'0' , 
						'1' after (clk_period * 46); 
			wait for (clk_period * 60);					
						
			PB_tb <= 	'0' , 
						'1' after (clk_period * 6), 
						'0' after (clk_period * 66), 
						'1' after (clk_period * 69), 
						-- '1' after (clk_period * 75), 			-- Line  #A
						'0' after (clk_period * 75), -- Line  #B
						'1' after (clk_period * 81), 
						'0' after (clk_period * 136);
			--			'0' after (clk_period * 109);
			wait for (clk_period * 130);	
			
			wait; -- indefinitive wait indicating simulation is over
			
		end process stim_divider;
--	You can uncomment Line #A and comment Line #B to reduce the code coverage. 
--	Now, your testbench is not exercising the "WH to CCR" state transition. 
--	Let us pretend that we are not aware of this and seeking the ModelSim simulator tool's
-- 	code coverage checking capability. 
        ----------------------------

end behv ;
