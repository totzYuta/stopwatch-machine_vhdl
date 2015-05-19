library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


--entity

--end

signal C3, C2, C1, C0, CS : std_logic;
signal CM : std_logic_vector(1 downto 0);
signal X3, X2, X1, X0 : std_logic_vector(3 downto 0);
signal XD : std_logic_vector(4 downto 0);

begin
  COMPA: COUNTER1M  port map(CK, CS, CM);
  COMPB: SWITCH     port map(CS, START, STOP, C0);
  COMP0: COUNTER10  port map(C0, RESET, C1, X0);
  COMP1: COUNTER10  port map(C1, RESET, C2, X1);
  COMP2: COUNTER10  port map(C2, RESET, C3, X2);
  COMP3: COUNTER10  port map(C3, RESET, open, X3);
  COMPC: MULTIPLEXER  port map(X3, X2, X1, X0, CM, XD);
  COMPD: B2D_DECODER  port map(CM, S);
  COMPE: LED_DECODER  port map(XD, Y);
end STRUCTURE;
