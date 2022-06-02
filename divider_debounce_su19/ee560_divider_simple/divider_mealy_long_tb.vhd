------------------------------------------------------------------------------
--	A vhdl testbench to test the divider_mealy
--	
--	Written by Gandhi Puvvada  Date: 6/14/99, 12/1/99, 2/20/04, 6/1/2008, 6/12/2009

--	File name: divider_mealy_long_tb.vhd
------------------------------------------------------------------------------
-- Compile in modelsim and simulate for 1 us followed by additional 31 us.
------------------------------------------------------------------------------
-- Libraries and use clauses

library std, ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;
------------------------------------------------------------------------------
entity divider_long_tb is
end divider_long_tb;

------------------------------------------------------------------------------

architecture divider_RTL_long_tb of divider_long_tb is
	
	-- clock period
	
		constant clk_period: time := 20 ns;
		---------------
	-- local signals
	-- names may be chosen as <design_signal_name>_tb
		---------------
		signal xin_tb, yin_tb: std_logic_vector(3 downto 0);
		signal start_tb, ack_tb: std_logic;
		signal clk_tb, resetb_tb: std_logic;
		signal q_tb, r_tb: std_logic_vector(3 downto 0);
		signal done_tb, Qi_tb, Qc_tb, Qd_tb: std_logic;
	
		signal clock_count: integer range 0 to 9999;
		---------------
	-- component declarations
		---------------
	component divider 
	
	port	(
		xin, yin: IN std_logic_vector(3 downto 0);
		start, ack: IN  std_logic;
		clk, resetb: IN  std_logic;
		done: OUT std_logic;
		q, r: OUT std_logic_vector(3 downto 0);
		Qi, Qc, Qd: OUT std_logic -- One-hot state bits
		);
	
	end  component ;
		---------------

