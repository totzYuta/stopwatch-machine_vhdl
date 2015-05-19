library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--entity

--end

architecture DATAFLOW of B2D_DECODER is
begin
process (D_IN) begin
  case D_IN is
    when "00" => D_OUT <= "1110";
    when "01" => D_OUT <= "1101";
    when "10" => D_OUT <= "1011";
    when "11" => D_OUT <= "0111";
    when others => null;
  end case;
end process;
end DATAFLOW;
