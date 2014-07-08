
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:34:15 (www.fizzim.com)

module ADC_Init_FSM 
  #(
    parameter TIME_OUT = 12'd1000
  )(
  output ADC_INIT,
  output ADC_RST,
  output CRST,
  output INC,
  output RUN,
  input CLK,
  input wire [4:0] CNT,
  input INIT_DONE,
  input RST,
  input wire [11:0] SLOW_CNT 
);

  // state bits
  parameter 
  Reset     = 3'b000, 
  ADC_Reset = 3'b001, 
  Init      = 3'b010, 
  Run       = 3'b011, 
  Wait      = 3'b100, 
  Wait2     = 3'b101; 

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_2 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_3 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg ADC_INIT_1;
  (* syn_preserve = "true" *)  reg ADC_INIT_2;
  (* syn_preserve = "true" *)  reg ADC_INIT_3;
  (* syn_preserve = "true" *)  reg ADC_RST_1;
  (* syn_preserve = "true" *)  reg ADC_RST_2;
  (* syn_preserve = "true" *)  reg ADC_RST_3;
  (* syn_preserve = "true" *)  reg CRST_1;
  (* syn_preserve = "true" *)  reg CRST_2;
  (* syn_preserve = "true" *)  reg CRST_3;
  (* syn_preserve = "true" *)  reg INC_1;
  (* syn_preserve = "true" *)  reg INC_2;
  (* syn_preserve = "true" *)  reg INC_3;
  (* syn_preserve = "true" *)  reg RUN_1;
  (* syn_preserve = "true" *)  reg RUN_2;
  (* syn_preserve = "true" *)  reg RUN_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign ADC_INIT   = (ADC_INIT_1 & ADC_INIT_2) | (ADC_INIT_2 & ADC_INIT_3) | (ADC_INIT_1 & ADC_INIT_3); // Majority logic
  assign ADC_RST    = (ADC_RST_1  & ADC_RST_2 ) | (ADC_RST_2  & ADC_RST_3 ) | (ADC_RST_1  & ADC_RST_3 ); // Majority logic
  assign CRST       = (CRST_1     & CRST_2    ) | (CRST_2     & CRST_3    ) | (CRST_1     & CRST_3    ); // Majority logic
  assign INC        = (INC_1      & INC_2     ) | (INC_2      & INC_3     ) | (INC_1      & INC_3     ); // Majority logic
  assign RUN        = (RUN_1      & RUN_2     ) | (RUN_2      & RUN_3     ) | (RUN_1      & RUN_3     ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Reset    :                                 nextstate_1 = Wait;
      ADC_Reset: if      (CNT == 12)             nextstate_1 = Wait;
                 else                            nextstate_1 = ADC_Reset;
      Init     : if      (INIT_DONE)             nextstate_1 = Wait2;
                 else                            nextstate_1 = Init;
      Run      :                                 nextstate_1 = Run;
      Wait     : if      (CNT == 17)             nextstate_1 = Init;
                 else if (CNT == 5)              nextstate_1 = ADC_Reset;
                 else                            nextstate_1 = Wait;
      Wait2    : if      (SLOW_CNT == TIME_OUT)  nextstate_1 = Run;
                 else                            nextstate_1 = Wait2;
    endcase
    case (voted_state_2)
      Reset    :                                 nextstate_2 = Wait;
      ADC_Reset: if      (CNT == 12)             nextstate_2 = Wait;
                 else                            nextstate_2 = ADC_Reset;
      Init     : if      (INIT_DONE)             nextstate_2 = Wait2;
                 else                            nextstate_2 = Init;
      Run      :                                 nextstate_2 = Run;
      Wait     : if      (CNT == 17)             nextstate_2 = Init;
                 else if (CNT == 5)              nextstate_2 = ADC_Reset;
                 else                            nextstate_2 = Wait;
      Wait2    : if      (SLOW_CNT == TIME_OUT)  nextstate_2 = Run;
                 else                            nextstate_2 = Wait2;
    endcase
    case (voted_state_3)
      Reset    :                                 nextstate_3 = Wait;
      ADC_Reset: if      (CNT == 12)             nextstate_3 = Wait;
                 else                            nextstate_3 = ADC_Reset;
      Init     : if      (INIT_DONE)             nextstate_3 = Wait2;
                 else                            nextstate_3 = Init;
      Run      :                                 nextstate_3 = Run;
      Wait     : if      (CNT == 17)             nextstate_3 = Init;
                 else if (CNT == 5)              nextstate_3 = ADC_Reset;
                 else                            nextstate_3 = Wait;
      Wait2    : if      (SLOW_CNT == TIME_OUT)  nextstate_3 = Run;
                 else                            nextstate_3 = Wait2;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      state_1 <= Reset;
      state_2 <= Reset;
      state_3 <= Reset;
    end
    else begin
      state_1 <= nextstate_1;
      state_2 <= nextstate_2;
      state_3 <= nextstate_3;
    end
  end

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      ADC_INIT_1 <= 0;
      ADC_INIT_2 <= 0;
      ADC_INIT_3 <= 0;
      ADC_RST_1 <= 0;
      ADC_RST_2 <= 0;
      ADC_RST_3 <= 0;
      CRST_1 <= 1;
      CRST_2 <= 1;
      CRST_3 <= 1;
      INC_1 <= 0;
      INC_2 <= 0;
      INC_3 <= 0;
      RUN_1 <= 0;
      RUN_2 <= 0;
      RUN_3 <= 0;
    end
    else begin
      ADC_INIT_1 <= 0; // default
      ADC_INIT_2 <= 0; // default
      ADC_INIT_3 <= 0; // default
      ADC_RST_1 <= 0; // default
      ADC_RST_2 <= 0; // default
      ADC_RST_3 <= 0; // default
      CRST_1 <= 0; // default
      CRST_2 <= 0; // default
      CRST_3 <= 0; // default
      INC_1 <= 0; // default
      INC_2 <= 0; // default
      INC_3 <= 0; // default
      RUN_1 <= 0; // default
      RUN_2 <= 0; // default
      RUN_3 <= 0; // default
      case (nextstate_1)
        Reset    :        CRST_1 <= 1;
        ADC_Reset: begin
                          ADC_RST_1 <= 1;
                          INC_1 <= 1;
        end
        Init     : begin
                          ADC_INIT_1 <= 1;
                          CRST_1 <= 1;
        end
        Run      : begin
                          CRST_1 <= 1;
                          RUN_1 <= 1;
        end
        Wait     :        INC_1 <= 1;
        Wait2    :        INC_1 <= 1;
      endcase
      case (nextstate_2)
        Reset    :        CRST_2 <= 1;
        ADC_Reset: begin
                          ADC_RST_2 <= 1;
                          INC_2 <= 1;
        end
        Init     : begin
                          ADC_INIT_2 <= 1;
                          CRST_2 <= 1;
        end
        Run      : begin
                          CRST_2 <= 1;
                          RUN_2 <= 1;
        end
        Wait     :        INC_2 <= 1;
        Wait2    :        INC_2 <= 1;
      endcase
      case (nextstate_3)
        Reset    :        CRST_3 <= 1;
        ADC_Reset: begin
                          ADC_RST_3 <= 1;
                          INC_3 <= 1;
        end
        Init     : begin
                          ADC_INIT_3 <= 1;
                          CRST_3 <= 1;
        end
        Run      : begin
                          CRST_3 <= 1;
                          RUN_3 <= 1;
        end
        Wait     :        INC_3 <= 1;
        Wait2    :        INC_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [71:0] statename;
  always @* begin
    case (state_1)
      Reset    : statename = "Reset";
      ADC_Reset: statename = "ADC_Reset";
      Init     : statename = "Init";
      Run      : statename = "Run";
      Wait     : statename = "Wait";
      Wait2    : statename = "Wait2";
      default  : statename = "XXXXXXXXX";
    endcase
  end
  `endif

endmodule