begin -- start of the body of the architecture

  -- component instantiations 
  -- instantiate the UUT (Unit Under Test), also called DUT (Design Under Test),
  --  and optionally any other components

  UUT: divider
	  port map(
		xin_tb, yin_tb,
		start_tb, ack_tb,
		clk_tb, resetb_tb,
		done_tb,
		q_tb, r_tb,
		Qi_tb, Qc_tb, Qd_tb
		  );
	---------------
  -- concurrent statements

	-- reset generation by a simple concurrent statement
	  resetb_tb <= '0', '1' after (clk_period * 1.1); 
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
		variable error_count : natural;
		
		-- file output : text open write_mode is "std_output"; -- predclared file in std_textio package
		file my_infile  : text open read_mode  is "divider_input_operands.txt";
		file my_outfile : text open write_mode is "divider_output_results.txt";
		variable my_inline, my_outline : line;
		variable interger_dividend, interger_divisor : natural;
		variable integer_q_tb, integer_r_tb :  natural;
		variable outmsg12 : string(1 to 12) := (others => ' ');
		variable outmsg14 : string(1 to 14) := (others => ' ');
		
	--  declaration of functions and procedures
		---------------
	-- divide stimulus application procedure:
		procedure divide_with_these_operands  (dividend: in natural; 
															divisor: in positive) is
			variable quotient, remainder : natural;
			
		begin 
			  wait until (clk_tb'event and clk_tb = '1'); -- wait for the edge
			  -- The above line helps to see that we do not accumulate delays such as (clk_period * 0.1)
			  -- when this procedure is called repetitively.
			  wait for (clk_period * 0.1); -- wait a little
			  xin_tb <= CONV_STD_LOGIC_VECTOR(dividend, 4);
			  yin_tb <= CONV_STD_LOGIC_VECTOR(divisor, 4);
		
			  start_tb <=  '1' after (clk_period * 1.1), 
						 '0' after (clk_period * 2.1);
			  wait until (done_tb'event and done_tb = '1');
			  -- let us independently compute the quotient and remainder
			  quotient := dividend/divisor; remainder := dividend rem divisor;
			  integer_q_tb := CONV_INTEGER (UNSIGNED(q_tb));
			  integer_r_tb := CONV_INTEGER (UNSIGNED(r_tb));
			  -- We can avoid the conversion function CONV_STD_LOGIC_VECTOR
			  -- below as we have integer versions of q_tb and r_tb above.
			  -- I just wanted to show that we can convert either way.
			  assert (q_tb = CONV_STD_LOGIC_VECTOR(quotient, 4)) 
				 report "Quotient error!"
				 severity note;
			  assert (integer_r_tb = remainder)
				 report "Remainder error!"
				 severity note;
			  if ( (integer_q_tb /= quotient) or 
			       (r_tb /= CONV_STD_LOGIC_VECTOR(remainder, 4)) ) then
					error_count := error_count  + 1;
			  end if;
			  wait until (clk_tb'event and clk_tb = '1'); -- wait for the edge
			  wait for (clk_period * 0.1); -- wait a little
			  ack_tb <= '1', '0' after (clk_period * 1.1);
			  
		end procedure divide_with_these_operands;
		---------------

	begin
	  
	  -- Stimulus set #1 beginning ---------------
	  xin_tb <= CONV_STD_LOGIC_VECTOR(13, 4);
	  yin_tb <= CONV_STD_LOGIC_VECTOR(3, 4);
     -- see in
     -- file: /usr/usc/synopsys/default/packages/IEEE/src/std_logic_arith.vhd
     --    function CONV_STD_LOGIC_VECTOR(ARG: INTEGER; SIZE: INTEGER)
	  wait until (clk_tb'event and clk_tb = '1'); -- wait for the edge
	  start_tb <=  '0', '1' after (clk_period * 2.1), 
			    '0' after (clk_period * 3.1);
	  ack_tb <= '0';

	  wait until (done_tb'event and done_tb = '1');
	  wait for (clk_period * 1.1); 
	  ack_tb <= '1', '0' after (clk_period * 1.1);
	  -- Stimulus set #1 ending ------------------
	  
	  -- Stimulus set #2 beginning ---------------
	  xin_tb <= CONV_STD_LOGIC_VECTOR(11, 4);
	  yin_tb <= CONV_STD_LOGIC_VECTOR(5, 4);
	  wait until (clk_tb'event and clk_tb = '1'); -- wait for the edge
	  start_tb <=  '1' after (clk_period * 1.1), 
			    '0' after (clk_period * 2.1);
	  wait until (done_tb'event and done_tb = '1');
	  wait for (clk_period * 1.1); 
	  ack_tb <= '1', '0' after (clk_period * 1.1);
	  -- Stimulus set #2 ending ------------------
	  
	  -- Stimulus set #3 beginning ---------------
	  xin_tb <= CONV_STD_LOGIC_VECTOR(7, 4);
	  yin_tb <= CONV_STD_LOGIC_VECTOR(9, 4);
	  wait until (clk_tb'event and clk_tb = '1'); -- wait for the edge
	  start_tb <=  '1' after (clk_period * 1.1), 
			    '0' after (clk_period * 2.1);
	  wait until (done_tb'event and done_tb = '1');
	  wait for (clk_period * 1.1); 
	  ack_tb <= '1', '0' after (clk_period * 1.1);
	  -- Stimulus set #3 ending ------------------

	  -- it would be better, if we used a stimulus procedure for the above 7 
	  -- lines, and invoked the procedure as shown below.
	  divide_with_these_operands (12, 7);
	  -- divide_with_these_operands (0, 3);
	  -- divide_with_these_operands (15, 1);
	  
	  -- To test this divider exhaustively we can invoke the procedure in a loop
	  error_count := 0;
	  outer_dividend_loop: for my_dividend in 0 to 15 loop
	  
			inner_divisor_loop: for my_divisor in 1 to 15 loop
			
				divide_with_these_operands (my_dividend, my_divisor);
			
			end loop inner_divisor_loop;
			
	  end loop outer_dividend_loop;
	  
	  if (error_count /= 0) then
	    assert false
	     report ("Exhaustive testing completed, but there were " & integer'image(error_count) & " errors!")
		  severity note;
	  else
	    assert false
	     report ("Exhaustive testing completed! Congratulations! No errors! error count is " & integer'image(error_count))
		  severity note;
	  end if;
	  
	  -- To show text_i/o, we will perform a few more tests. 
	  -- We will read the input operands from a file named "divider_input_operands.txt" 
	  -- and write results to a file named "divider_output_results.txt".
	  -- We can also display the results to the simulation window (std_output with logical name output) 
	  my_textio_loop: while not endfile (my_infile) loop
	  
		  readline (my_infile, my_inline);
		  read (my_inline, interger_dividend);
		  read (my_inline, interger_divisor);
		  
		  divide_with_these_operands (interger_dividend, interger_divisor);
		  
		  outmsg12 := " Dividend = ";
			        -- 123456789012
		  write (my_outline, outmsg12);
		  write (my_outline, interger_dividend, right, 2); -- right justified, 2 character wide
		  -- outmsg12 := "; Divisor = ";
					   -- 123456789012
		  -- write (my_outline, outmsg12);
		  -- another way of writing the above two commented-out lines using a single line is shown below. 
		  -- This method makes it easy as we need not count the exact number of characters.
		  write (my_outline, string'("; Divisor = "));
		  write (my_outline, interger_divisor, right, 2); -- right justified, 2 character wide
		  outmsg14 := ";  Quotient = ";
					-- 12345678901234
		  write (my_outline, outmsg14);
		  write (my_outline, integer_q_tb, right, 2); -- right justified, 2 character wide
		  outmsg14 := "; Remainder = ";
					-- 12345678901234
		  write (my_outline, outmsg14);
		  write (my_outline, integer_r_tb, right, 2); -- right justified, 2 character wide
		  writeline (my_outfile, my_outline); 
			-- In VHDL the line becomes empty after it is used to write into a file.
			-- You need to reconstruct the line again if you want to send it to another file
			-- The above is a formatted text with right-justfied numbers with field width of 2. 
			-- The one below is not formatted (not alligned).
		  outmsg12 := " Dividend = ";
				    -- 123456789012
		  write (my_outline, outmsg12);
		  write (my_outline, interger_dividend);
		  outmsg12 := "; Divisor = ";
				    -- 123456789012
		  write (my_outline, outmsg12);
		  write (my_outline, interger_divisor);
		  outmsg14 := ";  Quotient = ";
				    -- 12345678901234
		  write (my_outline, outmsg14);
		  write (my_outline, integer_q_tb);
		  outmsg14 := "; Remainder = ";
				    -- 12345678901234
		  write (my_outline, outmsg14);
		  write (my_outline, integer_r_tb);
		  writeline (output, my_outline); -- write to std_output (i.e. the simulation window)
	  
	  end loop my_textio_loop;
	  
	  write (my_outline, string'("All testing completed.")); 
	  writeline (output, my_outline); -- write to std_output (i.e. the simulation window)
	  write (my_outline, string'("Suspending testing by waiting indefinitely!"));
	  writeline (output, my_outline); -- write to std_output (i.e. the simulation window)
	  wait; -- suspend testing by waiting indefinitely

	end process stim_divider;

end divider_RTL_long_tb;

------------------------------------------------------------------------------