library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_top is
    port (
            D : in std_logic_vector(7 downto 0);
            reset : in std_logic;
            load : in std_logic;
            clk : in std_logic;
            Q : out std_logic_vector(7 downto 0)
        );
end register_top;

architecture behavior of register_top is
	
	Begin

    process (clk)
        begin
		if rising_edge(clk) then
			if (reset = '1') then
				Q <= "00000000";
			elsif (load = '1') then
				Q <= D;
			end if;
		end if;
	end process;
	
end behavior;

