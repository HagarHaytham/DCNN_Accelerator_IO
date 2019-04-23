library IEEE;
use ieee.std_logic_1164.all;

Entity JDecomp is 

port(
	clk,en,rst : in std_logic;
	recPack : in std_logic_vector(15 downto 0);
	wordDone,packetDone : out std_logic;
	decompWord : out std_logic_vector(15 downto 0));


End Entity;


Architecture myArch of JDecomp is

component counter is 
        
       port(Clock, CLR ,ldEn: in  std_logic;
	cValue : in std_logic_vector(6 downto 0);
        Q : out std_logic_vector(6 downto 0));
        
end component;

--component Reg is 
--	port(
--		d : in std_logic_vector(15 downto 0);
--		rst,en,clk : in std_logic;
--		q : out std_logic_vector(15 downto 0)
--		);
--End component;

component shiftReg is
port( 
	en,inp,clk,rst : in std_logic;
	myWord : out std_logic_vector(15 downto 0));
	
end component;

 component upCounter is 
        
       port(en,Clock, CLR : in  std_logic;
        Q : out std_logic_vector(3 downto 0));
        
end component;




signal dnCount : std_logic_vector (6 downto 0);
signal upCount : std_logic_vector (3 downto 0);
signal LorR : std_logic ;
signal v : std_logic ;
signal countVal : std_logic_vector (6 downto 0);
signal rstUpC,packDone,wdDone : std_logic := '0';
signal finUpCRst: std_logic;
signal decPacket : std_logic_vector(15 downto 0);
signal bgn,bgnSec,loadEn,upCEn,shRegEn,delayedPacket : std_logic := '0';
begin

process(clk,en,dnCount,upCount)

begin

if(rising_edge(clk)) then
	if ( en ='1') then
		bgn<= '1' ;
		LorR<= '0';
		v <= recPack(15);
		countVal <= recPack(14 downto 8);
		loadEn <= '1';
		upCEn <= '1';
		shRegEn <= '1';
		packDone <= '0';
	
	else
			
			if (delayedPacket = '1') then
				packDone <= '1';
				delayedPacket <= '0';
			end if;

			if(loadEn = '1' and LorR= '0') then
				loadEn <= '0';
			end if;
			if(bgn = '1' and LorR= '1' and bgnSec ='1') then
				v <= recPack(7);
				countVal <= recPack(6 downto 0);
				bgnSec <= '0';
				loadEn <= '1';
				shRegEn <= '1';
				upCEn <= '1';
			else
				loadEn <= '0';
			end if;

			if(upCount = "1111") then
				wdDone <= '1';
				
			else
				wdDone <= '0';
				
			end if;

			if( LorR='0' and dnCount="0000001") then
				LorR <= '1';
				bgnSec <= '1';
				shRegEn <= '0';
				upCEn <= '0';
				
			elsif( LorR='1' and dnCount="0000001") then
				bgn <= '0';
				shRegEn <= '0';
				upCEn <= '0';
				LorR <= '0';
				
			end if;


			if(LorR='0' and dnCount="0000000") then 
				if(wdDone = '1') then 
					delayedPacket <='1';
				else
					packDone <= '1';
				end if;
			end if;

	

--if packet is done and decompressed word is ready


--			elsif(LorR = '0' ) then
--				if(dnCount = "0000000") then
--					LorR <= '1';
--					rstDnC <= '1';
--				else
--					v <= recPack(15);
--					countVal <= recPack(14 downto 8);
--				end if;
--				
--			elsif(dnCount = "0000000") then  
--						
--				rstDnC <= '1';
--				LorR <= '0';
--			else
--				v <= recPack(7);
--				countVal <= recPack(6 downto 0);
--				
--			end if;
	end if;
end if;
end process;
	finUpCRst <= rst or rstUpC;
	DC : counter port map (clk,rst,loadEn,countVal,dnCount);
	UC : upCounter port map (upCEn,clk,finUpCRst,upCount);
	shR : shiftReg port map (shRegEn,v,clk,rst,decPacket);
	packetdone <= packDone;
	wordDone <= wdDone;
	decompWord <= decPacket;
End Architecture;
