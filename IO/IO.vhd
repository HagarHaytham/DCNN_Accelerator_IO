LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY IO IS
    Port(Clk: in std_logic;
        Rst: in std_logic;
        Interrupt :in std_logic;
        LoadProcess :in std_logic;
        CNNImage: in std_logic;
        Ready : out std_logic;
        Done : out std_logic;
        Din : in std_logic_vector(15 downto 0);
        Dout : out std_logic_vector(3 downto 0));
end entity IO;

Architecture ArchIO of IO is
begin
    Ready <= CNNImage and Interrupt ;
end ArchIO;


