library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity COUNTER500ms is
	port(	count:	out std_logic_vector(15 downto 0);
			clock, pulse_in, reset:	in	std_logic);
end COUNTER500ms;


architecture RTL of COUNTER500ms is
	type D_Buff is array(0 to 1) of integer range 0 to 65535;

	signal counter:	D_Buff;
	signal CNT500ms:	integer range 0 to (50000*500-1);
	signal old_pulse_in: std_logic;
	signal tmp : std_logic_vector(15 downto 0);
begin

process (clock, reset)
begin
	if(reset='1') then
		counter(0) <= 0;
		counter(1) <= 0;
	else if(clock'event and clock='1') then
				if(CNT500ms = (50000*500-1)) then  -- 500m sec
					CNT500ms <=0;
					counter(1)<=counter(0);
					counter(0)<=0;
					tmp<=CONV_std_logic_vector(counter(1),16);
					count <= tmp(14 downto 0) & '0';
				else 
					CNT500ms <= CNT500ms+1;
					if(old_pulse_in /= pulse_in and pulse_in ='1') then 
						counter(0)<=counter(0)+1;
					end if;
					old_pulse_in <= pulse_in;
				end if;
			end if;
	end if;
end process;

end RTL;
