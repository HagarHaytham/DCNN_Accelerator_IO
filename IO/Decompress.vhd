library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Decompress is
    Port(clk: in std_logic;
        rst: in std_logic;
        din : in std_logic_vector(15 downto 0);
        proces : in std_logic;
        decompressed,word : out std_logic;
        dataOut :  out std_logic_vector(15 downto 0));
end entity Decompress;

architecture ArchIODecompress of Decompress is
    component Counter is
        Port ( clk,rst,en : in  STD_LOGIC;      
               dir : in  STD_LOGIC;     -- direction of counter (up or down)
               count : out  STD_LOGIC_VECTOR (6 downto 0));   
    end component;
signal packet: std_logic := '0' ; -- 0 at first packet , 1 at second packet
signal en1 : std_logic := '0' ;
signal en2 : std_logic := '0' ;
signal cnt,cnt2: std_logic_vector(6 downto 0);
signal deb : std_logic_vector(6 downto 0);
begin
    deb<=din(14 downto 8);
process (proces,cnt,cnt2,clk)
    begin
    if (clk'Event and clk = '1') then
        if (proces='1' and packet='0')  then-- process the first packet
            if (cnt=din(14 downto 8)-1 )then
                packet<='1';
                en1<='0';
                en2<='1';
                decompressed<='0';
            else
                en1<='1';
                decompressed<='0'; 
            end if;
        elsif (proces='1' and packet='1')  then-- process the second packet
            if (cnt2=din(6 downto 0)-1) then
                decompressed<='1';
                en2<='0';
                
            end if;

        end if;
    end if;
end process;

C1: Counter port map (clk,rst,en1,'1',cnt); -- cnt up (dir=1) , and stop when counter reaches the no of pixels
C2 : Counter port map (clk,rst,en2,'1',cnt2);
dataOut<= (others=>'1') when packet='0' and din(15) ='1'
else (others=>'0') when packet='0' and din(15) ='0'
else (others=>'1') when packet='1' and din(7)='1'
else (others=>'0') ;--when packet='1' and din(7)='0'
word<='1';

end ArchIODecompress;


