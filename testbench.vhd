library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is 
-- emty
end testbench;

architecture arch of testbench is

    signal a, b, c, y0, y1, y2, y3, y4, y5, y6, y7 : std_logic;

begin
    UUT : entity work.decoder port map (a=>a,b=>b,c=>c,y0=>y0, y1=>y1, y2=>y2, y3=>y3, y4=>y4, y5=>y5, y6=>y6, y7=>y7);

    process
    begin
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 1 ns;


        a <= '1';
        b <= '0';
        c <= '0';
        wait for 1 ns;


        a <= '0';
        b <= '1';
        c <= '0';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        c <= '0';
        wait for 1 ns;

        a <= '0';
        b <= '0';
        c <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '0';
        c <= '1';
        wait for 1 ns;

        a <= '0';
        b <= '1';
        c <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        c <= '1';
        wait for 1 ns;

        a <= 'X';
        b <= 'X';
        c <= 'X';
        wait for 1 ns;


        a <= '0';
        b <= '0';
        c <= '0';

        wait;
        end process;
end arch ; -- arch