------------------------------------------------------------------------------
--	A vhdl module for a divider (combined CU and DPU)

--	Written by Gandhi Puvvada  Date: 6/14/99, 12/4/99, 2/20/04, 6/3/05, 6/2/08, 6/7/09, 5/22/2012

--	File name: divider_mealy_with_single_step.vhd
------------------------------------------------------------------------------
-- Libraries and use clauses

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-----------------------------------
entity divider_with_single_step is

--	Definition of incoming and outgoing signals.

port	(
	xin, yin: IN std_logic_vector(3 downto 0); -- dividend, divisor
	start, ack: IN  std_logic;
	clk, resetb, SCEN: IN  std_logic;  --  <= SCEN = Single clock-wide clock-enable pulse
	done: OUT std_logic;
	q, r: OUT std_logic_vector(3 downto 0); -- quotient, remainder
	Qi, Qc, Qd: OUT std_logic -- One-hot state bits
	);

end  divider_with_single_step ;

------------------------------------------------------------------------------

architecture divider_with_single_step_RTL of divider_with_single_step   is

-- Type declarations

type state_type is (INITIAL_STATE, COMPUTE_STATE, DONE_STATE);
 
-- Local (internal to the model) signals declarations.

signal state: state_type;
signal x, y: std_logic_vector(3 downto 0);
signal q_int: std_logic_vector(3 downto 0);

-- Component declarations

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

-- Component instantiations

-- processes

	CU_DPU: process (clk, resetb)

	begin

	  if (resetb = '0') then

	    state <= INITIAL_STATE;
		x <= (others => 'X');   -- <== Note #1
	    y <= (others => 'X');   -- <== Note #1
	    q_int <= (others => 'X');   -- <== Note #1
	    
	  elsif (clk'event and clk = '1') then

	    case (state) is

	      when INITIAL_STATE =>
				-- CU state transitions
				if (start = '1') then
				  state <= COMPUTE_STATE;
				end if;
		      -- DPU RTL
				x <= xin;
				y <= yin;
				q_int <= "0000";

	      when COMPUTE_STATE =>
		      -- DPU RTL
			  if (SCEN = '1') then  -- <======== very simple and easy method to exercise control
				if (x >= y) then
				  x <= x - y;
				  q_int <= q_int + '1'; -- overloaded definition of +
				-- CU state transitions
				else
				  state <= DONE_STATE;
				end if; 
			  end if;     -- <=================================== end of the new "if" added
	      when DONE_STATE =>
				-- CU state transitions
				if (ack = '1') then
				  state <= INITIAL_STATE;
				end if; 
		      -- DPU RTL
				-- no RTL in DONE_STATE
		 end case;
		
	  end if;

	end process CU_DPU;


end divider_with_single_step_RTL ;

------------------------------------------------------------------------------