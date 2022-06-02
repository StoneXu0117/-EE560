------------------------------------------------------------------------------
--	A vhdl module for a divider with separate CU and DPU.
--	
--	Written by Gandhi Puvvada  Date: 6/14/99, 12/1/99, 2/20/04, 6/2/08, 5/20/2012

--	File name: divider_mealy_separate_CU_DU.vhd
------------------------------------------------------------------------------
-- Libraries and use clauses

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
----------------------
entity divider is

--	Definition of incoming and outgoing signals.

port	(
	xin, yin: IN std_logic_vector(3 downto 0); -- dividend, divisor
	start, ack: IN  std_logic;
	clk, resetb: IN  std_logic;
	done: OUT std_logic;
	q, r: OUT std_logic_vector(3 downto 0); -- quotient, remainder
	Qi, Qc, Qd: OUT std_logic -- One-hot state bits
	);

end  divider ;

------------------------------------------------------------------------------

architecture divider_RTL of divider   is

-- Type declarations

type state_type is (INITIAL_STATE, COMPUTE_STATE, DONE_STATE);
 
-- Local (internal to the model) signals declarations.

signal state: state_type;
signal x, y: std_logic_vector(3 downto 0);
signal q_int: std_logic_vector(3 downto 0);


begin

-- concurrent signal assignment statements

  done <= '1' when (state = DONE_STATE) else '0';
  q <= q_int;
  r <= x;
  Qi <= '1' when (state = INITIAL_STATE) else '0'; 
  Qc <= '1' when (state = COMPUTE_STATE) else '0';
  Qd <= '1' when (state = DONE_STATE) else '0';
  -- Note that the following line causes type mismatch because the RHS is of boolean type
  -- Qd <= (state = DONE_STATE);
  

-- processes

	CU: process (clk, resetb)

	begin

	  if (resetb = '0') then

	    state <= INITIAL_STATE;
	    
	  elsif (clk'event and clk = '1') then

	    case (state) is

	      when INITIAL_STATE =>

		if (start = '1') then
		  state <= COMPUTE_STATE;
		end if;

	      when COMPUTE_STATE =>

		if (x >= y) then
		  state <= COMPUTE_STATE;
		else
		  state <= DONE_STATE;
		end if; 

	      when DONE_STATE =>

		if (ack = '1') then
		  state <= INITIAL_STATE;
		end if; 

	    end case;

	  end if;

	end process CU;

	----------------------------

	DPU: process (clk)

	begin

	  if (clk'event and clk = '1') then

	    case (state) is

	      when INITIAL_STATE =>

		x <= xin;
		y <= yin;
		q_int <= "0000";

	      when COMPUTE_STATE =>

		if (x >= y) then
		  x <= x - y;
		  q_int <= q_int + '1'; -- overloaded definition of +
-- function "+"(L: STD_LOGIC_VECTOR; R: STD_LOGIC) return STD_LOGIC_VECTOR;
-- read the package std_logic_unsigned.vhd
-- file: /usr/usc/synopsys/default/packages/IEEE/src/std_logic_unsigned.vhd
		end if; 

	      when DONE_STATE =>
		null;

	    end case;

	  end if;

	end process DPU;


end divider_RTL ;

------------------------------------------------------------------------------