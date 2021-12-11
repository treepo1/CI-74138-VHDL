library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
port(
    a: in std_logic;
    b: in std_logic;
    c: in std_logic;
    y0: out std_logic;
    y1: out std_logic;
    y2: out std_logic;
    y3: out std_logic;
    y4: out std_logic;
    y5: out std_logic;
    y6: out std_logic;
    y7: out std_logic);
end decoder;


architecture rtl of decoder is
    begin
        process(a,b,c) is
            begin
                y0 <= (a or b or c);
                y1 <= (not a or b or c);
                y2 <= (a or not b or c);
                y3 <= (not a or not b or c);
                y4 <= (a or b or not c);
                y5 <= (not a or b or not c);
                y6 <= (a or not b or not c);
                y7 <= (not a or not b or not c);
            end process;
    end rtl;
