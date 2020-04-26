library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift32_top is
    port (
            data_in : in std_logic_vector(31 downto 0);
            load : in std_logic;
            clk : in std_logic;
            shiftin : in std_logic;
            shiftout : out std_logic
        );
end shift32_top;

architecture behavior of shift32_top is

    signal shift_reg: std_logic_vector(31 downto 0);
	
	Begin

    process (clk)
    begin
        if rising_edge(clk) then
            if load = '1' then
                shift_reg <= data_in;
            else
                shift_reg <= shift_reg(30 downto 0) & shiftin;
            end if;
        end if;
    
        shiftout <= shift_reg(31);

    end process;
	
end behavior;

