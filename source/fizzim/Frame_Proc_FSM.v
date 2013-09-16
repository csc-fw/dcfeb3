
// Created by fizzim.pl version 4.41 on 2013:08:01 at 13:01:02 (www.fizzim.com)

module Frame_Proc_FSM (
  output reg CLR_CRC,
  output reg CRC_CALC,
  output reg CRC_VLD,
  output reg INC_ROM,
  output reg RST_ROM,
  output reg TX_ACK,
  output wire [2:0] FRM_STATE,
  input CLK,
  input wire [2:0] ROM_ADDR,
  input RST,
  input VALID 
);
  
  // state bits
  parameter 
  Idle     = 3'b000, 
  CRC_EOP  = 3'b001, 
  Data     = 3'b010, 
  Preamble = 3'b011, 
  Rst_ROM  = 3'b100, 
  SOF      = 3'b101, 
  SOP      = 3'b110, 
  TX_Ack   = 3'b111; 
  
  reg [2:0] state;
  assign FRM_STATE = state;
  reg [2:0] nextstate;
  reg hold;
  reg hold1;
  reg hold2;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    CRC_CALC = 0; // default
    CRC_VLD = 0; // default
    INC_ROM = 0; // default
    case (state)
      Idle    : begin
        if (VALID) begin
                               nextstate = SOP;
                               INC_ROM = 1;
        end
        else                   nextstate = Idle;
      end
      CRC_EOP : begin
        // Warning C7: Combinational output INC_ROM is assigned on transitions, but has a non-default value "1" in state CRC_EOP 
                               INC_ROM = 1;
        if (ROM_ADDR == 3'd6)  nextstate = Rst_ROM;
        else                   nextstate = CRC_EOP;
      end
      Data    : begin
        // Warning C7: Combinational output CRC_CALC is assigned on transitions, but has a non-default value "VALID" in state Data 
                               CRC_CALC = VALID;
        if (!VALID) begin
                               nextstate = CRC_EOP;
                               CRC_VLD = 1;
        end
        else                   nextstate = Data;
      end
      Preamble: begin
        if (hold2) begin
                               nextstate = SOF;
                               INC_ROM = 1;
        end
        else                   nextstate = Preamble;
      end
      Rst_ROM :                nextstate = Idle;
      SOF     : begin
                               nextstate = TX_Ack;
                               INC_ROM = 1;
      end
      SOP     : begin
                               nextstate = Preamble;
                               INC_ROM = 1;
      end
      TX_Ack  : begin
        // Warning C7: Combinational output CRC_CALC is assigned on transitions, but has a non-default value "1" in state TX_Ack 
                               CRC_CALC = 1;
                               nextstate = Data;
      end
    endcase
  end
  
  // Assign reg'd outputs to state bits
  
  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST)
      state <= Idle;
    else
      state <= nextstate;
  end
  
  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      CLR_CRC <= 0;
      RST_ROM <= 0;
      TX_ACK <= 0;
      hold <= 0;
      hold1 <= 0;
      hold2 <= 0;
    end
    else begin
      CLR_CRC <= 0; // default
      RST_ROM <= 0; // default
      TX_ACK <= 0; // default
      hold <= 0; // default
      hold1 <= 0; // default
      hold2 <= 0; // default
      case (nextstate)
        Preamble: begin
                         CLR_CRC <= 1;
                         hold <= 1;
                         hold1 <= hold;
                         hold2 <= hold1;
        end
        Rst_ROM :        RST_ROM <= 1;
        SOF     :        CLR_CRC <= 1;
        SOP     :        CLR_CRC <= 1;
        TX_Ack  :        TX_ACK <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [63:0] statename;
  always @* begin
    case (state)
      Idle    : statename = "Idle";
      CRC_EOP : statename = "CRC_EOP";
      Data    : statename = "Data";
      Preamble: statename = "Preamble";
      Rst_ROM : statename = "Rst_ROM";
      SOF     : statename = "SOF";
      SOP     : statename = "SOP";
      TX_Ack  : statename = "TX_Ack";
      default : statename = "XXXXXXXX";
    endcase
  end
  `endif

endmodule

