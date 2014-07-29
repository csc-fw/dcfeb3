
// Created by fizzim.pl version $Revision: 4.44 on 2014:06:03 at 09:10:37 (www.fizzim.com)

module Pow_on_Rst 
  #(
    parameter POR_tmo = 7'd120
  )(
  output reg ADC_INIT_RST,
  output reg AL_START,
  output reg MMCM_RST,
  output reg POR,
  output reg RUN,
  output wire [3:0] POR_STATE,
  input ADC_RDY,
  input AL_DONE,
  input BPI_SEQ_IDLE,
  input CLK,
  input EOS,
  input MMCM_LOCK,
  input QPLL_LOCK,
  input RESTART_ALL,
  input STRT_DLY_DONE 
);

  // Inserted from attribute insert_at_top_of_module:
  reg [6:0] timer;
  wire por_done;

  // state bits
  parameter 
  Idle       = 4'b0000, 
  ADC_INIT   = 4'b0001, 
  Auto_Load  = 4'b0010, 
  PROM_Cnfg  = 4'b0011, 
  Pow_on_Rst = 4'b0100, 
  Run_State  = 4'b0101, 
  W4ODMB     = 4'b0110, 
  W4Qpll     = 4'b0111, 
  W4SysClk   = 4'b1000; 

  reg [3:0] state;
  assign POR_STATE = state;
  reg [3:0] nextstate;
  reg por_cnt;

  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    case (state)
      Idle      :                          nextstate = W4ODMB;
      ADC_INIT  : if      (ADC_RDY)        nextstate = Run_State;
                  else                     nextstate = ADC_INIT;
      Auto_Load : if      (AL_DONE)        nextstate = ADC_INIT;
                  else                     nextstate = Auto_Load;
      PROM_Cnfg : if      (BPI_SEQ_IDLE)   nextstate = Auto_Load;
                  else                     nextstate = PROM_Cnfg;
      Pow_on_Rst: if      (!MMCM_LOCK)     nextstate = W4Qpll;
                  else if (por_done)       nextstate = PROM_Cnfg;
                  else                     nextstate = Pow_on_Rst;
      Run_State : if      (RESTART_ALL)    nextstate = Pow_on_Rst;
                  else                     nextstate = Run_State;
      W4ODMB    : if      (STRT_DLY_DONE)  nextstate = W4Qpll;
                  else                     nextstate = W4ODMB;
      W4Qpll    : if      (QPLL_LOCK)      nextstate = W4SysClk;
                  else                     nextstate = W4Qpll;
      W4SysClk  : if      (MMCM_LOCK)      nextstate = Pow_on_Rst;
                  else                     nextstate = W4SysClk;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or negedge EOS) begin
    if (!EOS)
      state <= Idle;
    else
      state <= nextstate;
  end

  // datapath sequential always block
  always @(posedge CLK or negedge EOS) begin
    if (!EOS) begin
      ADC_INIT_RST <= 1;
      AL_START <= 0;
      MMCM_RST <= 1;
      POR <= 1;
      RUN <= 0;
      por_cnt <= 0;
    end
    else begin
      ADC_INIT_RST <= 0; // default
      AL_START <= 0; // default
      MMCM_RST <= 0; // default
      POR <= 0; // default
      RUN <= 0; // default
      por_cnt <= 0; // default
      case (nextstate)
        Idle      : begin
                           ADC_INIT_RST <= 1;
                           MMCM_RST <= 1;
                           POR <= 1;
        end
        Auto_Load : begin
                           ADC_INIT_RST <= 1;
                           AL_START <= 1;
        end
        PROM_Cnfg :        ADC_INIT_RST <= 1;
        Pow_on_Rst: begin
                           ADC_INIT_RST <= 1;
                           POR <= 1;
                           por_cnt <= 1;
        end
        Run_State :        RUN <= 1;
        W4ODMB    : begin
                           ADC_INIT_RST <= 1;
                           MMCM_RST <= 1;
                           POR <= 1;
        end
        W4Qpll    : begin
                           ADC_INIT_RST <= 1;
                           MMCM_RST <= 1;
                           POR <= 1;
        end
        W4SysClk  : begin
                           ADC_INIT_RST <= 1;
                           POR <= 1;
        end
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state)
      Idle      : statename = "Idle";
      ADC_INIT  : statename = "ADC_INIT";
      Auto_Load : statename = "Auto_Load";
      PROM_Cnfg : statename = "PROM_Cnfg";
      Pow_on_Rst: statename = "Pow_on_Rst";
      Run_State : statename = "Run_State";
      W4ODMB    : statename = "W4ODMB";
      W4Qpll    : statename = "W4Qpll";
      W4SysClk  : statename = "W4SysClk";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

  // Inserted from attribute insert_at_bottom_of_module:
  assign por_done = por_cnt && (timer == POR_tmo);
  
  always @(posedge CLK)
  begin
     if(por_cnt)
        if(por_done)
           timer <= timer;
        else
           timer <= timer + 1;
     else
        timer <= 4'h0;
  end

endmodule
