library IEEE;
use IEEE.std_logic_1164.all;
entity IOController is
    Port(clk: in std_logic;
        rst: in std_logic;
        interrupt :in std_logic;
        loadProcess :in std_logic;
        CNNImage: in std_logic;
        ready : out std_logic;
        done : out std_logic;
        din : in std_logic_vector(15 downto 0);
        dout : out std_logic_vector(3 downto 0));
end entity IOController;

architecture ArchIOController of IOController is
begin
   
end ArchIOController;


