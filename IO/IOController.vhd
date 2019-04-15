--Design of IO Control
--Implemented as a Moore machine (input function of state)
--using two processes, the first clocked for state calculation and the second combinational for output
--set initial address to CNN
--try to buffer i_clk to addresses counters if a delay is needed
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY IOController IS
GENERIC(n	:	integer	:=	16);
	PORT(
		i_clk		:	IN	std_logic;	--clock sent by CPU
		i_rst		:	IN	std_logic;	--reset signal sent by CPU, to initialize chip
		i_int		:	IN	std_logic;	--interrupt signal sent by CPU, informs the chip that a command is sent
		i_op		:	IN	std_logic;	--signal to determine type of operation, '0' = process and '1' = load
		i_dtype		:	IN	std_logic;	--signal to specify data type if sent operation was load, '0' = CNN and '1' = Img
		i_decompI	:	IN	std_logic;	--signal sent from Image decompression, to indicate decompression finished
		i_wordI		:	IN	std_logic;	--signal sent from Image decompression, to indicate a word is ready
		i_decompC	:	IN	std_logic;	--signal sent from CNN decompression, to indicate decompression finished
		i_wordC		:	IN	std_logic;	--signal sent from CNN decompression, to indicate a word is ready
		i_processDone	:	IN	std_logic;	--signal sent from CNN logic, result is ready
		o_rst		:	OUT	std_logic;	--reset signal, to reset addresses
		o_ready		:	OUT	std_logic;	--signal sent by chip, to inform CPU that chip is ready to receive
		o_loadDecompCNN	:	OUT	std_logic;	--signal to load packet to decompression counters of CNN
		o_loadDecompImg	:	OUT	std_logic;	--signal to load packet to decompression counters of Image
		o_writeMem	:	OUT	std_logic;	--signal write sent to memory
		o_readMem	:	OUT	std_logic;	--signal read sent to memory
		o_address	:	OUT	std_logic_vector(n-1 downto 0);	--address to write to
--		o_addImg	:	OUT	std_logic_vector(n-1 downto 0);	--address to write next image word at 
		o_process	:	OUT	std_logic;	--signal to CNN logic to process data
		o_done		:	OUT	std_logic	--signal sent by chip, when it finishes processing
		);

END ENTITY;

ARCHITECTURE behavioral	OF IOController IS

COMPONENT nCounter	IS

GENERIC(n	:	integer);

	PORT(
		i_clk	:	IN	std_logic;	--internal clock is chip, if we decide to have one
		i_rst	:	IN	std_logic;	--reset signal sent from controller
		i_en	:	IN	std_logic;	--enable for counter
		o_cnt	:	OUT	std_logic_vector(n-1 downto 0)	--current count
		);


END COMPONENT;

TYPE state_type IS (s_init, s_waitO, s_deImg, s_deCNN, s_process, s_waitRI, s_waitRC , s_waitRL, s_sendR);	--defining states
--s_init	initialization state, to initialize addresses and registers
--s_waitO	wait for CPU to send packet or command, sends ready signal ready to CPU to indicate that it's ready
--s_deImg	send signals to inform Image decompression HW that a packet is ready to decompress
--s_deCNN	send signals to inform CNN decompression HW that a packet is ready to decompress
--s_process	send process signal to Accelerator Logic to start working
--s_waitRI	wait for Image decompression HW to finish packet
--s_waitRC	wait for CNN decompression HW to finish packet
--s_waitRL	wait for Accelerator Logic HW to finish processing
--s_sendR	atate to send result to CPU

SIGNAL t_state		:	state_type;	--current state
SIGNAL enAddCntrCNN	:	std_logic;	--enable for CNN address counter
SIGNAL enAddCntrImg	:	std_logic;	--enable for image address counter
SIGNAL enAddRegRslt	:	std_logic;	--
SIGNAL imgAddLines	:	std_logic_vector(n-1 downto 0);
SIGNAL CNNAddLines	:	std_logic_vector(n-1 downto 0);
SIGNAL rsltAddLines	:	std_logic_vector(n-1 downto 0);
--SIGNAL loadC		:	std_logic;	--signal to load initial addresses to addresses counters


BEGIN
	PROCESS(i_clk)
	BEGIN
		IF rising_edge(i_clk)	THEN

			IF(i_rst = '1')	THEN	
				t_state <= s_init;	--setting initial state

			ELSE
				CASE t_state IS
					WHEN s_init =>
						t_state <= s_waitO;

					WHEN s_waitO =>

						IF(i_int = '1' and i_op = '1' and i_dtype = '1')	THEN
							t_state <= s_deImg;

						ELSIF(i_int = '1' and i_op = '1' and i_dtype = '0')	THEN
							t_state <= s_deCNN;

						ELSIF(i_int = '1' and i_op = '0')	THEN
							t_state <= s_process;
						END IF;

					WHEN s_deImg =>
						t_state <= s_waitRI;

					WHEN s_deCNN =>
						t_state <= s_waitRC;

					WHEN s_process =>
						t_state <= s_waitRL;
					
					WHEN s_waitRI => 

						IF(i_decompI = '1')	THEN
							t_state <= s_waitO;
						END IF;

					WHEN s_waitRC =>

						IF(i_decompC = '1')	THEN
							t_state <= s_waitO;
						END IF;
			
					WHEN s_waitRL =>

						IF(i_processDone = '1')	THEN
							t_state <= s_sendR;	
						END IF;					

					WHEN s_sendR =>
						t_state <= s_waitO;
				END CASE;
			END IF;
		END IF;
	END PROCESS;
	
	imgAddCntr:	nCounter GENERIC MAP(10) PORT MAP(i_clk, enAddCntrImg, i_rst, imgAddLines(8 downto 0)); --assuming image size does not exceed 1024 byte i.e 32X32 pixel
	addImg(n-1 downto 10) <= x'0'

	CNNAddCntr:	nCounter GENERIC MAP(10) PORT MAP(i_clk, enAddCntrCNN, i_rst, CNNAddLines(8 downto 0));
	addCNN(n-1 downto 10) <= "F"

	rsltAddReg:	nReg	GENERIC MAP(n) PORT MAP(x"F", enAddRegRslt, 0, i_clk, rsltAddLines);

	PROCESS(t_state)
	BEGIN
		CASE t_state IS
			WHEN s_init =>
				o_rst <= '1';
				
			WHEN s_waitO =>
				o_ready <= '1';

			WHEN s_deImg =>
				o_loadDecompImg <= '1';

			WHEN s_deCNN =>
				o_loadDecompCNN <= '1';
			
			WHEN s_waitRI =>
				o_writeMem <= i_wordI;
				enAddCntrImg <= i_wordI;
	
			WHEN s_waitRC =>
				o_writeMem <= i_wordC;
				enAddCntrCNN <= i_wordC;
	
			WHEN s_process =>
				o_process <= '1';

			WHEN s_sendR =>
				o_done <= '1';
				o_readMem <= '1';

END ARCHITECTURE;
