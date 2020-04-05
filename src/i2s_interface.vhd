library ieee;

use ieee.std_logic_1164.all;

entity i2s_interface is

	generic( DATA_WIDTH 		: integer := 24;
				PRECISION_DATA : integer := 18;
    		   BITSPERFRAME 	: integer := 64;
				WS_RATE			: integer := 32);
	port(
		  clk			: in  std_logic;
    	  mems_bclk : out std_logic; -- bitclock 2.5 MHz
		  lrcl		: out  std_logic; -- WS 2 500 000 / 64
--		  sel			: out std_logic;
		  data		: in  std_logic;
        reset 		: in  std_logic;
		  led0      : out std_logic;
		  led1      : out std_logic;
		  led2      : out std_logic;
		  led3      : out std_logic;
		  led4      : out std_logic;
		  led5      : out std_logic;
		  led6      : out std_logic;
		  led7      : out std_logic
	);

end i2s_interface;

architecture rtl of i2s_interface is
	 signal ws_cnt							: integer range 0 to WS_RATE := 0;
	 	 	 
	 signal ws_toggle 					: std_logic := '1';
	 	 
	 signal bit_index 					: integer range 0 to DATA_WIDTH := 1;
	 
	 signal bclk_in						: std_logic := '1';
	 
	 signal bclk_count					: integer := 1;
	 	 
	 signal data_sample					: std_logic_vector(DATA_WIDTH - 1 downto 0);
	 
	 signal tri_state						: std_logic := '0';

	 component bclk is
	 port(
			inclk0							: in std_logic := '0';
			c0									: out std_logic
	 );
	 end component; 
begin
	
	 DIVIDE_Clock : process(clk)
	 begin
		if rising_edge(clk) then
			if bclk_count = 10 then
				bclk_count <= 1;
				bclk_in <= not bclk_in;
			else 
				bclk_count <= bclk_count + 1;
			end if;
		end if;
	 end process;
	
	 mems_bclk <= bclk_in;
 
	 lrcl <= ws_toggle;

	 GENERATE_WS_Signal : process(bclk_in)
    begin
    	if falling_edge(bclk_in) then
			if ws_cnt = WS_RATE - 1 then
				ws_toggle <= not ws_toggle;
				ws_cnt <= 0;
         else
				ws_cnt <= ws_cnt + 1;
			end if;
      end if;
    end process;
	
	 READ_DATA_Sample : process(bclk_in)
	 variable prev_ws_toggle :std_logic := '1';
	 begin
		if rising_edge(bclk_in) then
			if ws_toggle = '0' and tri_state = '0' then
				if bit_index < DATA_WIDTH then
					if bit_index < PRECISION_DATA then
						data_sample(bit_index) <= data;
						bit_index <= bit_index + 1;	
					else 
						bit_index <= bit_index + 1;
					end if;	
				elsif bit_index = DATA_WIDTH then
					bit_index <= 1;
					tri_state <= '1';
				end if;
			elsif ws_toggle = '1' then
				tri_state <= '0';
			end if;
		end if;
	 end process;
	 
	 led0 <= data_sample(5);
	 led1 <= data_sample(6);
	 led2 <= data_sample(7);
	 led3 <= data_sample(8);
	 led4 <= data_sample(9);
	 led5 <= data_sample(10);
	 led6 <= data_sample(11);
	 led7 <= data_sample(12);
	 
end rtl;