library ieee;
use ieee.std_logic_1164.all;

entity GEN10KHz is
	port(	Q:			out 	std_logic;
			clock:	in	std_logic);
end GEN10KHz;

architecture RTL of GEN10KHz is
	signal CNT1ms:	integer range 0 to (2500-1);
	signal o:	std_logic;
begin
process (clock)
begin
	if(clock'event and clock='1') then
		if(CNT1ms = (2500-1)) then  -- 0.1m sec
			CNT1ms <=0;
			o<=NOT o;
		else
			CNT1ms <= CNT1ms+1;
		end if;
	end if;
end process;

	Q <= o;
end RTL;
			