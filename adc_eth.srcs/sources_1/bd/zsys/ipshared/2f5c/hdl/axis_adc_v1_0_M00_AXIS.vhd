library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axis_adc_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here
        NUMBER_OF_OUTPUT_WORDS : integer := 265;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		wr_ena    : in std_logic;
        wr_clk  : in std_logic;
        wr_sync : in std_logic;
        wr_data : in std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        irq     : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end axis_adc_v1_0_M00_AXIS;

architecture implementation of axis_adc_v1_0_M00_AXIS is
	-- Total number of output data                                              
	                                   
	constant FIFO_MAX		: natural := NUMBER_OF_OUTPUT_WORDS;
    type MEM is array (0 to FIFO_MAX-1) of std_logic_vector(C_M_AXIS_TDATA_WIDTH - 1 downto 0);
    
    signal data_fifo    : MEM;
	                                                                                  
	-- Define the states of state machine                                             
	-- The control state machine oversees the writing of input streaming data to the FIFO,
	-- and outputs the streaming data from the FIFO                                   
	type state is ( IDLE,                        
	                INIT_SEND, 
	                SEND_STREAM);                                    
	-- State variable                                                                 
	signal  mst_exec_state : state;  
	
	type wr_state is (IDLE, WR_FIFO);
	signal mst_wr_state : wr_state;
	                                                 
	-- Example design FIFO read pointer                                               
	signal read_pointer : integer range 0 to NUMBER_OF_OUTPUT_WORDS;                               
    signal write_pointer : integer range 0 to NUMBER_OF_OUTPUT_WORDS;
    
	-- AXI Stream internal signals
	
	--streaming data valid
	signal axis_tvalid	: std_logic;
	--streaming data valid delayed by one clock cycle
	signal axis_tvalid_delay	: std_logic;
	--Last of the streaming data 
	signal axis_tlast	: std_logic;
	--Last of the streaming data delayed by one clock cycle
	signal axis_tlast_delay	: std_logic;
	--FIFO implementation signals
	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
	signal tx_en	: std_logic;
	--The master has issued all the streaming data stored in FIFO
	signal tx_done	: std_logic;
    
    signal sys_enable   : std_logic;
    signal rx_done,rx_done_d1	: std_logic;
    signal tick_rx_done         : std_logic;
    signal wr_clk_d1,wr_clk_d2    : std_logic;
    signal wr_sync_d1,wr_sync_d2    : std_logic;
    signal tick_wr_clk,tick_wr_sync    : std_logic;
     
    
begin
	-- I/O Connections assignments

    sys_enable <= M_AXIS_ARESETN and wr_ena;
	M_AXIS_TVALID	<= axis_tvalid_delay;
	M_AXIS_TDATA	<= stream_data_out;
	M_AXIS_TLAST	<= axis_tlast_delay;
    irq             <= '1' when (write_pointer = NUMBER_OF_OUTPUT_WORDS - 1) else '0';
    
    --stream_data_out <= data_fifo(read_pointer) when mst_exec_state = SEND_STREAM else (others=>'1');
    
	-- Control state machine implementation                                               
	process(M_AXIS_ACLK) 
	variable v_read_pointer : integer range 0 to 511;                                                                       
	begin                                                                                       
	  if (rising_edge (M_AXIS_ACLK)) then                                                       
	    if(sys_enable = '0') then                                                           
	      -- Synchronous reset (active low)                                                     
	      mst_exec_state      <= IDLE;
	      v_read_pointer := 0;
	    else                                                                                    
	      case (mst_exec_state) is                                                              
	        when IDLE     =>                                                                                                                   
	          if (tick_rx_done = '1')then                                                            
	            mst_exec_state <= INIT_SEND;
	          else                                                                              
	            mst_exec_state <= IDLE;                                                         
	          end if;                                                                           
	                                                                                            
	        when INIT_SEND =>
				if (M_AXIS_TREADY = '1') then
	               mst_exec_state  <= SEND_STREAM;                                                                                                                
				   v_read_pointer := 0;
				end if;
				
	        when SEND_STREAM  =>                                                                                                          
	          if (v_read_pointer = NUMBER_OF_OUTPUT_WORDS) then                                                           
	            v_read_pointer := 0;
	            mst_exec_state <= IDLE;                                                         
	          else
				stream_data_out <= data_fifo(v_read_pointer);
				v_read_pointer := v_read_pointer + 1;
	            --mst_exec_state <= SEND_STREAM;                                                  
	          end if;                                                                           
	                                                                                            
	        when others    =>                                                                   
	          mst_exec_state <= IDLE;                                                           
	                                                                                            
	      end case;                                                                             
	    end if;
	    read_pointer <= v_read_pointer;                                                                                 
	  end if;                                                                                   
	end process;                                                                                

	--tvalid generation
	--axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
	--number of output streaming data is less than the NUMBER_OF_OUTPUT_WORDS.
	axis_tvalid <= '1' when ((mst_exec_state = SEND_STREAM) and (read_pointer < NUMBER_OF_OUTPUT_WORDS)) else '0';
	                                                                                               
	-- AXI tlast generation                                                                        
	-- axis_tlast is asserted number of output streaming data is NUMBER_OF_OUTPUT_WORDS-1          
	-- (0 to NUMBER_OF_OUTPUT_WORDS-1)                                                             
	axis_tlast <= '1' when (read_pointer = NUMBER_OF_OUTPUT_WORDS-1) else '0';                     
	                                                                                               
	-- Delay the axis_tvalid and axis_tlast signal by one clock cycle                              
	-- to match the latency of M_AXIS_TDATA                                                        
	process(M_AXIS_ACLK)                                                                           
	begin                                                                                          
	  if (rising_edge (M_AXIS_ACLK)) then                                                          
	    if(sys_enable = '0') then                                                              
	      axis_tvalid_delay <= '0';                                                                
	      axis_tlast_delay <= '0';                                                                 
	    else                                                                                       
	      axis_tvalid_delay <= axis_tvalid;                                                        
	      axis_tlast_delay <= axis_tlast;                                                          
	    end if;                                                                                    
	  end if;                                                                                      
	end process;                                                                                   


	--read_pointer pointer

--	process(M_AXIS_ACLK)
	--variable v_read_pointer : integer range 0 to 511;                                                       
	--begin                                                                            
	  --if (rising_edge (M_AXIS_ACLK)) then                                            
	    --if(sys_enable = '0') then                                                
--	      v_read_pointer := 0;                                                         
--	      tx_done  <= '0';                                                           
--	    else                                                                         
--	      if (v_read_pointer < NUMBER_OF_OUTPUT_WORDS-1) then                         
--	        if (tx_en = '1') then                                                    
--	          stream_data_out <= data_fifo(v_read_pointer);                                   
--	          v_read_pointer := v_read_pointer + 1;                                      
--	          tx_done <= '0';                                               
--	        end if;                                                                  
--	      elsif (v_read_pointer = NUMBER_OF_OUTPUT_WORDS-1) then                         
--	        stream_data_out <= data_fifo(v_read_pointer);                                                         
--	        tx_done <= '1';
--	        v_read_pointer := 0;                                                         
--	      end  if;                                                                   
--	    end  if;   
	                                                                      
--	  end  if;                                                                       
--	end process;                                                                     

	--FIFO read enable generation 

	tx_en <= M_AXIS_TREADY and axis_tvalid_delay;                                   

	-- Add user logic here
    -- Create tick of signals 
    gen_tick: process (M_AXIS_ACLK) 
    begin
        if (rising_edge (M_AXIS_ACLK)) then
            if(sys_enable = '0') then
                wr_clk_d1   <= '0';
                wr_clk_d2   <= '0';
                wr_sync_d1  <= '0';
                wr_sync_d2  <= '0';
            else
                wr_clk_d2   <= wr_clk_d1;
                wr_clk_d1   <= wr_clk;
                
                wr_sync_d2  <= wr_sync_d1;
                wr_sync_d1  <= wr_sync;
            end if;
        end if;
    end process;
    
    process  (M_AXIS_ACLK)
    begin
        if (rising_edge (M_AXIS_ACLK)) then
            rx_done_d1 <= rx_done;
        end if;
    end process; 
    
    tick_wr_clk     <= (wr_clk_d1 xor wr_clk_d2) and wr_clk_d1;
    tick_wr_sync    <= (wr_sync_d1 xor wr_sync_d2) and wr_sync_d1;
    tick_rx_done    <= (rx_done_d1 xor rx_done) and rx_done;
    -- End create tick
    
    -- Write data to FIFO
    wr_fifo_process: process  (M_AXIS_ACLK)
    variable v_write_pointer : integer range 0 to 511;
    begin
        if (rising_edge (M_AXIS_ACLK)) then
            if(sys_enable = '0') then
                mst_wr_state <= IDLE;
                rx_done <= '0';
                v_write_pointer := 0;
            else
                case (mst_wr_state) is
                    when IDLE =>
                        if (tick_wr_sync = '1') then
                            mst_wr_state <= WR_FIFO;
                            v_write_pointer := 0;
                            rx_done <= '0';
                        end if;
                        
                    when WR_FIFO =>
                        if (tick_wr_sync = '1') then
                            v_write_pointer := 0;
                            rx_done <= '0';
                        elsif (tick_wr_clk = '1') then
                            if (v_write_pointer = NUMBER_OF_OUTPUT_WORDS) then
                                mst_wr_state <= IDLE;
                                rx_done <= '1';
                            else
                                data_fifo(v_write_pointer) <= wr_data;
                                v_write_pointer := v_write_pointer + 1;
                            end if;
                        end if;
                        
                    when others =>
                        mst_wr_state <= IDLE;
                end case;
            end if;
            
            write_pointer <= v_write_pointer;
        end if;
    end process;
    -- End write data to FIFO 
	
	-- User logic ends

end implementation;
