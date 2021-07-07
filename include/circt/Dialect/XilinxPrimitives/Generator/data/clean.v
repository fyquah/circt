
module AND2B1L #(
  parameter [0:0] IS_SRI_INVERTED = 1'b0
)(
  output O,
  
  input DI,
  input SRI
);
endmodule


module AUTOBUF (O, I);
    parameter BUFFER_TYPE = "AUTO";
    parameter LOC = "UNPLACED";
    output O;
    input  I;
endmodule


module BIBUF
(
  inout IO,
  inout PAD
);
endmodule


module BITSLICE_CONTROL #(
  parameter CTRL_CLK = "EXTERNAL",
  parameter DIV_MODE = "DIV2",
  parameter EN_CLK_TO_EXT_NORTH = "DISABLE",
  parameter EN_CLK_TO_EXT_SOUTH = "DISABLE",
  parameter EN_DYN_ODLY_MODE = "FALSE",
  parameter EN_OTHER_NCLK = "FALSE",
  parameter EN_OTHER_PCLK = "FALSE",
  parameter IDLY_VT_TRACK = "TRUE",
  parameter INV_RXCLK = "FALSE",
  parameter ODLY_VT_TRACK = "TRUE",
  parameter QDLY_VT_TRACK = "TRUE",
  parameter [5:0] READ_IDLE_COUNT = 6'h00,
  parameter REFCLK_SRC = "PLLCLK",
  parameter integer ROUNDING_FACTOR = 16,
  parameter RXGATE_EXTEND = "FALSE",
  parameter RX_CLK_PHASE_N = "SHIFT_0",
  parameter RX_CLK_PHASE_P = "SHIFT_0",
  parameter RX_GATING = "DISABLE",
  parameter SELF_CALIBRATE = "ENABLE",
  parameter SERIAL_MODE = "FALSE",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter SIM_SPEEDUP = "FAST",
  parameter real SIM_VERSION = 2.0,
  parameter TX_GATING = "DISABLE"
)(
  output CLK_TO_EXT_NORTH,
  output CLK_TO_EXT_SOUTH,
  output DLY_RDY,
  output [6:0] DYN_DCI,
  output NCLK_NIBBLE_OUT,
  output PCLK_NIBBLE_OUT,
  output [15:0] RIU_RD_DATA,
  output RIU_VALID,
  output [39:0] RX_BIT_CTRL_OUT0,
  output [39:0] RX_BIT_CTRL_OUT1,
  output [39:0] RX_BIT_CTRL_OUT2,
  output [39:0] RX_BIT_CTRL_OUT3,
  output [39:0] RX_BIT_CTRL_OUT4,
  output [39:0] RX_BIT_CTRL_OUT5,
  output [39:0] RX_BIT_CTRL_OUT6,
  output [39:0] TX_BIT_CTRL_OUT0,
  output [39:0] TX_BIT_CTRL_OUT1,
  output [39:0] TX_BIT_CTRL_OUT2,
  output [39:0] TX_BIT_CTRL_OUT3,
  output [39:0] TX_BIT_CTRL_OUT4,
  output [39:0] TX_BIT_CTRL_OUT5,
  output [39:0] TX_BIT_CTRL_OUT6,
  output [39:0] TX_BIT_CTRL_OUT_TRI,
  output VTC_RDY,

  input CLK_FROM_EXT,
  input EN_VTC,
  input NCLK_NIBBLE_IN,
  input PCLK_NIBBLE_IN,
  input [3:0] PHY_RDCS0,
  input [3:0] PHY_RDCS1,
  input [3:0] PHY_RDEN,
  input [3:0] PHY_WRCS0,
  input [3:0] PHY_WRCS1,
  input PLL_CLK,
  input REFCLK,
  input [5:0] RIU_ADDR,
  input RIU_CLK,
  input RIU_NIBBLE_SEL,
  input [15:0] RIU_WR_DATA,
  input RIU_WR_EN,
  input RST,
  input [39:0] RX_BIT_CTRL_IN0,
  input [39:0] RX_BIT_CTRL_IN1,
  input [39:0] RX_BIT_CTRL_IN2,
  input [39:0] RX_BIT_CTRL_IN3,
  input [39:0] RX_BIT_CTRL_IN4,
  input [39:0] RX_BIT_CTRL_IN5,
  input [39:0] RX_BIT_CTRL_IN6,
  input [3:0] TBYTE_IN,
  input [39:0] TX_BIT_CTRL_IN0,
  input [39:0] TX_BIT_CTRL_IN1,
  input [39:0] TX_BIT_CTRL_IN2,
  input [39:0] TX_BIT_CTRL_IN3,
  input [39:0] TX_BIT_CTRL_IN4,
  input [39:0] TX_BIT_CTRL_IN5,
  input [39:0] TX_BIT_CTRL_IN6,
  input [39:0] TX_BIT_CTRL_IN_TRI
);
endmodule


module BSCANE2 (
  CAPTURE,
  DRCK,
  RESET,
  RUNTEST,
  SEL,
  SHIFT,
  TCK,
  TDI,
  TMS,
  UPDATE,

  TDO
);
  parameter DISABLE_JTAG = "FALSE";
  parameter integer JTAG_CHAIN = 1;
  parameter LOC = "UNPLACED";
  output CAPTURE;
  output DRCK;
  output RESET;
  output RUNTEST;
  output SEL;
  output SHIFT;
  output TCK;
  output TDI;
  output TMS;
  output UPDATE;
  input TDO;
endmodule


module BUF (O, I);
    parameter LOC = "UNPLACED";
    output O;
    input I;
endmodule


module BUFCE_LEAF #(
  parameter CE_TYPE = "SYNC",
  parameter [0:0] IS_CE_INVERTED = 1'b0,
  parameter [0:0] IS_I_INVERTED = 1'b0
)(
  output O,

  input CE,
  input I
);
endmodule


module BUFCE_ROW #(
  parameter CE_TYPE = "SYNC",
  parameter [0:0] IS_CE_INVERTED = 1'b0,
  parameter [0:0] IS_I_INVERTED = 1'b0
)(
  output O,

  input CE,
  input I
);
endmodule


module BUFG
(
  output O,

  input I
);
endmodule


module BUFGCE #(
  parameter CE_TYPE = "SYNC",
  parameter [0:0] IS_CE_INVERTED = 1'b0,
  parameter [0:0] IS_I_INVERTED = 1'b0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter STARTUP_SYNC = "FALSE"
)(
  output O,

  input CE,
  input I
);
endmodule


module BUFGCE_DIV #(
  parameter integer BUFGCE_DIVIDE = 1,
  parameter CE_TYPE = "SYNC",
  parameter HARDSYNC_CLR = "FALSE",
  parameter [0:0] IS_CE_INVERTED = 1'b0,
  parameter [0:0] IS_CLR_INVERTED = 1'b0,
  parameter [0:0] IS_I_INVERTED = 1'b0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter STARTUP_SYNC = "FALSE"
)(
  output O,

  input CE,
  input CLR,
  input I
);
endmodule


module BUFGCTRL #(
  parameter CE_TYPE_CE0 = "SYNC",
  parameter CE_TYPE_CE1 = "SYNC",
  parameter integer INIT_OUT = 0,
  parameter [0:0] IS_CE0_INVERTED = 1'b0,
  parameter [0:0] IS_CE1_INVERTED = 1'b0,
  parameter [0:0] IS_I0_INVERTED = 1'b0,
  parameter [0:0] IS_I1_INVERTED = 1'b0,
  parameter [0:0] IS_IGNORE0_INVERTED = 1'b0,
  parameter [0:0] IS_IGNORE1_INVERTED = 1'b0,
  parameter [0:0] IS_S0_INVERTED = 1'b0,
  parameter [0:0] IS_S1_INVERTED = 1'b0,
  parameter PRESELECT_I0 = "FALSE",
  parameter PRESELECT_I1 = "FALSE",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter STARTUP_SYNC = "FALSE"
)(
  output O,

  input CE0,
  input CE1,
  input I0,
  input I1,
  input IGNORE0,
  input IGNORE1,
  input S0,
  input S1
);
endmodule


module BUFGP (O, I);
    parameter LOC = " UNPLACED";
    output O;
    input  I;
endmodule


module BUFG_GT #(
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter STARTUP_SYNC = "FALSE"
)(
  output O,

  input CE,
  input CEMASK,
  input CLR,
  input CLRMASK,
  input [2:0] DIV,
  input I
);
endmodule


module BUFG_GT_SYNC
(
  output CESYNC,
  output CLRSYNC,

  input CE,
  input CLK,
  input CLR
);
endmodule


module BUFG_PS #(
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter STARTUP_SYNC = "FALSE"
)(
  output O,

  input I
);
endmodule


module BUFH (O, I);
    parameter LOC = " UNPLACED";
    output O;
    input  I;
endmodule


module BUFHCE #(
  parameter CE_TYPE = "SYNC",
  parameter integer INIT_OUT = 0,
  parameter [0:0] IS_CE_INVERTED = 1'b0
)(
  output O,

  input CE,
  input I
);
endmodule


module BUFIO
(
  output O,

  input I
);
endmodule


module BUFMR (
  O,

  I
);
    parameter LOC = "UNPLACED";
  output O;
  input I;
endmodule


module BUFMRCE #(
  parameter CE_TYPE = "SYNC",
  parameter integer INIT_OUT = 0,
  parameter [0:0] IS_CE_INVERTED = 1'b0
)(
  output O,

  input CE,
  input I
);
endmodule


module BUFR (O, CE, CLR, I);
    output O;
    input CE;
    input CLR;
    input I;
    parameter BUFR_DIVIDE = "BYPASS";
    parameter SIM_DEVICE = "7SERIES";
    parameter LOC = "UNPLACED";
endmodule // BUFR


module CAPTUREE2 (
  CAP,
  CLK
);
  parameter ONESHOT = "TRUE";
    parameter LOC = "UNPLACED";
  input CAP;
  input CLK;
endmodule


module CARRY4 
(
  output [3:0] CO,
  output [3:0] O,

  input CI,
  input CYINIT,
  input [3:0] DI,
  input [3:0] S
);
endmodule


module CARRY8 #(
  parameter CARRY_TYPE = "SINGLE_CY8"
)(
  output [7:0] CO,
  output [7:0] O,

  input CI,
  input CI_TOP,
  input [7:0] DI,
  input [7:0] S
);
endmodule


module CFGLUT5 #(
  parameter [31:0] INIT = 32'h00000000,
  parameter [0:0] IS_CLK_INVERTED = 1'b0
)(
  output CDO,
  output O5,
  output O6,
  
  input CDI,
  input CE,
  input CLK,
  input I0,
  input I1,
  input I2,
  input I3,
  input I4
);
endmodule


module CMAC #(
  parameter CTL_PTP_TRANSPCLK_MODE = "FALSE",
  parameter CTL_RX_CHECK_ACK = "TRUE",
  parameter CTL_RX_CHECK_PREAMBLE = "FALSE",
  parameter CTL_RX_CHECK_SFD = "FALSE",
  parameter CTL_RX_DELETE_FCS = "TRUE",
  parameter [15:0] CTL_RX_ETYPE_GCP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_GPP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_PCP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_PPP = 16'h8808,
  parameter CTL_RX_FORWARD_CONTROL = "FALSE",
  parameter CTL_RX_IGNORE_FCS = "FALSE",
  parameter [14:0] CTL_RX_MAX_PACKET_LEN = 15'h2580,
  parameter [7:0] CTL_RX_MIN_PACKET_LEN = 8'h40,
  parameter [15:0] CTL_RX_OPCODE_GPP = 16'h0001,
  parameter [15:0] CTL_RX_OPCODE_MAX_GCP = 16'hFFFF,
  parameter [15:0] CTL_RX_OPCODE_MAX_PCP = 16'hFFFF,
  parameter [15:0] CTL_RX_OPCODE_MIN_GCP = 16'h0000,
  parameter [15:0] CTL_RX_OPCODE_MIN_PCP = 16'h0000,
  parameter [15:0] CTL_RX_OPCODE_PPP = 16'h0001,
  parameter [47:0] CTL_RX_PAUSE_DA_MCAST = 48'h0180C2000001,
  parameter [47:0] CTL_RX_PAUSE_DA_UCAST = 48'h000000000000,
  parameter [47:0] CTL_RX_PAUSE_SA = 48'h000000000000,
  parameter CTL_RX_PROCESS_LFI = "FALSE",
  parameter [15:0] CTL_RX_VL_LENGTH_MINUS1 = 16'h3FFF,
  parameter [63:0] CTL_RX_VL_MARKER_ID0 = 64'hC16821003E97DE00,
  parameter [63:0] CTL_RX_VL_MARKER_ID1 = 64'h9D718E00628E7100,
  parameter [63:0] CTL_RX_VL_MARKER_ID10 = 64'hFD6C990002936600,
  parameter [63:0] CTL_RX_VL_MARKER_ID11 = 64'hB9915500466EAA00,
  parameter [63:0] CTL_RX_VL_MARKER_ID12 = 64'h5CB9B200A3464D00,
  parameter [63:0] CTL_RX_VL_MARKER_ID13 = 64'h1AF8BD00E5074200,
  parameter [63:0] CTL_RX_VL_MARKER_ID14 = 64'h83C7CA007C383500,
  parameter [63:0] CTL_RX_VL_MARKER_ID15 = 64'h3536CD00CAC93200,
  parameter [63:0] CTL_RX_VL_MARKER_ID16 = 64'hC4314C003BCEB300,
  parameter [63:0] CTL_RX_VL_MARKER_ID17 = 64'hADD6B70052294800,
  parameter [63:0] CTL_RX_VL_MARKER_ID18 = 64'h5F662A00A099D500,
  parameter [63:0] CTL_RX_VL_MARKER_ID19 = 64'hC0F0E5003F0F1A00,
  parameter [63:0] CTL_RX_VL_MARKER_ID2 = 64'h594BE800A6B41700,
  parameter [63:0] CTL_RX_VL_MARKER_ID3 = 64'h4D957B00B26A8400,
  parameter [63:0] CTL_RX_VL_MARKER_ID4 = 64'hF50709000AF8F600,
  parameter [63:0] CTL_RX_VL_MARKER_ID5 = 64'hDD14C20022EB3D00,
  parameter [63:0] CTL_RX_VL_MARKER_ID6 = 64'h9A4A260065B5D900,
  parameter [63:0] CTL_RX_VL_MARKER_ID7 = 64'h7B45660084BA9900,
  parameter [63:0] CTL_RX_VL_MARKER_ID8 = 64'hA02476005FDB8900,
  parameter [63:0] CTL_RX_VL_MARKER_ID9 = 64'h68C9FB0097360400,
  parameter CTL_TEST_MODE_PIN_CHAR = "FALSE",
  parameter [47:0] CTL_TX_DA_GPP = 48'h0180C2000001,
  parameter [47:0] CTL_TX_DA_PPP = 48'h0180C2000001,
  parameter [15:0] CTL_TX_ETHERTYPE_GPP = 16'h8808,
  parameter [15:0] CTL_TX_ETHERTYPE_PPP = 16'h8808,
  parameter CTL_TX_FCS_INS_ENABLE = "TRUE",
  parameter CTL_TX_IGNORE_FCS = "FALSE",
  parameter [15:0] CTL_TX_OPCODE_GPP = 16'h0001,
  parameter [15:0] CTL_TX_OPCODE_PPP = 16'h0001,
  parameter CTL_TX_PTP_1STEP_ENABLE = "FALSE",
  parameter [10:0] CTL_TX_PTP_LATENCY_ADJUST = 11'h2C1,
  parameter [47:0] CTL_TX_SA_GPP = 48'h000000000000,
  parameter [47:0] CTL_TX_SA_PPP = 48'h000000000000,
  parameter [15:0] CTL_TX_VL_LENGTH_MINUS1 = 16'h3FFF,
  parameter [63:0] CTL_TX_VL_MARKER_ID0 = 64'hC16821003E97DE00,
  parameter [63:0] CTL_TX_VL_MARKER_ID1 = 64'h9D718E00628E7100,
  parameter [63:0] CTL_TX_VL_MARKER_ID10 = 64'hFD6C990002936600,
  parameter [63:0] CTL_TX_VL_MARKER_ID11 = 64'hB9915500466EAA00,
  parameter [63:0] CTL_TX_VL_MARKER_ID12 = 64'h5CB9B200A3464D00,
  parameter [63:0] CTL_TX_VL_MARKER_ID13 = 64'h1AF8BD00E5074200,
  parameter [63:0] CTL_TX_VL_MARKER_ID14 = 64'h83C7CA007C383500,
  parameter [63:0] CTL_TX_VL_MARKER_ID15 = 64'h3536CD00CAC93200,
  parameter [63:0] CTL_TX_VL_MARKER_ID16 = 64'hC4314C003BCEB300,
  parameter [63:0] CTL_TX_VL_MARKER_ID17 = 64'hADD6B70052294800,
  parameter [63:0] CTL_TX_VL_MARKER_ID18 = 64'h5F662A00A099D500,
  parameter [63:0] CTL_TX_VL_MARKER_ID19 = 64'hC0F0E5003F0F1A00,
  parameter [63:0] CTL_TX_VL_MARKER_ID2 = 64'h594BE800A6B41700,
  parameter [63:0] CTL_TX_VL_MARKER_ID3 = 64'h4D957B00B26A8400,
  parameter [63:0] CTL_TX_VL_MARKER_ID4 = 64'hF50709000AF8F600,
  parameter [63:0] CTL_TX_VL_MARKER_ID5 = 64'hDD14C20022EB3D00,
  parameter [63:0] CTL_TX_VL_MARKER_ID6 = 64'h9A4A260065B5D900,
  parameter [63:0] CTL_TX_VL_MARKER_ID7 = 64'h7B45660084BA9900,
  parameter [63:0] CTL_TX_VL_MARKER_ID8 = 64'hA02476005FDB8900,
  parameter [63:0] CTL_TX_VL_MARKER_ID9 = 64'h68C9FB0097360400,
  parameter SIM_VERSION = "2.0",
  parameter TEST_MODE_PIN_CHAR = "FALSE"
)(
  output [15:0] DRP_DO,
  output DRP_RDY,
  output [127:0] RX_DATAOUT0,
  output [127:0] RX_DATAOUT1,
  output [127:0] RX_DATAOUT2,
  output [127:0] RX_DATAOUT3,
  output RX_ENAOUT0,
  output RX_ENAOUT1,
  output RX_ENAOUT2,
  output RX_ENAOUT3,
  output RX_EOPOUT0,
  output RX_EOPOUT1,
  output RX_EOPOUT2,
  output RX_EOPOUT3,
  output RX_ERROUT0,
  output RX_ERROUT1,
  output RX_ERROUT2,
  output RX_ERROUT3,
  output [6:0] RX_LANE_ALIGNER_FILL_0,
  output [6:0] RX_LANE_ALIGNER_FILL_1,
  output [6:0] RX_LANE_ALIGNER_FILL_10,
  output [6:0] RX_LANE_ALIGNER_FILL_11,
  output [6:0] RX_LANE_ALIGNER_FILL_12,
  output [6:0] RX_LANE_ALIGNER_FILL_13,
  output [6:0] RX_LANE_ALIGNER_FILL_14,
  output [6:0] RX_LANE_ALIGNER_FILL_15,
  output [6:0] RX_LANE_ALIGNER_FILL_16,
  output [6:0] RX_LANE_ALIGNER_FILL_17,
  output [6:0] RX_LANE_ALIGNER_FILL_18,
  output [6:0] RX_LANE_ALIGNER_FILL_19,
  output [6:0] RX_LANE_ALIGNER_FILL_2,
  output [6:0] RX_LANE_ALIGNER_FILL_3,
  output [6:0] RX_LANE_ALIGNER_FILL_4,
  output [6:0] RX_LANE_ALIGNER_FILL_5,
  output [6:0] RX_LANE_ALIGNER_FILL_6,
  output [6:0] RX_LANE_ALIGNER_FILL_7,
  output [6:0] RX_LANE_ALIGNER_FILL_8,
  output [6:0] RX_LANE_ALIGNER_FILL_9,
  output [3:0] RX_MTYOUT0,
  output [3:0] RX_MTYOUT1,
  output [3:0] RX_MTYOUT2,
  output [3:0] RX_MTYOUT3,
  output [4:0] RX_PTP_PCSLANE_OUT,
  output [79:0] RX_PTP_TSTAMP_OUT,
  output RX_SOPOUT0,
  output RX_SOPOUT1,
  output RX_SOPOUT2,
  output RX_SOPOUT3,
  output STAT_RX_ALIGNED,
  output STAT_RX_ALIGNED_ERR,
  output [6:0] STAT_RX_BAD_CODE,
  output [3:0] STAT_RX_BAD_FCS,
  output STAT_RX_BAD_PREAMBLE,
  output STAT_RX_BAD_SFD,
  output STAT_RX_BIP_ERR_0,
  output STAT_RX_BIP_ERR_1,
  output STAT_RX_BIP_ERR_10,
  output STAT_RX_BIP_ERR_11,
  output STAT_RX_BIP_ERR_12,
  output STAT_RX_BIP_ERR_13,
  output STAT_RX_BIP_ERR_14,
  output STAT_RX_BIP_ERR_15,
  output STAT_RX_BIP_ERR_16,
  output STAT_RX_BIP_ERR_17,
  output STAT_RX_BIP_ERR_18,
  output STAT_RX_BIP_ERR_19,
  output STAT_RX_BIP_ERR_2,
  output STAT_RX_BIP_ERR_3,
  output STAT_RX_BIP_ERR_4,
  output STAT_RX_BIP_ERR_5,
  output STAT_RX_BIP_ERR_6,
  output STAT_RX_BIP_ERR_7,
  output STAT_RX_BIP_ERR_8,
  output STAT_RX_BIP_ERR_9,
  output [19:0] STAT_RX_BLOCK_LOCK,
  output STAT_RX_BROADCAST,
  output [3:0] STAT_RX_FRAGMENT,
  output [3:0] STAT_RX_FRAMING_ERR_0,
  output [3:0] STAT_RX_FRAMING_ERR_1,
  output [3:0] STAT_RX_FRAMING_ERR_10,
  output [3:0] STAT_RX_FRAMING_ERR_11,
  output [3:0] STAT_RX_FRAMING_ERR_12,
  output [3:0] STAT_RX_FRAMING_ERR_13,
  output [3:0] STAT_RX_FRAMING_ERR_14,
  output [3:0] STAT_RX_FRAMING_ERR_15,
  output [3:0] STAT_RX_FRAMING_ERR_16,
  output [3:0] STAT_RX_FRAMING_ERR_17,
  output [3:0] STAT_RX_FRAMING_ERR_18,
  output [3:0] STAT_RX_FRAMING_ERR_19,
  output [3:0] STAT_RX_FRAMING_ERR_2,
  output [3:0] STAT_RX_FRAMING_ERR_3,
  output [3:0] STAT_RX_FRAMING_ERR_4,
  output [3:0] STAT_RX_FRAMING_ERR_5,
  output [3:0] STAT_RX_FRAMING_ERR_6,
  output [3:0] STAT_RX_FRAMING_ERR_7,
  output [3:0] STAT_RX_FRAMING_ERR_8,
  output [3:0] STAT_RX_FRAMING_ERR_9,
  output STAT_RX_FRAMING_ERR_VALID_0,
  output STAT_RX_FRAMING_ERR_VALID_1,
  output STAT_RX_FRAMING_ERR_VALID_10,
  output STAT_RX_FRAMING_ERR_VALID_11,
  output STAT_RX_FRAMING_ERR_VALID_12,
  output STAT_RX_FRAMING_ERR_VALID_13,
  output STAT_RX_FRAMING_ERR_VALID_14,
  output STAT_RX_FRAMING_ERR_VALID_15,
  output STAT_RX_FRAMING_ERR_VALID_16,
  output STAT_RX_FRAMING_ERR_VALID_17,
  output STAT_RX_FRAMING_ERR_VALID_18,
  output STAT_RX_FRAMING_ERR_VALID_19,
  output STAT_RX_FRAMING_ERR_VALID_2,
  output STAT_RX_FRAMING_ERR_VALID_3,
  output STAT_RX_FRAMING_ERR_VALID_4,
  output STAT_RX_FRAMING_ERR_VALID_5,
  output STAT_RX_FRAMING_ERR_VALID_6,
  output STAT_RX_FRAMING_ERR_VALID_7,
  output STAT_RX_FRAMING_ERR_VALID_8,
  output STAT_RX_FRAMING_ERR_VALID_9,
  output STAT_RX_GOT_SIGNAL_OS,
  output STAT_RX_HI_BER,
  output STAT_RX_INRANGEERR,
  output STAT_RX_INTERNAL_LOCAL_FAULT,
  output STAT_RX_JABBER,
  output [7:0] STAT_RX_LANE0_VLM_BIP7,
  output STAT_RX_LANE0_VLM_BIP7_VALID,
  output STAT_RX_LOCAL_FAULT,
  output [19:0] STAT_RX_MF_ERR,
  output [19:0] STAT_RX_MF_LEN_ERR,
  output [19:0] STAT_RX_MF_REPEAT_ERR,
  output STAT_RX_MISALIGNED,
  output STAT_RX_MULTICAST,
  output STAT_RX_OVERSIZE,
  output STAT_RX_PACKET_1024_1518_BYTES,
  output STAT_RX_PACKET_128_255_BYTES,
  output STAT_RX_PACKET_1519_1522_BYTES,
  output STAT_RX_PACKET_1523_1548_BYTES,
  output STAT_RX_PACKET_1549_2047_BYTES,
  output STAT_RX_PACKET_2048_4095_BYTES,
  output STAT_RX_PACKET_256_511_BYTES,
  output STAT_RX_PACKET_4096_8191_BYTES,
  output STAT_RX_PACKET_512_1023_BYTES,
  output STAT_RX_PACKET_64_BYTES,
  output STAT_RX_PACKET_65_127_BYTES,
  output STAT_RX_PACKET_8192_9215_BYTES,
  output STAT_RX_PACKET_BAD_FCS,
  output STAT_RX_PACKET_LARGE,
  output [3:0] STAT_RX_PACKET_SMALL,
  output STAT_RX_PAUSE,
  output [15:0] STAT_RX_PAUSE_QUANTA0,
  output [15:0] STAT_RX_PAUSE_QUANTA1,
  output [15:0] STAT_RX_PAUSE_QUANTA2,
  output [15:0] STAT_RX_PAUSE_QUANTA3,
  output [15:0] STAT_RX_PAUSE_QUANTA4,
  output [15:0] STAT_RX_PAUSE_QUANTA5,
  output [15:0] STAT_RX_PAUSE_QUANTA6,
  output [15:0] STAT_RX_PAUSE_QUANTA7,
  output [15:0] STAT_RX_PAUSE_QUANTA8,
  output [8:0] STAT_RX_PAUSE_REQ,
  output [8:0] STAT_RX_PAUSE_VALID,
  output STAT_RX_RECEIVED_LOCAL_FAULT,
  output STAT_RX_REMOTE_FAULT,
  output STAT_RX_STATUS,
  output [3:0] STAT_RX_STOMPED_FCS,
  output [19:0] STAT_RX_SYNCED,
  output [19:0] STAT_RX_SYNCED_ERR,
  output [2:0] STAT_RX_TEST_PATTERN_MISMATCH,
  output STAT_RX_TOOLONG,
  output [7:0] STAT_RX_TOTAL_BYTES,
  output [13:0] STAT_RX_TOTAL_GOOD_BYTES,
  output STAT_RX_TOTAL_GOOD_PACKETS,
  output [3:0] STAT_RX_TOTAL_PACKETS,
  output STAT_RX_TRUNCATED,
  output [3:0] STAT_RX_UNDERSIZE,
  output STAT_RX_UNICAST,
  output STAT_RX_USER_PAUSE,
  output STAT_RX_VLAN,
  output [19:0] STAT_RX_VL_DEMUXED,
  output [4:0] STAT_RX_VL_NUMBER_0,
  output [4:0] STAT_RX_VL_NUMBER_1,
  output [4:0] STAT_RX_VL_NUMBER_10,
  output [4:0] STAT_RX_VL_NUMBER_11,
  output [4:0] STAT_RX_VL_NUMBER_12,
  output [4:0] STAT_RX_VL_NUMBER_13,
  output [4:0] STAT_RX_VL_NUMBER_14,
  output [4:0] STAT_RX_VL_NUMBER_15,
  output [4:0] STAT_RX_VL_NUMBER_16,
  output [4:0] STAT_RX_VL_NUMBER_17,
  output [4:0] STAT_RX_VL_NUMBER_18,
  output [4:0] STAT_RX_VL_NUMBER_19,
  output [4:0] STAT_RX_VL_NUMBER_2,
  output [4:0] STAT_RX_VL_NUMBER_3,
  output [4:0] STAT_RX_VL_NUMBER_4,
  output [4:0] STAT_RX_VL_NUMBER_5,
  output [4:0] STAT_RX_VL_NUMBER_6,
  output [4:0] STAT_RX_VL_NUMBER_7,
  output [4:0] STAT_RX_VL_NUMBER_8,
  output [4:0] STAT_RX_VL_NUMBER_9,
  output STAT_TX_BAD_FCS,
  output STAT_TX_BROADCAST,
  output STAT_TX_FRAME_ERROR,
  output STAT_TX_LOCAL_FAULT,
  output STAT_TX_MULTICAST,
  output STAT_TX_PACKET_1024_1518_BYTES,
  output STAT_TX_PACKET_128_255_BYTES,
  output STAT_TX_PACKET_1519_1522_BYTES,
  output STAT_TX_PACKET_1523_1548_BYTES,
  output STAT_TX_PACKET_1549_2047_BYTES,
  output STAT_TX_PACKET_2048_4095_BYTES,
  output STAT_TX_PACKET_256_511_BYTES,
  output STAT_TX_PACKET_4096_8191_BYTES,
  output STAT_TX_PACKET_512_1023_BYTES,
  output STAT_TX_PACKET_64_BYTES,
  output STAT_TX_PACKET_65_127_BYTES,
  output STAT_TX_PACKET_8192_9215_BYTES,
  output STAT_TX_PACKET_LARGE,
  output STAT_TX_PACKET_SMALL,
  output STAT_TX_PAUSE,
  output [8:0] STAT_TX_PAUSE_VALID,
  output STAT_TX_PTP_FIFO_READ_ERROR,
  output STAT_TX_PTP_FIFO_WRITE_ERROR,
  output [6:0] STAT_TX_TOTAL_BYTES,
  output [13:0] STAT_TX_TOTAL_GOOD_BYTES,
  output STAT_TX_TOTAL_GOOD_PACKETS,
  output STAT_TX_TOTAL_PACKETS,
  output STAT_TX_UNICAST,
  output STAT_TX_USER_PAUSE,
  output STAT_TX_VLAN,
  output TX_OVFOUT,
  output [4:0] TX_PTP_PCSLANE_OUT,
  output [79:0] TX_PTP_TSTAMP_OUT,
  output [15:0] TX_PTP_TSTAMP_TAG_OUT,
  output TX_PTP_TSTAMP_VALID_OUT,
  output TX_RDYOUT,
  output [15:0] TX_SERDES_ALT_DATA0,
  output [15:0] TX_SERDES_ALT_DATA1,
  output [15:0] TX_SERDES_ALT_DATA2,
  output [15:0] TX_SERDES_ALT_DATA3,
  output [63:0] TX_SERDES_DATA0,
  output [63:0] TX_SERDES_DATA1,
  output [63:0] TX_SERDES_DATA2,
  output [63:0] TX_SERDES_DATA3,
  output [31:0] TX_SERDES_DATA4,
  output [31:0] TX_SERDES_DATA5,
  output [31:0] TX_SERDES_DATA6,
  output [31:0] TX_SERDES_DATA7,
  output [31:0] TX_SERDES_DATA8,
  output [31:0] TX_SERDES_DATA9,
  output TX_UNFOUT,

  input CTL_CAUI4_MODE,
  input CTL_RX_CHECK_ETYPE_GCP,
  input CTL_RX_CHECK_ETYPE_GPP,
  input CTL_RX_CHECK_ETYPE_PCP,
  input CTL_RX_CHECK_ETYPE_PPP,
  input CTL_RX_CHECK_MCAST_GCP,
  input CTL_RX_CHECK_MCAST_GPP,
  input CTL_RX_CHECK_MCAST_PCP,
  input CTL_RX_CHECK_MCAST_PPP,
  input CTL_RX_CHECK_OPCODE_GCP,
  input CTL_RX_CHECK_OPCODE_GPP,
  input CTL_RX_CHECK_OPCODE_PCP,
  input CTL_RX_CHECK_OPCODE_PPP,
  input CTL_RX_CHECK_SA_GCP,
  input CTL_RX_CHECK_SA_GPP,
  input CTL_RX_CHECK_SA_PCP,
  input CTL_RX_CHECK_SA_PPP,
  input CTL_RX_CHECK_UCAST_GCP,
  input CTL_RX_CHECK_UCAST_GPP,
  input CTL_RX_CHECK_UCAST_PCP,
  input CTL_RX_CHECK_UCAST_PPP,
  input CTL_RX_ENABLE,
  input CTL_RX_ENABLE_GCP,
  input CTL_RX_ENABLE_GPP,
  input CTL_RX_ENABLE_PCP,
  input CTL_RX_ENABLE_PPP,
  input CTL_RX_FORCE_RESYNC,
  input [8:0] CTL_RX_PAUSE_ACK,
  input [8:0] CTL_RX_PAUSE_ENABLE,
  input [79:0] CTL_RX_SYSTEMTIMERIN,
  input CTL_RX_TEST_PATTERN,
  input CTL_TX_ENABLE,
  input CTL_TX_LANE0_VLM_BIP7_OVERRIDE,
  input [7:0] CTL_TX_LANE0_VLM_BIP7_OVERRIDE_VALUE,
  input [8:0] CTL_TX_PAUSE_ENABLE,
  input [15:0] CTL_TX_PAUSE_QUANTA0,
  input [15:0] CTL_TX_PAUSE_QUANTA1,
  input [15:0] CTL_TX_PAUSE_QUANTA2,
  input [15:0] CTL_TX_PAUSE_QUANTA3,
  input [15:0] CTL_TX_PAUSE_QUANTA4,
  input [15:0] CTL_TX_PAUSE_QUANTA5,
  input [15:0] CTL_TX_PAUSE_QUANTA6,
  input [15:0] CTL_TX_PAUSE_QUANTA7,
  input [15:0] CTL_TX_PAUSE_QUANTA8,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER0,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER1,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER2,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER3,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER4,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER5,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER6,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER7,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER8,
  input [8:0] CTL_TX_PAUSE_REQ,
  input CTL_TX_PTP_VLANE_ADJUST_MODE,
  input CTL_TX_RESEND_PAUSE,
  input CTL_TX_SEND_IDLE,
  input CTL_TX_SEND_RFI,
  input [79:0] CTL_TX_SYSTEMTIMERIN,
  input CTL_TX_TEST_PATTERN,
  input [9:0] DRP_ADDR,
  input DRP_CLK,
  input [15:0] DRP_DI,
  input DRP_EN,
  input DRP_WE,
  input RX_CLK,
  input RX_RESET,
  input [15:0] RX_SERDES_ALT_DATA0,
  input [15:0] RX_SERDES_ALT_DATA1,
  input [15:0] RX_SERDES_ALT_DATA2,
  input [15:0] RX_SERDES_ALT_DATA3,
  input [9:0] RX_SERDES_CLK,
  input [63:0] RX_SERDES_DATA0,
  input [63:0] RX_SERDES_DATA1,
  input [63:0] RX_SERDES_DATA2,
  input [63:0] RX_SERDES_DATA3,
  input [31:0] RX_SERDES_DATA4,
  input [31:0] RX_SERDES_DATA5,
  input [31:0] RX_SERDES_DATA6,
  input [31:0] RX_SERDES_DATA7,
  input [31:0] RX_SERDES_DATA8,
  input [31:0] RX_SERDES_DATA9,
  input [9:0] RX_SERDES_RESET,
  input TX_CLK,
  input [127:0] TX_DATAIN0,
  input [127:0] TX_DATAIN1,
  input [127:0] TX_DATAIN2,
  input [127:0] TX_DATAIN3,
  input TX_ENAIN0,
  input TX_ENAIN1,
  input TX_ENAIN2,
  input TX_ENAIN3,
  input TX_EOPIN0,
  input TX_EOPIN1,
  input TX_EOPIN2,
  input TX_EOPIN3,
  input TX_ERRIN0,
  input TX_ERRIN1,
  input TX_ERRIN2,
  input TX_ERRIN3,
  input [3:0] TX_MTYIN0,
  input [3:0] TX_MTYIN1,
  input [3:0] TX_MTYIN2,
  input [3:0] TX_MTYIN3,
  input [1:0] TX_PTP_1588OP_IN,
  input [15:0] TX_PTP_CHKSUM_OFFSET_IN,
  input [63:0] TX_PTP_RXTSTAMP_IN,
  input [15:0] TX_PTP_TAG_FIELD_IN,
  input [15:0] TX_PTP_TSTAMP_OFFSET_IN,
  input TX_PTP_UPD_CHKSUM_IN,
  input TX_RESET,
  input TX_SOPIN0,
  input TX_SOPIN1,
  input TX_SOPIN2,
  input TX_SOPIN3
);
endmodule


module CMACE4 #(
  parameter CTL_PTP_TRANSPCLK_MODE = "FALSE",
  parameter CTL_RX_CHECK_ACK = "TRUE",
  parameter CTL_RX_CHECK_PREAMBLE = "FALSE",
  parameter CTL_RX_CHECK_SFD = "FALSE",
  parameter CTL_RX_DELETE_FCS = "TRUE",
  parameter [15:0] CTL_RX_ETYPE_GCP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_GPP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_PCP = 16'h8808,
  parameter [15:0] CTL_RX_ETYPE_PPP = 16'h8808,
  parameter CTL_RX_FORWARD_CONTROL = "FALSE",
  parameter CTL_RX_IGNORE_FCS = "FALSE",
  parameter [14:0] CTL_RX_MAX_PACKET_LEN = 15'h2580,
  parameter [7:0] CTL_RX_MIN_PACKET_LEN = 8'h40,
  parameter [15:0] CTL_RX_OPCODE_GPP = 16'h0001,
  parameter [15:0] CTL_RX_OPCODE_MAX_GCP = 16'hFFFF,
  parameter [15:0] CTL_RX_OPCODE_MAX_PCP = 16'hFFFF,
  parameter [15:0] CTL_RX_OPCODE_MIN_GCP = 16'h0000,
  parameter [15:0] CTL_RX_OPCODE_MIN_PCP = 16'h0000,
  parameter [15:0] CTL_RX_OPCODE_PPP = 16'h0001,
  parameter [47:0] CTL_RX_PAUSE_DA_MCAST = 48'h0180C2000001,
  parameter [47:0] CTL_RX_PAUSE_DA_UCAST = 48'h000000000000,
  parameter [47:0] CTL_RX_PAUSE_SA = 48'h000000000000,
  parameter CTL_RX_PROCESS_LFI = "FALSE",
  parameter [8:0] CTL_RX_RSFEC_AM_THRESHOLD = 9'h046,
  parameter [1:0] CTL_RX_RSFEC_FILL_ADJUST = 2'h0,
  parameter [15:0] CTL_RX_VL_LENGTH_MINUS1 = 16'h3FFF,
  parameter [63:0] CTL_RX_VL_MARKER_ID0 = 64'hC16821003E97DE00,
  parameter [63:0] CTL_RX_VL_MARKER_ID1 = 64'h9D718E00628E7100,
  parameter [63:0] CTL_RX_VL_MARKER_ID10 = 64'hFD6C990002936600,
  parameter [63:0] CTL_RX_VL_MARKER_ID11 = 64'hB9915500466EAA00,
  parameter [63:0] CTL_RX_VL_MARKER_ID12 = 64'h5CB9B200A3464D00,
  parameter [63:0] CTL_RX_VL_MARKER_ID13 = 64'h1AF8BD00E5074200,
  parameter [63:0] CTL_RX_VL_MARKER_ID14 = 64'h83C7CA007C383500,
  parameter [63:0] CTL_RX_VL_MARKER_ID15 = 64'h3536CD00CAC93200,
  parameter [63:0] CTL_RX_VL_MARKER_ID16 = 64'hC4314C003BCEB300,
  parameter [63:0] CTL_RX_VL_MARKER_ID17 = 64'hADD6B70052294800,
  parameter [63:0] CTL_RX_VL_MARKER_ID18 = 64'h5F662A00A099D500,
  parameter [63:0] CTL_RX_VL_MARKER_ID19 = 64'hC0F0E5003F0F1A00,
  parameter [63:0] CTL_RX_VL_MARKER_ID2 = 64'h594BE800A6B41700,
  parameter [63:0] CTL_RX_VL_MARKER_ID3 = 64'h4D957B00B26A8400,
  parameter [63:0] CTL_RX_VL_MARKER_ID4 = 64'hF50709000AF8F600,
  parameter [63:0] CTL_RX_VL_MARKER_ID5 = 64'hDD14C20022EB3D00,
  parameter [63:0] CTL_RX_VL_MARKER_ID6 = 64'h9A4A260065B5D900,
  parameter [63:0] CTL_RX_VL_MARKER_ID7 = 64'h7B45660084BA9900,
  parameter [63:0] CTL_RX_VL_MARKER_ID8 = 64'hA02476005FDB8900,
  parameter [63:0] CTL_RX_VL_MARKER_ID9 = 64'h68C9FB0097360400,
  parameter CTL_TEST_MODE_PIN_CHAR = "FALSE",
  parameter CTL_TX_CUSTOM_PREAMBLE_ENABLE = "FALSE",
  parameter [47:0] CTL_TX_DA_GPP = 48'h0180C2000001,
  parameter [47:0] CTL_TX_DA_PPP = 48'h0180C2000001,
  parameter [15:0] CTL_TX_ETHERTYPE_GPP = 16'h8808,
  parameter [15:0] CTL_TX_ETHERTYPE_PPP = 16'h8808,
  parameter CTL_TX_FCS_INS_ENABLE = "TRUE",
  parameter CTL_TX_IGNORE_FCS = "FALSE",
  parameter [3:0] CTL_TX_IPG_VALUE = 4'hC,
  parameter [15:0] CTL_TX_OPCODE_GPP = 16'h0001,
  parameter [15:0] CTL_TX_OPCODE_PPP = 16'h0001,
  parameter CTL_TX_PTP_1STEP_ENABLE = "FALSE",
  parameter [10:0] CTL_TX_PTP_LATENCY_ADJUST = 11'h2C1,
  parameter [47:0] CTL_TX_SA_GPP = 48'h000000000000,
  parameter [47:0] CTL_TX_SA_PPP = 48'h000000000000,
  parameter [15:0] CTL_TX_VL_LENGTH_MINUS1 = 16'h3FFF,
  parameter [63:0] CTL_TX_VL_MARKER_ID0 = 64'hC16821003E97DE00,
  parameter [63:0] CTL_TX_VL_MARKER_ID1 = 64'h9D718E00628E7100,
  parameter [63:0] CTL_TX_VL_MARKER_ID10 = 64'hFD6C990002936600,
  parameter [63:0] CTL_TX_VL_MARKER_ID11 = 64'hB9915500466EAA00,
  parameter [63:0] CTL_TX_VL_MARKER_ID12 = 64'h5CB9B200A3464D00,
  parameter [63:0] CTL_TX_VL_MARKER_ID13 = 64'h1AF8BD00E5074200,
  parameter [63:0] CTL_TX_VL_MARKER_ID14 = 64'h83C7CA007C383500,
  parameter [63:0] CTL_TX_VL_MARKER_ID15 = 64'h3536CD00CAC93200,
  parameter [63:0] CTL_TX_VL_MARKER_ID16 = 64'hC4314C003BCEB300,
  parameter [63:0] CTL_TX_VL_MARKER_ID17 = 64'hADD6B70052294800,
  parameter [63:0] CTL_TX_VL_MARKER_ID18 = 64'h5F662A00A099D500,
  parameter [63:0] CTL_TX_VL_MARKER_ID19 = 64'hC0F0E5003F0F1A00,
  parameter [63:0] CTL_TX_VL_MARKER_ID2 = 64'h594BE800A6B41700,
  parameter [63:0] CTL_TX_VL_MARKER_ID3 = 64'h4D957B00B26A8400,
  parameter [63:0] CTL_TX_VL_MARKER_ID4 = 64'hF50709000AF8F600,
  parameter [63:0] CTL_TX_VL_MARKER_ID5 = 64'hDD14C20022EB3D00,
  parameter [63:0] CTL_TX_VL_MARKER_ID6 = 64'h9A4A260065B5D900,
  parameter [63:0] CTL_TX_VL_MARKER_ID7 = 64'h7B45660084BA9900,
  parameter [63:0] CTL_TX_VL_MARKER_ID8 = 64'hA02476005FDB8900,
  parameter [63:0] CTL_TX_VL_MARKER_ID9 = 64'h68C9FB0097360400,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter TEST_MODE_PIN_CHAR = "FALSE"
)(
  output [15:0] DRP_DO,
  output DRP_RDY,
  output [329:0] RSFEC_BYPASS_RX_DOUT,
  output RSFEC_BYPASS_RX_DOUT_CW_START,
  output RSFEC_BYPASS_RX_DOUT_VALID,
  output [329:0] RSFEC_BYPASS_TX_DOUT,
  output RSFEC_BYPASS_TX_DOUT_CW_START,
  output RSFEC_BYPASS_TX_DOUT_VALID,
  output [127:0] RX_DATAOUT0,
  output [127:0] RX_DATAOUT1,
  output [127:0] RX_DATAOUT2,
  output [127:0] RX_DATAOUT3,
  output RX_ENAOUT0,
  output RX_ENAOUT1,
  output RX_ENAOUT2,
  output RX_ENAOUT3,
  output RX_EOPOUT0,
  output RX_EOPOUT1,
  output RX_EOPOUT2,
  output RX_EOPOUT3,
  output RX_ERROUT0,
  output RX_ERROUT1,
  output RX_ERROUT2,
  output RX_ERROUT3,
  output [6:0] RX_LANE_ALIGNER_FILL_0,
  output [6:0] RX_LANE_ALIGNER_FILL_1,
  output [6:0] RX_LANE_ALIGNER_FILL_10,
  output [6:0] RX_LANE_ALIGNER_FILL_11,
  output [6:0] RX_LANE_ALIGNER_FILL_12,
  output [6:0] RX_LANE_ALIGNER_FILL_13,
  output [6:0] RX_LANE_ALIGNER_FILL_14,
  output [6:0] RX_LANE_ALIGNER_FILL_15,
  output [6:0] RX_LANE_ALIGNER_FILL_16,
  output [6:0] RX_LANE_ALIGNER_FILL_17,
  output [6:0] RX_LANE_ALIGNER_FILL_18,
  output [6:0] RX_LANE_ALIGNER_FILL_19,
  output [6:0] RX_LANE_ALIGNER_FILL_2,
  output [6:0] RX_LANE_ALIGNER_FILL_3,
  output [6:0] RX_LANE_ALIGNER_FILL_4,
  output [6:0] RX_LANE_ALIGNER_FILL_5,
  output [6:0] RX_LANE_ALIGNER_FILL_6,
  output [6:0] RX_LANE_ALIGNER_FILL_7,
  output [6:0] RX_LANE_ALIGNER_FILL_8,
  output [6:0] RX_LANE_ALIGNER_FILL_9,
  output [3:0] RX_MTYOUT0,
  output [3:0] RX_MTYOUT1,
  output [3:0] RX_MTYOUT2,
  output [3:0] RX_MTYOUT3,
  output [7:0] RX_OTN_BIP8_0,
  output [7:0] RX_OTN_BIP8_1,
  output [7:0] RX_OTN_BIP8_2,
  output [7:0] RX_OTN_BIP8_3,
  output [7:0] RX_OTN_BIP8_4,
  output [65:0] RX_OTN_DATA_0,
  output [65:0] RX_OTN_DATA_1,
  output [65:0] RX_OTN_DATA_2,
  output [65:0] RX_OTN_DATA_3,
  output [65:0] RX_OTN_DATA_4,
  output RX_OTN_ENA,
  output RX_OTN_LANE0,
  output RX_OTN_VLMARKER,
  output [55:0] RX_PREOUT,
  output [4:0] RX_PTP_PCSLANE_OUT,
  output [79:0] RX_PTP_TSTAMP_OUT,
  output RX_SOPOUT0,
  output RX_SOPOUT1,
  output RX_SOPOUT2,
  output RX_SOPOUT3,
  output STAT_RX_ALIGNED,
  output STAT_RX_ALIGNED_ERR,
  output [2:0] STAT_RX_BAD_CODE,
  output [2:0] STAT_RX_BAD_FCS,
  output STAT_RX_BAD_PREAMBLE,
  output STAT_RX_BAD_SFD,
  output STAT_RX_BIP_ERR_0,
  output STAT_RX_BIP_ERR_1,
  output STAT_RX_BIP_ERR_10,
  output STAT_RX_BIP_ERR_11,
  output STAT_RX_BIP_ERR_12,
  output STAT_RX_BIP_ERR_13,
  output STAT_RX_BIP_ERR_14,
  output STAT_RX_BIP_ERR_15,
  output STAT_RX_BIP_ERR_16,
  output STAT_RX_BIP_ERR_17,
  output STAT_RX_BIP_ERR_18,
  output STAT_RX_BIP_ERR_19,
  output STAT_RX_BIP_ERR_2,
  output STAT_RX_BIP_ERR_3,
  output STAT_RX_BIP_ERR_4,
  output STAT_RX_BIP_ERR_5,
  output STAT_RX_BIP_ERR_6,
  output STAT_RX_BIP_ERR_7,
  output STAT_RX_BIP_ERR_8,
  output STAT_RX_BIP_ERR_9,
  output [19:0] STAT_RX_BLOCK_LOCK,
  output STAT_RX_BROADCAST,
  output [2:0] STAT_RX_FRAGMENT,
  output [1:0] STAT_RX_FRAMING_ERR_0,
  output [1:0] STAT_RX_FRAMING_ERR_1,
  output [1:0] STAT_RX_FRAMING_ERR_10,
  output [1:0] STAT_RX_FRAMING_ERR_11,
  output [1:0] STAT_RX_FRAMING_ERR_12,
  output [1:0] STAT_RX_FRAMING_ERR_13,
  output [1:0] STAT_RX_FRAMING_ERR_14,
  output [1:0] STAT_RX_FRAMING_ERR_15,
  output [1:0] STAT_RX_FRAMING_ERR_16,
  output [1:0] STAT_RX_FRAMING_ERR_17,
  output [1:0] STAT_RX_FRAMING_ERR_18,
  output [1:0] STAT_RX_FRAMING_ERR_19,
  output [1:0] STAT_RX_FRAMING_ERR_2,
  output [1:0] STAT_RX_FRAMING_ERR_3,
  output [1:0] STAT_RX_FRAMING_ERR_4,
  output [1:0] STAT_RX_FRAMING_ERR_5,
  output [1:0] STAT_RX_FRAMING_ERR_6,
  output [1:0] STAT_RX_FRAMING_ERR_7,
  output [1:0] STAT_RX_FRAMING_ERR_8,
  output [1:0] STAT_RX_FRAMING_ERR_9,
  output STAT_RX_FRAMING_ERR_VALID_0,
  output STAT_RX_FRAMING_ERR_VALID_1,
  output STAT_RX_FRAMING_ERR_VALID_10,
  output STAT_RX_FRAMING_ERR_VALID_11,
  output STAT_RX_FRAMING_ERR_VALID_12,
  output STAT_RX_FRAMING_ERR_VALID_13,
  output STAT_RX_FRAMING_ERR_VALID_14,
  output STAT_RX_FRAMING_ERR_VALID_15,
  output STAT_RX_FRAMING_ERR_VALID_16,
  output STAT_RX_FRAMING_ERR_VALID_17,
  output STAT_RX_FRAMING_ERR_VALID_18,
  output STAT_RX_FRAMING_ERR_VALID_19,
  output STAT_RX_FRAMING_ERR_VALID_2,
  output STAT_RX_FRAMING_ERR_VALID_3,
  output STAT_RX_FRAMING_ERR_VALID_4,
  output STAT_RX_FRAMING_ERR_VALID_5,
  output STAT_RX_FRAMING_ERR_VALID_6,
  output STAT_RX_FRAMING_ERR_VALID_7,
  output STAT_RX_FRAMING_ERR_VALID_8,
  output STAT_RX_FRAMING_ERR_VALID_9,
  output STAT_RX_GOT_SIGNAL_OS,
  output STAT_RX_HI_BER,
  output STAT_RX_INRANGEERR,
  output STAT_RX_INTERNAL_LOCAL_FAULT,
  output STAT_RX_JABBER,
  output [7:0] STAT_RX_LANE0_VLM_BIP7,
  output STAT_RX_LANE0_VLM_BIP7_VALID,
  output STAT_RX_LOCAL_FAULT,
  output [19:0] STAT_RX_MF_ERR,
  output [19:0] STAT_RX_MF_LEN_ERR,
  output [19:0] STAT_RX_MF_REPEAT_ERR,
  output STAT_RX_MISALIGNED,
  output STAT_RX_MULTICAST,
  output STAT_RX_OVERSIZE,
  output STAT_RX_PACKET_1024_1518_BYTES,
  output STAT_RX_PACKET_128_255_BYTES,
  output STAT_RX_PACKET_1519_1522_BYTES,
  output STAT_RX_PACKET_1523_1548_BYTES,
  output STAT_RX_PACKET_1549_2047_BYTES,
  output STAT_RX_PACKET_2048_4095_BYTES,
  output STAT_RX_PACKET_256_511_BYTES,
  output STAT_RX_PACKET_4096_8191_BYTES,
  output STAT_RX_PACKET_512_1023_BYTES,
  output STAT_RX_PACKET_64_BYTES,
  output STAT_RX_PACKET_65_127_BYTES,
  output STAT_RX_PACKET_8192_9215_BYTES,
  output STAT_RX_PACKET_BAD_FCS,
  output STAT_RX_PACKET_LARGE,
  output [2:0] STAT_RX_PACKET_SMALL,
  output STAT_RX_PAUSE,
  output [15:0] STAT_RX_PAUSE_QUANTA0,
  output [15:0] STAT_RX_PAUSE_QUANTA1,
  output [15:0] STAT_RX_PAUSE_QUANTA2,
  output [15:0] STAT_RX_PAUSE_QUANTA3,
  output [15:0] STAT_RX_PAUSE_QUANTA4,
  output [15:0] STAT_RX_PAUSE_QUANTA5,
  output [15:0] STAT_RX_PAUSE_QUANTA6,
  output [15:0] STAT_RX_PAUSE_QUANTA7,
  output [15:0] STAT_RX_PAUSE_QUANTA8,
  output [8:0] STAT_RX_PAUSE_REQ,
  output [8:0] STAT_RX_PAUSE_VALID,
  output STAT_RX_RECEIVED_LOCAL_FAULT,
  output STAT_RX_REMOTE_FAULT,
  output STAT_RX_RSFEC_AM_LOCK0,
  output STAT_RX_RSFEC_AM_LOCK1,
  output STAT_RX_RSFEC_AM_LOCK2,
  output STAT_RX_RSFEC_AM_LOCK3,
  output STAT_RX_RSFEC_CORRECTED_CW_INC,
  output STAT_RX_RSFEC_CW_INC,
  output [2:0] STAT_RX_RSFEC_ERR_COUNT0_INC,
  output [2:0] STAT_RX_RSFEC_ERR_COUNT1_INC,
  output [2:0] STAT_RX_RSFEC_ERR_COUNT2_INC,
  output [2:0] STAT_RX_RSFEC_ERR_COUNT3_INC,
  output STAT_RX_RSFEC_HI_SER,
  output STAT_RX_RSFEC_LANE_ALIGNMENT_STATUS,
  output [13:0] STAT_RX_RSFEC_LANE_FILL_0,
  output [13:0] STAT_RX_RSFEC_LANE_FILL_1,
  output [13:0] STAT_RX_RSFEC_LANE_FILL_2,
  output [13:0] STAT_RX_RSFEC_LANE_FILL_3,
  output [7:0] STAT_RX_RSFEC_LANE_MAPPING,
  output [31:0] STAT_RX_RSFEC_RSVD,
  output STAT_RX_RSFEC_UNCORRECTED_CW_INC,
  output STAT_RX_STATUS,
  output [2:0] STAT_RX_STOMPED_FCS,
  output [19:0] STAT_RX_SYNCED,
  output [19:0] STAT_RX_SYNCED_ERR,
  output [2:0] STAT_RX_TEST_PATTERN_MISMATCH,
  output STAT_RX_TOOLONG,
  output [6:0] STAT_RX_TOTAL_BYTES,
  output [13:0] STAT_RX_TOTAL_GOOD_BYTES,
  output STAT_RX_TOTAL_GOOD_PACKETS,
  output [2:0] STAT_RX_TOTAL_PACKETS,
  output STAT_RX_TRUNCATED,
  output [2:0] STAT_RX_UNDERSIZE,
  output STAT_RX_UNICAST,
  output STAT_RX_USER_PAUSE,
  output STAT_RX_VLAN,
  output [19:0] STAT_RX_VL_DEMUXED,
  output [4:0] STAT_RX_VL_NUMBER_0,
  output [4:0] STAT_RX_VL_NUMBER_1,
  output [4:0] STAT_RX_VL_NUMBER_10,
  output [4:0] STAT_RX_VL_NUMBER_11,
  output [4:0] STAT_RX_VL_NUMBER_12,
  output [4:0] STAT_RX_VL_NUMBER_13,
  output [4:0] STAT_RX_VL_NUMBER_14,
  output [4:0] STAT_RX_VL_NUMBER_15,
  output [4:0] STAT_RX_VL_NUMBER_16,
  output [4:0] STAT_RX_VL_NUMBER_17,
  output [4:0] STAT_RX_VL_NUMBER_18,
  output [4:0] STAT_RX_VL_NUMBER_19,
  output [4:0] STAT_RX_VL_NUMBER_2,
  output [4:0] STAT_RX_VL_NUMBER_3,
  output [4:0] STAT_RX_VL_NUMBER_4,
  output [4:0] STAT_RX_VL_NUMBER_5,
  output [4:0] STAT_RX_VL_NUMBER_6,
  output [4:0] STAT_RX_VL_NUMBER_7,
  output [4:0] STAT_RX_VL_NUMBER_8,
  output [4:0] STAT_RX_VL_NUMBER_9,
  output STAT_TX_BAD_FCS,
  output STAT_TX_BROADCAST,
  output STAT_TX_FRAME_ERROR,
  output STAT_TX_LOCAL_FAULT,
  output STAT_TX_MULTICAST,
  output STAT_TX_PACKET_1024_1518_BYTES,
  output STAT_TX_PACKET_128_255_BYTES,
  output STAT_TX_PACKET_1519_1522_BYTES,
  output STAT_TX_PACKET_1523_1548_BYTES,
  output STAT_TX_PACKET_1549_2047_BYTES,
  output STAT_TX_PACKET_2048_4095_BYTES,
  output STAT_TX_PACKET_256_511_BYTES,
  output STAT_TX_PACKET_4096_8191_BYTES,
  output STAT_TX_PACKET_512_1023_BYTES,
  output STAT_TX_PACKET_64_BYTES,
  output STAT_TX_PACKET_65_127_BYTES,
  output STAT_TX_PACKET_8192_9215_BYTES,
  output STAT_TX_PACKET_LARGE,
  output STAT_TX_PACKET_SMALL,
  output STAT_TX_PAUSE,
  output [8:0] STAT_TX_PAUSE_VALID,
  output STAT_TX_PTP_FIFO_READ_ERROR,
  output STAT_TX_PTP_FIFO_WRITE_ERROR,
  output [5:0] STAT_TX_TOTAL_BYTES,
  output [13:0] STAT_TX_TOTAL_GOOD_BYTES,
  output STAT_TX_TOTAL_GOOD_PACKETS,
  output STAT_TX_TOTAL_PACKETS,
  output STAT_TX_UNICAST,
  output STAT_TX_USER_PAUSE,
  output STAT_TX_VLAN,
  output TX_OVFOUT,
  output [4:0] TX_PTP_PCSLANE_OUT,
  output [79:0] TX_PTP_TSTAMP_OUT,
  output [15:0] TX_PTP_TSTAMP_TAG_OUT,
  output TX_PTP_TSTAMP_VALID_OUT,
  output TX_RDYOUT,
  output [15:0] TX_SERDES_ALT_DATA0,
  output [15:0] TX_SERDES_ALT_DATA1,
  output [15:0] TX_SERDES_ALT_DATA2,
  output [15:0] TX_SERDES_ALT_DATA3,
  output [63:0] TX_SERDES_DATA0,
  output [63:0] TX_SERDES_DATA1,
  output [63:0] TX_SERDES_DATA2,
  output [63:0] TX_SERDES_DATA3,
  output [31:0] TX_SERDES_DATA4,
  output [31:0] TX_SERDES_DATA5,
  output [31:0] TX_SERDES_DATA6,
  output [31:0] TX_SERDES_DATA7,
  output [31:0] TX_SERDES_DATA8,
  output [31:0] TX_SERDES_DATA9,
  output TX_UNFOUT,

  input CTL_CAUI4_MODE,
  input CTL_RSFEC_ENABLE_TRANSCODER_BYPASS_MODE,
  input CTL_RSFEC_IEEE_ERROR_INDICATION_MODE,
  input CTL_RX_CHECK_ETYPE_GCP,
  input CTL_RX_CHECK_ETYPE_GPP,
  input CTL_RX_CHECK_ETYPE_PCP,
  input CTL_RX_CHECK_ETYPE_PPP,
  input CTL_RX_CHECK_MCAST_GCP,
  input CTL_RX_CHECK_MCAST_GPP,
  input CTL_RX_CHECK_MCAST_PCP,
  input CTL_RX_CHECK_MCAST_PPP,
  input CTL_RX_CHECK_OPCODE_GCP,
  input CTL_RX_CHECK_OPCODE_GPP,
  input CTL_RX_CHECK_OPCODE_PCP,
  input CTL_RX_CHECK_OPCODE_PPP,
  input CTL_RX_CHECK_SA_GCP,
  input CTL_RX_CHECK_SA_GPP,
  input CTL_RX_CHECK_SA_PCP,
  input CTL_RX_CHECK_SA_PPP,
  input CTL_RX_CHECK_UCAST_GCP,
  input CTL_RX_CHECK_UCAST_GPP,
  input CTL_RX_CHECK_UCAST_PCP,
  input CTL_RX_CHECK_UCAST_PPP,
  input CTL_RX_ENABLE,
  input CTL_RX_ENABLE_GCP,
  input CTL_RX_ENABLE_GPP,
  input CTL_RX_ENABLE_PCP,
  input CTL_RX_ENABLE_PPP,
  input CTL_RX_FORCE_RESYNC,
  input [8:0] CTL_RX_PAUSE_ACK,
  input [8:0] CTL_RX_PAUSE_ENABLE,
  input CTL_RX_RSFEC_ENABLE,
  input CTL_RX_RSFEC_ENABLE_CORRECTION,
  input CTL_RX_RSFEC_ENABLE_INDICATION,
  input [79:0] CTL_RX_SYSTEMTIMERIN,
  input CTL_RX_TEST_PATTERN,
  input CTL_TX_ENABLE,
  input CTL_TX_LANE0_VLM_BIP7_OVERRIDE,
  input [7:0] CTL_TX_LANE0_VLM_BIP7_OVERRIDE_VALUE,
  input [8:0] CTL_TX_PAUSE_ENABLE,
  input [15:0] CTL_TX_PAUSE_QUANTA0,
  input [15:0] CTL_TX_PAUSE_QUANTA1,
  input [15:0] CTL_TX_PAUSE_QUANTA2,
  input [15:0] CTL_TX_PAUSE_QUANTA3,
  input [15:0] CTL_TX_PAUSE_QUANTA4,
  input [15:0] CTL_TX_PAUSE_QUANTA5,
  input [15:0] CTL_TX_PAUSE_QUANTA6,
  input [15:0] CTL_TX_PAUSE_QUANTA7,
  input [15:0] CTL_TX_PAUSE_QUANTA8,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER0,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER1,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER2,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER3,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER4,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER5,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER6,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER7,
  input [15:0] CTL_TX_PAUSE_REFRESH_TIMER8,
  input [8:0] CTL_TX_PAUSE_REQ,
  input CTL_TX_PTP_VLANE_ADJUST_MODE,
  input CTL_TX_RESEND_PAUSE,
  input CTL_TX_RSFEC_ENABLE,
  input CTL_TX_SEND_IDLE,
  input CTL_TX_SEND_LFI,
  input CTL_TX_SEND_RFI,
  input [79:0] CTL_TX_SYSTEMTIMERIN,
  input CTL_TX_TEST_PATTERN,
  input [9:0] DRP_ADDR,
  input DRP_CLK,
  input [15:0] DRP_DI,
  input DRP_EN,
  input DRP_WE,
  input [329:0] RSFEC_BYPASS_RX_DIN,
  input RSFEC_BYPASS_RX_DIN_CW_START,
  input [329:0] RSFEC_BYPASS_TX_DIN,
  input RSFEC_BYPASS_TX_DIN_CW_START,
  input RX_CLK,
  input RX_RESET,
  input [15:0] RX_SERDES_ALT_DATA0,
  input [15:0] RX_SERDES_ALT_DATA1,
  input [15:0] RX_SERDES_ALT_DATA2,
  input [15:0] RX_SERDES_ALT_DATA3,
  input [9:0] RX_SERDES_CLK,
  input [63:0] RX_SERDES_DATA0,
  input [63:0] RX_SERDES_DATA1,
  input [63:0] RX_SERDES_DATA2,
  input [63:0] RX_SERDES_DATA3,
  input [31:0] RX_SERDES_DATA4,
  input [31:0] RX_SERDES_DATA5,
  input [31:0] RX_SERDES_DATA6,
  input [31:0] RX_SERDES_DATA7,
  input [31:0] RX_SERDES_DATA8,
  input [31:0] RX_SERDES_DATA9,
  input [9:0] RX_SERDES_RESET,
  input TX_CLK,
  input [127:0] TX_DATAIN0,
  input [127:0] TX_DATAIN1,
  input [127:0] TX_DATAIN2,
  input [127:0] TX_DATAIN3,
  input TX_ENAIN0,
  input TX_ENAIN1,
  input TX_ENAIN2,
  input TX_ENAIN3,
  input TX_EOPIN0,
  input TX_EOPIN1,
  input TX_EOPIN2,
  input TX_EOPIN3,
  input TX_ERRIN0,
  input TX_ERRIN1,
  input TX_ERRIN2,
  input TX_ERRIN3,
  input [3:0] TX_MTYIN0,
  input [3:0] TX_MTYIN1,
  input [3:0] TX_MTYIN2,
  input [3:0] TX_MTYIN3,
  input [55:0] TX_PREIN,
  input [1:0] TX_PTP_1588OP_IN,
  input [15:0] TX_PTP_CHKSUM_OFFSET_IN,
  input [63:0] TX_PTP_RXTSTAMP_IN,
  input [15:0] TX_PTP_TAG_FIELD_IN,
  input [15:0] TX_PTP_TSTAMP_OFFSET_IN,
  input TX_PTP_UPD_CHKSUM_IN,
  input TX_RESET,
  input TX_SOPIN0,
  input TX_SOPIN1,
  input TX_SOPIN2,
  input TX_SOPIN3
);
endmodule


module DCIRESET (LOCKED, RST);
    output LOCKED;
    input  RST;
    parameter LOC = "UNPLACED";
endmodule



module DCM_ADV (
        CLK0,
        CLK180,
        CLK270,
        CLK2X,
        CLK2X180,
        CLK90,
        CLKDV,
        CLKFX,
        CLKFX180,
        DO,
        DRDY,
        LOCKED,
        PSDONE,
        CLKFB,
        CLKIN,
        DADDR,
        DCLK,
        DEN,
        DI,
        DWE,
        PSCLK,
        PSEN,
        PSINCDEC,
        RST
);
parameter real CLKDV_DIVIDE = 2.0;
parameter integer CLKFX_DIVIDE = 1;
parameter integer CLKFX_MULTIPLY = 4;
parameter CLKIN_DIVIDE_BY_2 = "FALSE";
parameter real CLKIN_PERIOD = 10.0;                  // non-simulatable
parameter CLKOUT_PHASE_SHIFT = "NONE";
parameter CLK_FEEDBACK = "1X";
parameter DCM_AUTOCALIBRATION = "TRUE";
parameter DCM_PERFORMANCE_MODE = "MAX_SPEED";   // non-simulatable
parameter DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"; // non-simulatable
parameter DFS_FREQUENCY_MODE = "LOW";
parameter DLL_FREQUENCY_MODE = "LOW";
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hF0F0;                // non-simulatable
parameter integer MAXPERCLKIN = 1000000;                // non-modifiable simulation parameter
parameter integer MAXPERPSCLK = 100000000;              // non-modifiable simulation parameter
parameter integer PHASE_SHIFT = 0;
parameter integer SIM_CLKIN_CYCLE_JITTER = 300;         // non-modifiable simulation parameter
parameter integer SIM_CLKIN_PERIOD_JITTER = 1000;       // non-modifiable simulation parameter
parameter SIM_DEVICE ="VIRTEX4";
parameter LOC = "UNPLACED";
parameter STARTUP_WAIT = "FALSE";               // non-simulatable
output CLK0;
output CLK180;
output CLK270;
output CLK2X180;
output CLK2X;
output CLK90;
output CLKDV;
output CLKFX180;
output CLKFX;
output DRDY;
output LOCKED;
output PSDONE;
output [15:0] DO;
input CLKFB;
input CLKIN;
input DCLK;
input DEN;
input DWE;
input PSCLK;
input PSEN;
input PSINCDEC;
input RST;
input [15:0] DI;
input [6:0] DADDR;
endmodule

//////////////////////////////////////////////////////

module dcm_adv_clock_divide_by_2 (clock, clock_type, clock_out, rst);
input clock;
input clock_type;
input rst;
output clock_out;
endmodule

module dcm_adv_maximum_period_check (clock,  rst);
parameter clock_name = "";
parameter maximum_period = 0;
input clock;
input rst;
endmodule

module dcm_adv_clock_lost (clock, enable, lost, rst);
input clock;
input enable;
input rst;
output lost;
endmodule

    
module DCM_SP (
  CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90,
  CLKDV, CLKFX, CLKFX180, LOCKED, PSDONE, STATUS,
  CLKFB, CLKIN, DSSEN, PSCLK, PSEN, PSINCDEC, RST);
parameter real CLKDV_DIVIDE = 2.0;
parameter integer CLKFX_DIVIDE = 1;
parameter integer CLKFX_MULTIPLY = 4;
parameter CLKIN_DIVIDE_BY_2 = "FALSE";
parameter real CLKIN_PERIOD = 10.0;      // non-simulatable
parameter CLKOUT_PHASE_SHIFT = "NONE";
parameter CLK_FEEDBACK = "1X";
parameter DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";  // non-simulatable
parameter DFS_FREQUENCY_MODE = "LOW";
parameter DLL_FREQUENCY_MODE = "LOW";
parameter DSS_MODE = "NONE";      // non-simulatable
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hC080;    // non-simulatable
parameter integer MAXPERCLKIN = 5000000;    // non-modifiable simulation parameter
parameter integer MAXPERPSCLK = 100000000;    // non-modifiable simulation parameter
parameter integer PHASE_SHIFT = 0;
parameter integer SIM_CLKIN_CYCLE_JITTER = 300;    // non-modifiable simulation parameter
parameter integer SIM_CLKIN_PERIOD_JITTER = 1000;  // non-modifiable simulation parameter
parameter STARTUP_WAIT = "FALSE";    // non-simulatable
parameter LOC = "UNPLACED";
input CLKFB, CLKIN, DSSEN;
input PSCLK, PSEN, PSINCDEC, RST;
output CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90;
output CLKDV, CLKFX, CLKFX180, LOCKED, PSDONE;
output [7:0] STATUS;
endmodule

//////////////////////////////////////////////////////

module dcm_sp_clock_divide_by_2 (clock, clock_type, clock_out, rst);
input clock;
input clock_type;
input rst;
output clock_out;
endmodule

module dcm_sp_maximum_period_check (clock, rst);
parameter clock_name = "";
parameter maximum_period = 0;
input clock;
input rst;
endmodule

module dcm_sp_clock_lost (clock, enable, lost, rst);
input clock;
input enable;
input rst;
output lost;
endmodule


module DIFFINBUF #(
  parameter DIFF_TERM = "FALSE",
  parameter DQS_BIAS = "FALSE",
  parameter IBUF_LOW_PWR = "TRUE",
  parameter ISTANDARD = "UNUSED",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0
)(
  output O,
  output O_B,

  input DIFF_IN_N,
  input DIFF_IN_P,
  input [3:0] OSC,
  input [1:0] OSC_EN,
  input VREF
);
endmodule


module DNA_PORT (DOUT, CLK, DIN, READ, SHIFT);
    parameter [56:0] SIM_DNA_VALUE = 57'h0;
    parameter LOC = "UNPLACED";
    output DOUT;
    input  CLK, DIN, READ, SHIFT;
endmodule // DNA_PORT


module DPHY_DIFFINBUF #(
  parameter DIFF_TERM = "TRUE",
  parameter ISTANDARD = "DEFAULT"
)(
  output HSRX_O,
  output LPRX_O_N,
  output LPRX_O_P,

  input HSRX_DISABLE,
  input I,
  input IB,
  input LPRX_DISABLE
);
endmodule


module DSP48E1 #(
  parameter integer ACASCREG = 1,
  parameter integer ADREG = 1,
  parameter integer ALUMODEREG = 1,
  parameter integer AREG = 1,
  parameter AUTORESET_PATDET = "NO_RESET",
  parameter A_INPUT = "DIRECT",
  parameter integer BCASCREG = 1,
  parameter integer BREG = 1,
  parameter B_INPUT = "DIRECT",
  parameter integer CARRYINREG = 1,
  parameter integer CARRYINSELREG = 1,
  parameter integer CREG = 1,
  parameter integer DREG = 1,
  parameter integer INMODEREG = 1,
  parameter [3:0] IS_ALUMODE_INVERTED = 4'b0000,
  parameter [0:0] IS_CARRYIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [4:0] IS_INMODE_INVERTED = 5'b00000,
  parameter [6:0] IS_OPMODE_INVERTED = 7'b0000000,
  parameter [47:0] MASK = 48'h3FFFFFFFFFFF,
  parameter integer MREG = 1,
  parameter integer OPMODEREG = 1,
  parameter [47:0] PATTERN = 48'h000000000000,
  parameter integer PREG = 1,
  parameter SEL_MASK = "MASK",
  parameter SEL_PATTERN = "PATTERN",
  parameter USE_DPORT = "FALSE",
  parameter USE_MULT = "MULTIPLY",
  parameter USE_PATTERN_DETECT = "NO_PATDET",
  parameter USE_SIMD = "ONE48"
)(
  output [29:0] ACOUT,
  output [17:0] BCOUT,
  output CARRYCASCOUT,
  output [3:0] CARRYOUT,
  output MULTSIGNOUT,
  output OVERFLOW,
  output [47:0] P,
  output PATTERNBDETECT,
  output PATTERNDETECT,
  output [47:0] PCOUT,
  output UNDERFLOW,

  input [29:0] A,
  input [29:0] ACIN,
  input [3:0] ALUMODE,
  input [17:0] B,
  input [17:0] BCIN,
  input [47:0] C,
  input CARRYCASCIN,
  input CARRYIN,
  input [2:0] CARRYINSEL,
  input CEA1,
  input CEA2,
  input CEAD,
  input CEALUMODE,
  input CEB1,
  input CEB2,
  input CEC,
  input CECARRYIN,
  input CECTRL,
  input CED,
  input CEINMODE,
  input CEM,
  input CEP,
  input CLK,
  input [24:0] D,
  input [4:0] INMODE,
  input MULTSIGNIN,
  input [6:0] OPMODE,
  input [47:0] PCIN,
  input RSTA,
  input RSTALLCARRYIN,
  input RSTALUMODE,
  input RSTB,
  input RSTC,
  input RSTCTRL,
  input RSTD,
  input RSTINMODE,
  input RSTM,
  input RSTP
);
endmodule 

module FRAME_ECCE3
(
  output CRCERROR,
  output ECCERRORNOTSINGLE,
  output ECCERRORSINGLE,
  output ENDOFFRAME,
  output ENDOFSCAN,
  output [25:0] FAR,

  input [1:0] FARSEL, 
  input ICAPBOTCLK,
  input ICAPTOPCLK

);
endmodule


module FRAME_ECCE4
(
  output CRCERROR,
  output ECCERRORNOTSINGLE,
  output ECCERRORSINGLE,
  output ENDOFFRAME,
  output ENDOFSCAN,
  output [26:0] FAR,

  input [1:0] FARSEL,
  input ICAPBOTCLK,
  input ICAPTOPCLK
);
endmodule


module GND(G);
    parameter LOC = "UNPLACED";
    output G;
endmodule

    
module GTHE2_CHANNEL (
  CPLLFBCLKLOST,
  CPLLLOCK,
  CPLLREFCLKLOST,
  DMONITOROUT,
  DRPDO,
  DRPRDY,
  EYESCANDATAERROR,
  GTHTXN,
  GTHTXP,
  GTREFCLKMONITOR,
  PCSRSVDOUT,
  PHYSTATUS,
  RSOSINTDONE,
  RXBUFSTATUS,
  RXBYTEISALIGNED,
  RXBYTEREALIGN,
  RXCDRLOCK,
  RXCHANBONDSEQ,
  RXCHANISALIGNED,
  RXCHANREALIGN,
  RXCHARISCOMMA,
  RXCHARISK,
  RXCHBONDO,
  RXCLKCORCNT,
  RXCOMINITDET,
  RXCOMMADET,
  RXCOMSASDET,
  RXCOMWAKEDET,
  RXDATA,
  RXDATAVALID,
  RXDFESLIDETAPSTARTED,
  RXDFESLIDETAPSTROBEDONE,
  RXDFESLIDETAPSTROBESTARTED,
  RXDFESTADAPTDONE,
  RXDISPERR,
  RXDLYSRESETDONE,
  RXELECIDLE,
  RXHEADER,
  RXHEADERVALID,
  RXMONITOROUT,
  RXNOTINTABLE,
  RXOSINTSTARTED,
  RXOSINTSTROBEDONE,
  RXOSINTSTROBESTARTED,
  RXOUTCLK,
  RXOUTCLKFABRIC,
  RXOUTCLKPCS,
  RXPHALIGNDONE,
  RXPHMONITOR,
  RXPHSLIPMONITOR,
  RXPMARESETDONE,
  RXPRBSERR,
  RXQPISENN,
  RXQPISENP,
  RXRATEDONE,
  RXRESETDONE,
  RXSTARTOFSEQ,
  RXSTATUS,
  RXSYNCDONE,
  RXSYNCOUT,
  RXVALID,
  TXBUFSTATUS,
  TXCOMFINISH,
  TXDLYSRESETDONE,
  TXGEARBOXREADY,
  TXOUTCLK,
  TXOUTCLKFABRIC,
  TXOUTCLKPCS,
  TXPHALIGNDONE,
  TXPHINITDONE,
  TXPMARESETDONE,
  TXQPISENN,
  TXQPISENP,
  TXRATEDONE,
  TXRESETDONE,
  TXSYNCDONE,
  TXSYNCOUT,

  CFGRESET,
  CLKRSVD0,
  CLKRSVD1,
  CPLLLOCKDETCLK,
  CPLLLOCKEN,
  CPLLPD,
  CPLLREFCLKSEL,
  CPLLRESET,
  DMONFIFORESET,
  DMONITORCLK,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  EYESCANMODE,
  EYESCANRESET,
  EYESCANTRIGGER,
  GTGREFCLK,
  GTHRXN,
  GTHRXP,
  GTNORTHREFCLK0,
  GTNORTHREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTRESETSEL,
  GTRSVD,
  GTRXRESET,
  GTSOUTHREFCLK0,
  GTSOUTHREFCLK1,
  GTTXRESET,
  LOOPBACK,
  PCSRSVDIN,
  PCSRSVDIN2,
  PMARSVDIN,
  QPLLCLK,
  QPLLREFCLK,
  RESETOVRD,
  RX8B10BEN,
  RXADAPTSELTEST,
  RXBUFRESET,
  RXCDRFREQRESET,
  RXCDRHOLD,
  RXCDROVRDEN,
  RXCDRRESET,
  RXCDRRESETRSV,
  RXCHBONDEN,
  RXCHBONDI,
  RXCHBONDLEVEL,
  RXCHBONDMASTER,
  RXCHBONDSLAVE,
  RXCOMMADETEN,
  RXDDIEN,
  RXDFEAGCHOLD,
  RXDFEAGCOVRDEN,
  RXDFEAGCTRL,
  RXDFECM1EN,
  RXDFELFHOLD,
  RXDFELFOVRDEN,
  RXDFELPMRESET,
  RXDFESLIDETAP,
  RXDFESLIDETAPADAPTEN,
  RXDFESLIDETAPHOLD,
  RXDFESLIDETAPID,
  RXDFESLIDETAPINITOVRDEN,
  RXDFESLIDETAPONLYADAPTEN,
  RXDFESLIDETAPOVRDEN,
  RXDFESLIDETAPSTROBE,
  RXDFETAP2HOLD,
  RXDFETAP2OVRDEN,
  RXDFETAP3HOLD,
  RXDFETAP3OVRDEN,
  RXDFETAP4HOLD,
  RXDFETAP4OVRDEN,
  RXDFETAP5HOLD,
  RXDFETAP5OVRDEN,
  RXDFETAP6HOLD,
  RXDFETAP6OVRDEN,
  RXDFETAP7HOLD,
  RXDFETAP7OVRDEN,
  RXDFEUTHOLD,
  RXDFEUTOVRDEN,
  RXDFEVPHOLD,
  RXDFEVPOVRDEN,
  RXDFEVSEN,
  RXDFEXYDEN,
  RXDLYBYPASS,
  RXDLYEN,
  RXDLYOVRDEN,
  RXDLYSRESET,
  RXELECIDLEMODE,
  RXGEARBOXSLIP,
  RXLPMEN,
  RXLPMHFHOLD,
  RXLPMHFOVRDEN,
  RXLPMLFHOLD,
  RXLPMLFKLOVRDEN,
  RXMCOMMAALIGNEN,
  RXMONITORSEL,
  RXOOBRESET,
  RXOSCALRESET,
  RXOSHOLD,
  RXOSINTCFG,
  RXOSINTEN,
  RXOSINTHOLD,
  RXOSINTID0,
  RXOSINTNTRLEN,
  RXOSINTOVRDEN,
  RXOSINTSTROBE,
  RXOSINTTESTOVRDEN,
  RXOSOVRDEN,
  RXOUTCLKSEL,
  RXPCOMMAALIGNEN,
  RXPCSRESET,
  RXPD,
  RXPHALIGN,
  RXPHALIGNEN,
  RXPHDLYPD,
  RXPHDLYRESET,
  RXPHOVRDEN,
  RXPMARESET,
  RXPOLARITY,
  RXPRBSCNTRESET,
  RXPRBSSEL,
  RXQPIEN,
  RXRATE,
  RXRATEMODE,
  RXSLIDE,
  RXSYNCALLIN,
  RXSYNCIN,
  RXSYNCMODE,
  RXSYSCLKSEL,
  RXUSERRDY,
  RXUSRCLK,
  RXUSRCLK2,
  SETERRSTATUS,
  SIGVALIDCLK,
  TSTIN,
  TX8B10BBYPASS,
  TX8B10BEN,
  TXBUFDIFFCTRL,
  TXCHARDISPMODE,
  TXCHARDISPVAL,
  TXCHARISK,
  TXCOMINIT,
  TXCOMSAS,
  TXCOMWAKE,
  TXDATA,
  TXDEEMPH,
  TXDETECTRX,
  TXDIFFCTRL,
  TXDIFFPD,
  TXDLYBYPASS,
  TXDLYEN,
  TXDLYHOLD,
  TXDLYOVRDEN,
  TXDLYSRESET,
  TXDLYUPDOWN,
  TXELECIDLE,
  TXHEADER,
  TXINHIBIT,
  TXMAINCURSOR,
  TXMARGIN,
  TXOUTCLKSEL,
  TXPCSRESET,
  TXPD,
  TXPDELECIDLEMODE,
  TXPHALIGN,
  TXPHALIGNEN,
  TXPHDLYPD,
  TXPHDLYRESET,
  TXPHDLYTSTCLK,
  TXPHINIT,
  TXPHOVRDEN,
  TXPIPPMEN,
  TXPIPPMOVRDEN,
  TXPIPPMPD,
  TXPIPPMSEL,
  TXPIPPMSTEPSIZE,
  TXPISOPD,
  TXPMARESET,
  TXPOLARITY,
  TXPOSTCURSOR,
  TXPOSTCURSORINV,
  TXPRBSFORCEERR,
  TXPRBSSEL,
  TXPRECURSOR,
  TXPRECURSORINV,
  TXQPIBIASEN,
  TXQPISTRONGPDOWN,
  TXQPIWEAKPUP,
  TXRATE,
  TXRATEMODE,
  TXSEQUENCE,
  TXSTARTSEQ,
  TXSWING,
  TXSYNCALLIN,
  TXSYNCIN,
  TXSYNCMODE,
  TXSYSCLKSEL,
  TXUSERRDY,
  TXUSRCLK,
  TXUSRCLK2
);
  parameter LOC = "UNPLACED";
  parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0;
  parameter [0:0] ACJTAG_MODE = 1'b0;
  parameter [0:0] ACJTAG_RESET = 1'b0;
  parameter [19:0] ADAPT_CFG0 = 20'h00C10;
  parameter ALIGN_COMMA_DOUBLE = "FALSE";
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111;
  parameter integer ALIGN_COMMA_WORD = 1;
  parameter ALIGN_MCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011;
  parameter ALIGN_PCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100;
  parameter [0:0] A_RXOSCALRESET = 1'b0;
  parameter CBCC_DATA_SOURCE_SEL = "DECODED";
  parameter [41:0] CFOK_CFG = 42'h24800040E80;
  parameter [5:0] CFOK_CFG2 = 6'b100000;
  parameter [5:0] CFOK_CFG3 = 6'b100000;
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE";
  parameter integer CHAN_BOND_MAX_SKEW = 7;
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100;
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111;
  parameter CHAN_BOND_SEQ_2_USE = "FALSE";
  parameter integer CHAN_BOND_SEQ_LEN = 1;
  parameter CLK_CORRECT_USE = "TRUE";
  parameter CLK_COR_KEEP_IDLE = "FALSE";
  parameter integer CLK_COR_MAX_LAT = 20;
  parameter integer CLK_COR_MIN_LAT = 18;
  parameter CLK_COR_PRECEDENCE = "TRUE";
  parameter integer CLK_COR_REPEAT_WAIT = 0;
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100;
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111;
  parameter CLK_COR_SEQ_2_USE = "FALSE";
  parameter integer CLK_COR_SEQ_LEN = 1;
  parameter [28:0] CPLL_CFG = 29'h00BC07DC;
  parameter integer CPLL_FBDIV = 4;
  parameter integer CPLL_FBDIV_45 = 5;
  parameter [23:0] CPLL_INIT_CFG = 24'h00001E;
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8;
  parameter integer CPLL_REFCLK_DIV = 1;
  parameter DEC_MCOMMA_DETECT = "TRUE";
  parameter DEC_PCOMMA_DETECT = "TRUE";
  parameter DEC_VALID_COMMA_ONLY = "TRUE";
  parameter [23:0] DMONITOR_CFG = 24'h000A00;
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0;
  parameter [5:0] ES_CONTROL = 6'b000000;
  parameter ES_ERRDET_EN = "FALSE";
  parameter ES_EYE_SCAN_EN = "TRUE";
  parameter [11:0] ES_HORZ_OFFSET = 12'h000;
  parameter [9:0] ES_PMA_CFG = 10'b0000000000;
  parameter [4:0] ES_PRESCALE = 5'b00000;
  parameter [79:0] ES_QUALIFIER = 80'h00000000000000000000;
  parameter [79:0] ES_QUAL_MASK = 80'h00000000000000000000;
  parameter [79:0] ES_SDATA_MASK = 80'h00000000000000000000;
  parameter [8:0] ES_VERT_OFFSET = 9'b000000000;
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111;
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111;
  parameter FTS_LANE_DESKEW_EN = "FALSE";
  parameter [2:0] GEARBOX_MODE = 3'b000;
  parameter [0:0] IS_CLKRSVD0_INVERTED = 1'b0;
  parameter [0:0] IS_CLKRSVD1_INVERTED = 1'b0;
  parameter [0:0] IS_CPLLLOCKDETCLK_INVERTED = 1'b0;
  parameter [0:0] IS_DMONITORCLK_INVERTED = 1'b0;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK_INVERTED = 1'b0;
  parameter [0:0] IS_SIGVALIDCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXPHDLYTSTCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK_INVERTED = 1'b0;
  parameter [0:0] LOOPBACK_CFG = 1'b0;
  parameter [1:0] OUTREFCLK_SEL_INV = 2'b11;
  parameter PCS_PCIE_EN = "FALSE";
  parameter [47:0] PCS_RSVD_ATTR = 48'h000000000000;
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C;
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19;
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64;
  parameter [31:0] PMA_RSV = 32'b00000000000000000000000010000000;
  parameter [31:0] PMA_RSV2 = 32'b00011100000000000000000000001010;
  parameter [1:0] PMA_RSV3 = 2'b00;
  parameter [14:0] PMA_RSV4 = 15'b000000000001000;
  parameter [3:0] PMA_RSV5 = 4'b0000;
  parameter [0:0] RESET_POWERSAVE_DISABLE = 1'b0;
  parameter [4:0] RXBUFRESET_TIME = 5'b00001;
  parameter RXBUF_ADDR_MODE = "FULL";
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000;
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000;
  parameter RXBUF_EN = "TRUE";
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE";
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE";
  parameter RXBUF_RESET_ON_EIDLE = "FALSE";
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE";
  parameter integer RXBUF_THRESH_OVFLW = 61;
  parameter RXBUF_THRESH_OVRD = "FALSE";
  parameter integer RXBUF_THRESH_UNDFLW = 4;
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001;
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001;
  parameter [82:0] RXCDR_CFG = 83'h0002007FE2000C208001A;
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0;
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0;
  parameter [5:0] RXCDR_LOCK_CFG = 6'b001001;
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0;
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111;
  parameter [15:0] RXDLY_CFG = 16'h001F;
  parameter [8:0] RXDLY_LCFG = 9'h030;
  parameter [15:0] RXDLY_TAP_CFG = 16'h0000;
  parameter RXGEARBOX_EN = "FALSE";
  parameter [4:0] RXISCANRESET_TIME = 5'b00001;
  parameter [13:0] RXLPM_HF_CFG = 14'b00001000000000;
  parameter [17:0] RXLPM_LF_CFG = 18'b001001000000000000;
  parameter [6:0] RXOOB_CFG = 7'b0000110;
  parameter RXOOB_CLK_CFG = "PMA";
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011;
  parameter [4:0] RXOSCALRESET_TIMEOUT = 5'b00000;
  parameter integer RXOUT_DIV = 2;
  parameter [4:0] RXPCSRESET_TIME = 5'b00001;
  parameter [23:0] RXPHDLY_CFG = 24'h084020;
  parameter [23:0] RXPH_CFG = 24'hC00002;
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000;
  parameter [1:0] RXPI_CFG0 = 2'b00;
  parameter [1:0] RXPI_CFG1 = 2'b00;
  parameter [1:0] RXPI_CFG2 = 2'b00;
  parameter [1:0] RXPI_CFG3 = 2'b00;
  parameter [0:0] RXPI_CFG4 = 1'b0;
  parameter [0:0] RXPI_CFG5 = 1'b0;
  parameter [2:0] RXPI_CFG6 = 3'b100;
  parameter [4:0] RXPMARESET_TIME = 5'b00011;
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0;
  parameter integer RXSLIDE_AUTO_WAIT = 7;
  parameter RXSLIDE_MODE = "OFF";
  parameter [0:0] RXSYNC_MULTILANE = 1'b0;
  parameter [0:0] RXSYNC_OVRD = 1'b0;
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0;
  parameter [23:0] RX_BIAS_CFG = 24'b000011000000000000010000;
  parameter [5:0] RX_BUFFER_CFG = 6'b000000;
  parameter integer RX_CLK25_DIV = 7;
  parameter [0:0] RX_CLKMUX_PD = 1'b1;
  parameter [1:0] RX_CM_SEL = 2'b11;
  parameter [3:0] RX_CM_TRIM = 4'b0100;
  parameter integer RX_DATA_WIDTH = 20;
  parameter [5:0] RX_DDI_SEL = 6'b000000;
  parameter [13:0] RX_DEBUG_CFG = 14'b00000000000000;
  parameter RX_DEFER_RESET_BUF_EN = "TRUE";
  parameter [3:0] RX_DFELPM_CFG0 = 4'b0110;
  parameter [0:0] RX_DFELPM_CFG1 = 1'b0;
  parameter [0:0] RX_DFELPM_KLKH_AGC_STUP_EN = 1'b1;
  parameter [1:0] RX_DFE_AGC_CFG0 = 2'b00;
  parameter [2:0] RX_DFE_AGC_CFG1 = 3'b010;
  parameter [3:0] RX_DFE_AGC_CFG2 = 4'b0000;
  parameter [0:0] RX_DFE_AGC_OVRDEN = 1'b1;
  parameter [22:0] RX_DFE_GAIN_CFG = 23'h0020C0;
  parameter [11:0] RX_DFE_H2_CFG = 12'b000000000000;
  parameter [11:0] RX_DFE_H3_CFG = 12'b000001000000;
  parameter [10:0] RX_DFE_H4_CFG = 11'b00011100000;
  parameter [10:0] RX_DFE_H5_CFG = 11'b00011100000;
  parameter [10:0] RX_DFE_H6_CFG = 11'b00000100000;
  parameter [10:0] RX_DFE_H7_CFG = 11'b00000100000;
  parameter [32:0] RX_DFE_KL_CFG = 33'b000000000000000000000001100010000;
  parameter [1:0] RX_DFE_KL_LPM_KH_CFG0 = 2'b01;
  parameter [2:0] RX_DFE_KL_LPM_KH_CFG1 = 3'b010;
  parameter [3:0] RX_DFE_KL_LPM_KH_CFG2 = 4'b0010;
  parameter [0:0] RX_DFE_KL_LPM_KH_OVRDEN = 1'b1;
  parameter [1:0] RX_DFE_KL_LPM_KL_CFG0 = 2'b10;
  parameter [2:0] RX_DFE_KL_LPM_KL_CFG1 = 3'b010;
  parameter [3:0] RX_DFE_KL_LPM_KL_CFG2 = 4'b0010;
  parameter [0:0] RX_DFE_KL_LPM_KL_OVRDEN = 1'b1;
  parameter [15:0] RX_DFE_LPM_CFG = 16'h0080;
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0;
  parameter [53:0] RX_DFE_ST_CFG = 54'h00E100000C003F;
  parameter [16:0] RX_DFE_UT_CFG = 17'b00011100000000000;
  parameter [16:0] RX_DFE_VP_CFG = 17'b00011101010100011;
  parameter RX_DISPERR_SEQ_MATCH = "TRUE";
  parameter integer RX_INT_DATAWIDTH = 0;
  parameter [12:0] RX_OS_CFG = 13'b0000010000000;
  parameter integer RX_SIG_VALID_DLY = 10;
  parameter RX_XCLK_SEL = "RXREC";
  parameter integer SAS_MAX_COM = 64;
  parameter integer SAS_MIN_COM = 36;
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111;
  parameter [2:0] SATA_BURST_VAL = 3'b100;
  parameter SATA_CPLL_CFG = "VCO_3000MHZ";
  parameter [2:0] SATA_EIDLE_VAL = 3'b100;
  parameter integer SATA_MAX_BURST = 8;
  parameter integer SATA_MAX_INIT = 21;
  parameter integer SATA_MAX_WAKE = 7;
  parameter integer SATA_MIN_BURST = 4;
  parameter integer SATA_MIN_INIT = 12;
  parameter integer SATA_MIN_WAKE = 4;
  parameter SHOW_REALIGN_COMMA = "TRUE";
  parameter [2:0] SIM_CPLLREFCLK_SEL = 3'b001;
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE";
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_TX_EIDLE_DRIVE_LEVEL = "X";
  parameter SIM_VERSION = "1.1";
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000;
  parameter [2:0] TERM_RCAL_OVRD = 3'b000;
  parameter [7:0] TRANS_TIME_RATE = 8'h0E;
  parameter [31:0] TST_RSV = 32'h00000000;
  parameter TXBUF_EN = "TRUE";
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE";
  parameter [15:0] TXDLY_CFG = 16'h001F;
  parameter [8:0] TXDLY_LCFG = 9'h030;
  parameter [15:0] TXDLY_TAP_CFG = 16'h0000;
  parameter TXGEARBOX_EN = "FALSE";
  parameter [0:0] TXOOB_CFG = 1'b0;
  parameter integer TXOUT_DIV = 2;
  parameter [4:0] TXPCSRESET_TIME = 5'b00001;
  parameter [23:0] TXPHDLY_CFG = 24'h084020;
  parameter [15:0] TXPH_CFG = 16'h0780;
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000;
  parameter [1:0] TXPI_CFG0 = 2'b00;
  parameter [1:0] TXPI_CFG1 = 2'b00;
  parameter [1:0] TXPI_CFG2 = 2'b00;
  parameter [0:0] TXPI_CFG3 = 1'b0;
  parameter [0:0] TXPI_CFG4 = 1'b0;
  parameter [2:0] TXPI_CFG5 = 3'b100;
  parameter [0:0] TXPI_GREY_SEL = 1'b0;
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0;
  parameter TXPI_PPMCLK_SEL = "TXUSRCLK2";
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000;
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000;
  parameter [4:0] TXPMARESET_TIME = 5'b00001;
  parameter [0:0] TXSYNC_MULTILANE = 1'b0;
  parameter [0:0] TXSYNC_OVRD = 1'b0;
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0;
  parameter integer TX_CLK25_DIV = 7;
  parameter [0:0] TX_CLKMUX_PD = 1'b1;
  parameter integer TX_DATA_WIDTH = 20;
  parameter [5:0] TX_DEEMPH0 = 6'b000000;
  parameter [5:0] TX_DEEMPH1 = 6'b000000;
  parameter TX_DRIVE_MODE = "DIRECT";
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110;
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100;
  parameter integer TX_INT_DATAWIDTH = 0;
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE";
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0;
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110;
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001;
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101;
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010;
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110;
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100;
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010;
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000;
  parameter [0:0] TX_QPI_STATUS_EN = 1'b0;
  parameter [13:0] TX_RXDETECT_CFG = 14'h1832;
  parameter [16:0] TX_RXDETECT_PRECHARGE_TIME = 17'h00000;
  parameter [2:0] TX_RXDETECT_REF = 3'b100;
  parameter TX_XCLK_SEL = "TXUSR";
  parameter [0:0] UCODEER_CLR = 1'b0;
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0;
  output CPLLFBCLKLOST;
  output CPLLLOCK;
  output CPLLREFCLKLOST;
  output DRPRDY;
  output EYESCANDATAERROR;
  output GTHTXN;
  output GTHTXP;
  output GTREFCLKMONITOR;
  output PHYSTATUS;
  output RSOSINTDONE;
  output RXBYTEISALIGNED;
  output RXBYTEREALIGN;
  output RXCDRLOCK;
  output RXCHANBONDSEQ;
  output RXCHANISALIGNED;
  output RXCHANREALIGN;
  output RXCOMINITDET;
  output RXCOMMADET;
  output RXCOMSASDET;
  output RXCOMWAKEDET;
  output RXDFESLIDETAPSTARTED;
  output RXDFESLIDETAPSTROBEDONE;
  output RXDFESLIDETAPSTROBESTARTED;
  output RXDFESTADAPTDONE;
  output RXDLYSRESETDONE;
  output RXELECIDLE;
  output RXOSINTSTARTED;
  output RXOSINTSTROBEDONE;
  output RXOSINTSTROBESTARTED;
  output RXOUTCLK;
  output RXOUTCLKFABRIC;
  output RXOUTCLKPCS;
  output RXPHALIGNDONE;
  output RXPMARESETDONE;
  output RXPRBSERR;
  output RXQPISENN;
  output RXQPISENP;
  output RXRATEDONE;
  output RXRESETDONE;
  output RXSYNCDONE;
  output RXSYNCOUT;
  output RXVALID;
  output TXCOMFINISH;
  output TXDLYSRESETDONE;
  output TXGEARBOXREADY;
  output TXOUTCLK;
  output TXOUTCLKFABRIC;
  output TXOUTCLKPCS;
  output TXPHALIGNDONE;
  output TXPHINITDONE;
  output TXPMARESETDONE;
  output TXQPISENN;
  output TXQPISENP;
  output TXRATEDONE;
  output TXRESETDONE;
  output TXSYNCDONE;
  output TXSYNCOUT;
  output [14:0] DMONITOROUT;
  output [15:0] DRPDO;
  output [15:0] PCSRSVDOUT;
  output [1:0] RXCLKCORCNT;
  output [1:0] RXDATAVALID;
  output [1:0] RXHEADERVALID;
  output [1:0] RXSTARTOFSEQ;
  output [1:0] TXBUFSTATUS;
  output [2:0] RXBUFSTATUS;
  output [2:0] RXSTATUS;
  output [4:0] RXCHBONDO;
  output [4:0] RXPHMONITOR;
  output [4:0] RXPHSLIPMONITOR;
  output [5:0] RXHEADER;
  output [63:0] RXDATA;
  output [6:0] RXMONITOROUT;
  output [7:0] RXCHARISCOMMA;
  output [7:0] RXCHARISK;
  output [7:0] RXDISPERR;
  output [7:0] RXNOTINTABLE;
  input CFGRESET;
  input CLKRSVD0;
  input CLKRSVD1;
  input CPLLLOCKDETCLK;
  input CPLLLOCKEN;
  input CPLLPD;
  input CPLLRESET;
  input DMONFIFORESET;
  input DMONITORCLK;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input EYESCANMODE;
  input EYESCANRESET;
  input EYESCANTRIGGER;
  input GTGREFCLK;
  input GTHRXN;
  input GTHRXP;
  input GTNORTHREFCLK0;
  input GTNORTHREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTRESETSEL;
  input GTRXRESET;
  input GTSOUTHREFCLK0;
  input GTSOUTHREFCLK1;
  input GTTXRESET;
  input QPLLCLK;
  input QPLLREFCLK;
  input RESETOVRD;
  input RX8B10BEN;
  input RXBUFRESET;
  input RXCDRFREQRESET;
  input RXCDRHOLD;
  input RXCDROVRDEN;
  input RXCDRRESET;
  input RXCDRRESETRSV;
  input RXCHBONDEN;
  input RXCHBONDMASTER;
  input RXCHBONDSLAVE;
  input RXCOMMADETEN;
  input RXDDIEN;
  input RXDFEAGCHOLD;
  input RXDFEAGCOVRDEN;
  input RXDFECM1EN;
  input RXDFELFHOLD;
  input RXDFELFOVRDEN;
  input RXDFELPMRESET;
  input RXDFESLIDETAPADAPTEN;
  input RXDFESLIDETAPHOLD;
  input RXDFESLIDETAPINITOVRDEN;
  input RXDFESLIDETAPONLYADAPTEN;
  input RXDFESLIDETAPOVRDEN;
  input RXDFESLIDETAPSTROBE;
  input RXDFETAP2HOLD;
  input RXDFETAP2OVRDEN;
  input RXDFETAP3HOLD;
  input RXDFETAP3OVRDEN;
  input RXDFETAP4HOLD;
  input RXDFETAP4OVRDEN;
  input RXDFETAP5HOLD;
  input RXDFETAP5OVRDEN;
  input RXDFETAP6HOLD;
  input RXDFETAP6OVRDEN;
  input RXDFETAP7HOLD;
  input RXDFETAP7OVRDEN;
  input RXDFEUTHOLD;
  input RXDFEUTOVRDEN;
  input RXDFEVPHOLD;
  input RXDFEVPOVRDEN;
  input RXDFEVSEN;
  input RXDFEXYDEN;
  input RXDLYBYPASS;
  input RXDLYEN;
  input RXDLYOVRDEN;
  input RXDLYSRESET;
  input RXGEARBOXSLIP;
  input RXLPMEN;
  input RXLPMHFHOLD;
  input RXLPMHFOVRDEN;
  input RXLPMLFHOLD;
  input RXLPMLFKLOVRDEN;
  input RXMCOMMAALIGNEN;
  input RXOOBRESET;
  input RXOSCALRESET;
  input RXOSHOLD;
  input RXOSINTEN;
  input RXOSINTHOLD;
  input RXOSINTNTRLEN;
  input RXOSINTOVRDEN;
  input RXOSINTSTROBE;
  input RXOSINTTESTOVRDEN;
  input RXOSOVRDEN;
  input RXPCOMMAALIGNEN;
  input RXPCSRESET;
  input RXPHALIGN;
  input RXPHALIGNEN;
  input RXPHDLYPD;
  input RXPHDLYRESET;
  input RXPHOVRDEN;
  input RXPMARESET;
  input RXPOLARITY;
  input RXPRBSCNTRESET;
  input RXQPIEN;
  input RXRATEMODE;
  input RXSLIDE;
  input RXSYNCALLIN;
  input RXSYNCIN;
  input RXSYNCMODE;
  input RXUSERRDY;
  input RXUSRCLK2;
  input RXUSRCLK;
  input SETERRSTATUS;
  input SIGVALIDCLK;
  input TX8B10BEN;
  input TXCOMINIT;
  input TXCOMSAS;
  input TXCOMWAKE;
  input TXDEEMPH;
  input TXDETECTRX;
  input TXDIFFPD;
  input TXDLYBYPASS;
  input TXDLYEN;
  input TXDLYHOLD;
  input TXDLYOVRDEN;
  input TXDLYSRESET;
  input TXDLYUPDOWN;
  input TXELECIDLE;
  input TXINHIBIT;
  input TXPCSRESET;
  input TXPDELECIDLEMODE;
  input TXPHALIGN;
  input TXPHALIGNEN;
  input TXPHDLYPD;
  input TXPHDLYRESET;
  input TXPHDLYTSTCLK;
  input TXPHINIT;
  input TXPHOVRDEN;
  input TXPIPPMEN;
  input TXPIPPMOVRDEN;
  input TXPIPPMPD;
  input TXPIPPMSEL;
  input TXPISOPD;
  input TXPMARESET;
  input TXPOLARITY;
  input TXPOSTCURSORINV;
  input TXPRBSFORCEERR;
  input TXPRECURSORINV;
  input TXQPIBIASEN;
  input TXQPISTRONGPDOWN;
  input TXQPIWEAKPUP;
  input TXRATEMODE;
  input TXSTARTSEQ;
  input TXSWING;
  input TXSYNCALLIN;
  input TXSYNCIN;
  input TXSYNCMODE;
  input TXUSERRDY;
  input TXUSRCLK2;
  input TXUSRCLK;
  input [13:0] RXADAPTSELTEST;
  input [15:0] DRPDI;
  input [15:0] GTRSVD;
  input [15:0] PCSRSVDIN;
  input [19:0] TSTIN;
  input [1:0] RXELECIDLEMODE;
  input [1:0] RXMONITORSEL;
  input [1:0] RXPD;
  input [1:0] RXSYSCLKSEL;
  input [1:0] TXPD;
  input [1:0] TXSYSCLKSEL;
  input [2:0] CPLLREFCLKSEL;
  input [2:0] LOOPBACK;
  input [2:0] RXCHBONDLEVEL;
  input [2:0] RXOUTCLKSEL;
  input [2:0] RXPRBSSEL;
  input [2:0] RXRATE;
  input [2:0] TXBUFDIFFCTRL;
  input [2:0] TXHEADER;
  input [2:0] TXMARGIN;
  input [2:0] TXOUTCLKSEL;
  input [2:0] TXPRBSSEL;
  input [2:0] TXRATE;
  input [3:0] RXOSINTCFG;
  input [3:0] RXOSINTID0;
  input [3:0] TXDIFFCTRL;
  input [4:0] PCSRSVDIN2;
  input [4:0] PMARSVDIN;
  input [4:0] RXCHBONDI;
  input [4:0] RXDFEAGCTRL;
  input [4:0] RXDFESLIDETAP;
  input [4:0] TXPIPPMSTEPSIZE;
  input [4:0] TXPOSTCURSOR;
  input [4:0] TXPRECURSOR;
  input [5:0] RXDFESLIDETAPID;
  input [63:0] TXDATA;
  input [6:0] TXMAINCURSOR;
  input [6:0] TXSEQUENCE;
  input [7:0] TX8B10BBYPASS;
  input [7:0] TXCHARDISPMODE;
  input [7:0] TXCHARDISPVAL;
  input [7:0] TXCHARISK;
  input [8:0] DRPADDR;
endmodule

    
module GTHE2_COMMON (
  DRPDO,
  DRPRDY,
  PMARSVDOUT,
  QPLLDMONITOR,
  QPLLFBCLKLOST,
  QPLLLOCK,
  QPLLOUTCLK,
  QPLLOUTREFCLK,
  QPLLREFCLKLOST,
  REFCLKOUTMONITOR,

  BGBYPASSB,
  BGMONITORENB,
  BGPDB,
  BGRCALOVRD,
  BGRCALOVRDENB,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  GTGREFCLK,
  GTNORTHREFCLK0,
  GTNORTHREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTSOUTHREFCLK0,
  GTSOUTHREFCLK1,
  PMARSVD,
  QPLLLOCKDETCLK,
  QPLLLOCKEN,
  QPLLOUTRESET,
  QPLLPD,
  QPLLREFCLKSEL,
  QPLLRESET,
  QPLLRSVD1,
  QPLLRSVD2,
  RCALENB
);
  parameter LOC = "UNPLACED";
  parameter [63:0] BIAS_CFG = 64'h0000040000001000;
  parameter [31:0] COMMON_CFG = 32'h0000001C;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK_INVERTED = 1'b0;
  parameter [0:0] IS_QPLLLOCKDETCLK_INVERTED = 1'b0;
  parameter [26:0] QPLL_CFG = 27'h0480181;
  parameter [3:0] QPLL_CLKOUT_CFG = 4'b0000;
  parameter [5:0] QPLL_COARSE_FREQ_OVRD = 6'b010000;
  parameter [0:0] QPLL_COARSE_FREQ_OVRD_EN = 1'b0;
  parameter [9:0] QPLL_CP = 10'b0000011111;
  parameter [0:0] QPLL_CP_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_DMONITOR_SEL = 1'b0;
  parameter [9:0] QPLL_FBDIV = 10'b0000000000;
  parameter [0:0] QPLL_FBDIV_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_FBDIV_RATIO = 1'b0;
  parameter [23:0] QPLL_INIT_CFG = 24'h000006;
  parameter [15:0] QPLL_LOCK_CFG = 16'h01E8;
  parameter [3:0] QPLL_LPF = 4'b1111;
  parameter integer QPLL_REFCLK_DIV = 2;
  parameter [0:0] QPLL_RP_COMP = 1'b0;
  parameter [1:0] QPLL_VTRL_RESET = 2'b00;
  parameter [1:0] RCAL_CFG = 2'b00;
  parameter [15:0] RSVD_ATTR0 = 16'h0000;
  parameter [15:0] RSVD_ATTR1 = 16'h0000;
  parameter [2:0] SIM_QPLLREFCLK_SEL = 3'b001;
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_VERSION = "1.1";
  output DRPRDY;
  output QPLLFBCLKLOST;
  output QPLLLOCK;
  output QPLLOUTCLK;
  output QPLLOUTREFCLK;
  output QPLLREFCLKLOST;
  output REFCLKOUTMONITOR;
  output [15:0] DRPDO;
  output [15:0] PMARSVDOUT;
  output [7:0] QPLLDMONITOR;
  input BGBYPASSB;
  input BGMONITORENB;
  input BGPDB;
  input BGRCALOVRDENB;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input GTGREFCLK;
  input GTNORTHREFCLK0;
  input GTNORTHREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTSOUTHREFCLK0;
  input GTSOUTHREFCLK1;
  input QPLLLOCKDETCLK;
  input QPLLLOCKEN;
  input QPLLOUTRESET;
  input QPLLPD;
  input QPLLRESET;
  input RCALENB;
  input [15:0] DRPDI;
  input [15:0] QPLLRSVD1;
  input [2:0] QPLLREFCLKSEL;
  input [4:0] BGRCALOVRD;
  input [4:0] QPLLRSVD2;
  input [7:0] DRPADDR;
  input [7:0] PMARSVD;
endmodule


module GTHE3_CHANNEL #(
  parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0,
  parameter [0:0] ACJTAG_MODE = 1'b0,
  parameter [0:0] ACJTAG_RESET = 1'b0,
  parameter [15:0] ADAPT_CFG0 = 16'hF800,
  parameter [15:0] ADAPT_CFG1 = 16'h0000,
  parameter ALIGN_COMMA_DOUBLE = "FALSE",
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111,
  parameter integer ALIGN_COMMA_WORD = 1,
  parameter ALIGN_MCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011,
  parameter ALIGN_PCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100,
  parameter [0:0] A_RXOSCALRESET = 1'b0,
  parameter [0:0] A_RXPROGDIVRESET = 1'b0,
  parameter [0:0] A_TXPROGDIVRESET = 1'b0,
  parameter CBCC_DATA_SOURCE_SEL = "DECODED",
  parameter [0:0] CDR_SWAP_MODE_EN = 1'b0,
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE",
  parameter integer CHAN_BOND_MAX_SKEW = 7,
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100,
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111,
  parameter CHAN_BOND_SEQ_2_USE = "FALSE",
  parameter integer CHAN_BOND_SEQ_LEN = 2,
  parameter CLK_CORRECT_USE = "TRUE",
  parameter CLK_COR_KEEP_IDLE = "FALSE",
  parameter integer CLK_COR_MAX_LAT = 20,
  parameter integer CLK_COR_MIN_LAT = 18,
  parameter CLK_COR_PRECEDENCE = "TRUE",
  parameter integer CLK_COR_REPEAT_WAIT = 0,
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100,
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111,
  parameter CLK_COR_SEQ_2_USE = "FALSE",
  parameter integer CLK_COR_SEQ_LEN = 2,
  parameter [15:0] CPLL_CFG0 = 16'h20F8,
  parameter [15:0] CPLL_CFG1 = 16'hA494,
  parameter [15:0] CPLL_CFG2 = 16'hF001,
  parameter [5:0] CPLL_CFG3 = 6'h00,
  parameter integer CPLL_FBDIV = 4,
  parameter integer CPLL_FBDIV_45 = 4,
  parameter [15:0] CPLL_INIT_CFG0 = 16'h001E,
  parameter [7:0] CPLL_INIT_CFG1 = 8'h00,
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8,
  parameter integer CPLL_REFCLK_DIV = 1,
  parameter [1:0] DDI_CTRL = 2'b00,
  parameter integer DDI_REALIGN_WAIT = 15,
  parameter DEC_MCOMMA_DETECT = "TRUE",
  parameter DEC_PCOMMA_DETECT = "TRUE",
  parameter DEC_VALID_COMMA_ONLY = "TRUE",
  parameter [0:0] DFE_D_X_REL_POS = 1'b0,
  parameter [0:0] DFE_VCM_COMP_EN = 1'b0,
  parameter [9:0] DMONITOR_CFG0 = 10'h000,
  parameter [7:0] DMONITOR_CFG1 = 8'h00,
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0,
  parameter [5:0] ES_CONTROL = 6'b000000,
  parameter ES_ERRDET_EN = "FALSE",
  parameter ES_EYE_SCAN_EN = "FALSE",
  parameter [11:0] ES_HORZ_OFFSET = 12'h000,
  parameter [9:0] ES_PMA_CFG = 10'b0000000000,
  parameter [4:0] ES_PRESCALE = 5'b00000,
  parameter [15:0] ES_QUALIFIER0 = 16'h0000,
  parameter [15:0] ES_QUALIFIER1 = 16'h0000,
  parameter [15:0] ES_QUALIFIER2 = 16'h0000,
  parameter [15:0] ES_QUALIFIER3 = 16'h0000,
  parameter [15:0] ES_QUALIFIER4 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK0 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK1 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK2 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK3 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK4 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK0 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK1 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK2 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK3 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK4 = 16'h0000,
  parameter [10:0] EVODD_PHI_CFG = 11'b00000000000,
  parameter [0:0] EYE_SCAN_SWAP_EN = 1'b0,
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111,
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111,
  parameter FTS_LANE_DESKEW_EN = "FALSE",
  parameter [4:0] GEARBOX_MODE = 5'b00000,
  parameter [0:0] GM_BIAS_SELECT = 1'b0,
  parameter [0:0] LOCAL_MASTER = 1'b0,
  parameter [1:0] OOBDIVCTL = 2'b00,
  parameter [0:0] OOB_PWRUP = 1'b0,
  parameter PCI3_AUTO_REALIGN = "FRST_SMPL",
  parameter [0:0] PCI3_PIPE_RX_ELECIDLE = 1'b1,
  parameter [1:0] PCI3_RX_ASYNC_EBUF_BYPASS = 2'b00,
  parameter [0:0] PCI3_RX_ELECIDLE_EI2_ENABLE = 1'b0,
  parameter [5:0] PCI3_RX_ELECIDLE_H2L_COUNT = 6'b000000,
  parameter [2:0] PCI3_RX_ELECIDLE_H2L_DISABLE = 3'b000,
  parameter [5:0] PCI3_RX_ELECIDLE_HI_COUNT = 6'b000000,
  parameter [0:0] PCI3_RX_ELECIDLE_LP4_DISABLE = 1'b0,
  parameter [0:0] PCI3_RX_FIFO_DISABLE = 1'b0,
  parameter [15:0] PCIE_BUFG_DIV_CTRL = 16'h0000,
  parameter [15:0] PCIE_RXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_RXPMA_CFG = 16'h0000,
  parameter [15:0] PCIE_TXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_TXPMA_CFG = 16'h0000,
  parameter PCS_PCIE_EN = "FALSE",
  parameter [15:0] PCS_RSVD0 = 16'b0000000000000000,
  parameter [2:0] PCS_RSVD1 = 3'b000,
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C,
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19,
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64,
  parameter [1:0] PLL_SEL_MODE_GEN12 = 2'h0,
  parameter [1:0] PLL_SEL_MODE_GEN3 = 2'h0,
  parameter [15:0] PMA_RSV1 = 16'h0000,
  parameter [2:0] PROCESS_PAR = 3'b010,
  parameter [0:0] RATE_SW_USE_DRP = 1'b0,
  parameter [0:0] RESET_POWERSAVE_DISABLE = 1'b0,
  parameter [4:0] RXBUFRESET_TIME = 5'b00001,
  parameter RXBUF_ADDR_MODE = "FULL",
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000,
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000,
  parameter RXBUF_EN = "TRUE",
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE",
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE",
  parameter RXBUF_RESET_ON_EIDLE = "FALSE",
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE",
  parameter integer RXBUF_THRESH_OVFLW = 0,
  parameter RXBUF_THRESH_OVRD = "FALSE",
  parameter integer RXBUF_THRESH_UNDFLW = 4,
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001,
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001,
  parameter [15:0] RXCDR_CFG0 = 16'h0000,
  parameter [15:0] RXCDR_CFG0_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG1 = 16'h0080,
  parameter [15:0] RXCDR_CFG1_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG2 = 16'h07E6,
  parameter [15:0] RXCDR_CFG2_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG3 = 16'h0000,
  parameter [15:0] RXCDR_CFG3_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG4 = 16'h0000,
  parameter [15:0] RXCDR_CFG4_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG5 = 16'h0000,
  parameter [15:0] RXCDR_CFG5_GEN3 = 16'h0000,
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0,
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0,
  parameter [15:0] RXCDR_LOCK_CFG0 = 16'h5080,
  parameter [15:0] RXCDR_LOCK_CFG1 = 16'h07E0,
  parameter [15:0] RXCDR_LOCK_CFG2 = 16'h7C42,
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0,
  parameter [15:0] RXCFOK_CFG0 = 16'h4000,
  parameter [15:0] RXCFOK_CFG1 = 16'h0060,
  parameter [15:0] RXCFOK_CFG2 = 16'h000E,
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111,
  parameter [15:0] RXDFELPM_KL_CFG0 = 16'h0000,
  parameter [15:0] RXDFELPM_KL_CFG1 = 16'h0032,
  parameter [15:0] RXDFELPM_KL_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_CFG0 = 16'h0A00,
  parameter [15:0] RXDFE_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG1 = 16'h7840,
  parameter [15:0] RXDFE_GC_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_H3_CFG0 = 16'h4000,
  parameter [15:0] RXDFE_H3_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_H4_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H4_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_H5_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H5_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_H6_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H6_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_H7_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H7_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_H8_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H8_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_H9_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_H9_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HA_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_HA_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HB_CFG0 = 16'h2000,
  parameter [15:0] RXDFE_HB_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HC_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HD_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HD_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HE_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HE_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_HF_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HF_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_OS_CFG0 = 16'h8000,
  parameter [15:0] RXDFE_OS_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_UT_CFG0 = 16'h8000,
  parameter [15:0] RXDFE_UT_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_VP_CFG0 = 16'hAA00,
  parameter [15:0] RXDFE_VP_CFG1 = 16'h0033,
  parameter [15:0] RXDLY_CFG = 16'h001F,
  parameter [15:0] RXDLY_LCFG = 16'h0030,
  parameter RXELECIDLE_CFG = "Sigcfg_4",
  parameter integer RXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter RXGEARBOX_EN = "FALSE",
  parameter [4:0] RXISCANRESET_TIME = 5'b00001,
  parameter [15:0] RXLPM_CFG = 16'h0000,
  parameter [15:0] RXLPM_GC_CFG = 16'h0000,
  parameter [15:0] RXLPM_KH_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_KH_CFG1 = 16'h0002,
  parameter [15:0] RXLPM_OS_CFG0 = 16'h8000,
  parameter [15:0] RXLPM_OS_CFG1 = 16'h0002,
  parameter [8:0] RXOOB_CFG = 9'b000000110,
  parameter RXOOB_CLK_CFG = "PMA",
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011,
  parameter integer RXOUT_DIV = 4,
  parameter [4:0] RXPCSRESET_TIME = 5'b00001,
  parameter [15:0] RXPHBEACON_CFG = 16'h0000,
  parameter [15:0] RXPHDLY_CFG = 16'h2020,
  parameter [15:0] RXPHSAMP_CFG = 16'h2100,
  parameter [15:0] RXPHSLIP_CFG = 16'h6622,
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000,
  parameter [1:0] RXPI_CFG0 = 2'b00,
  parameter [1:0] RXPI_CFG1 = 2'b00,
  parameter [1:0] RXPI_CFG2 = 2'b00,
  parameter [1:0] RXPI_CFG3 = 2'b00,
  parameter [0:0] RXPI_CFG4 = 1'b0,
  parameter [0:0] RXPI_CFG5 = 1'b1,
  parameter [2:0] RXPI_CFG6 = 3'b000,
  parameter [0:0] RXPI_LPM = 1'b0,
  parameter [0:0] RXPI_VREFSEL = 1'b0,
  parameter RXPMACLK_SEL = "DATA",
  parameter [4:0] RXPMARESET_TIME = 5'b00001,
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0,
  parameter integer RXPRBS_LINKACQ_CNT = 15,
  parameter integer RXSLIDE_AUTO_WAIT = 7,
  parameter RXSLIDE_MODE = "OFF",
  parameter [0:0] RXSYNC_MULTILANE = 1'b0,
  parameter [0:0] RXSYNC_OVRD = 1'b0,
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0,
  parameter [0:0] RX_AFE_CM_EN = 1'b0,
  parameter [15:0] RX_BIAS_CFG0 = 16'h0AD4,
  parameter [5:0] RX_BUFFER_CFG = 6'b000000,
  parameter [0:0] RX_CAPFF_SARC_ENB = 1'b0,
  parameter integer RX_CLK25_DIV = 8,
  parameter [0:0] RX_CLKMUX_EN = 1'b1,
  parameter [4:0] RX_CLK_SLIP_OVRD = 5'b00000,
  parameter [3:0] RX_CM_BUF_CFG = 4'b1010,
  parameter [0:0] RX_CM_BUF_PD = 1'b0,
  parameter [1:0] RX_CM_SEL = 2'b11,
  parameter [3:0] RX_CM_TRIM = 4'b0100,
  parameter [7:0] RX_CTLE3_LPF = 8'b00000000,
  parameter integer RX_DATA_WIDTH = 20,
  parameter [5:0] RX_DDI_SEL = 6'b000000,
  parameter RX_DEFER_RESET_BUF_EN = "TRUE",
  parameter [3:0] RX_DFELPM_CFG0 = 4'b0110,
  parameter [0:0] RX_DFELPM_CFG1 = 1'b0,
  parameter [0:0] RX_DFELPM_KLKH_AGC_STUP_EN = 1'b1,
  parameter [1:0] RX_DFE_AGC_CFG0 = 2'b00,
  parameter [2:0] RX_DFE_AGC_CFG1 = 3'b100,
  parameter [1:0] RX_DFE_KL_LPM_KH_CFG0 = 2'b01,
  parameter [2:0] RX_DFE_KL_LPM_KH_CFG1 = 3'b010,
  parameter [1:0] RX_DFE_KL_LPM_KL_CFG0 = 2'b01,
  parameter [2:0] RX_DFE_KL_LPM_KL_CFG1 = 3'b010,
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0,
  parameter RX_DISPERR_SEQ_MATCH = "TRUE",
  parameter [4:0] RX_DIVRESET_TIME = 5'b00001,
  parameter [0:0] RX_EN_HI_LR = 1'b0,
  parameter [6:0] RX_EYESCAN_VS_CODE = 7'b0000000,
  parameter [0:0] RX_EYESCAN_VS_NEG_DIR = 1'b0,
  parameter [1:0] RX_EYESCAN_VS_RANGE = 2'b00,
  parameter [0:0] RX_EYESCAN_VS_UT_SIGN = 1'b0,
  parameter [0:0] RX_FABINT_USRCLK_FLOP = 1'b0,
  parameter integer RX_INT_DATAWIDTH = 1,
  parameter [0:0] RX_PMA_POWER_SAVE = 1'b0,
  parameter real RX_PROGDIV_CFG = 0.0,
  parameter [2:0] RX_SAMPLE_PERIOD = 3'b101,
  parameter integer RX_SIG_VALID_DLY = 11,
  parameter [0:0] RX_SUM_DFETAPREP_EN = 1'b0,
  parameter [3:0] RX_SUM_IREF_TUNE = 4'b0000,
  parameter [1:0] RX_SUM_RES_CTRL = 2'b00,
  parameter [3:0] RX_SUM_VCMTUNE = 4'b0000,
  parameter [0:0] RX_SUM_VCM_OVWR = 1'b0,
  parameter [2:0] RX_SUM_VREF_TUNE = 3'b000,
  parameter [1:0] RX_TUNE_AFE_OS = 2'b00,
  parameter [0:0] RX_WIDEMODE_CDR = 1'b0,
  parameter RX_XCLK_SEL = "RXDES",
  parameter integer SAS_MAX_COM = 64,
  parameter integer SAS_MIN_COM = 36,
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111,
  parameter [2:0] SATA_BURST_VAL = 3'b100,
  parameter SATA_CPLL_CFG = "VCO_3000MHZ",
  parameter [2:0] SATA_EIDLE_VAL = 3'b100,
  parameter integer SATA_MAX_BURST = 8,
  parameter integer SATA_MAX_INIT = 21,
  parameter integer SATA_MAX_WAKE = 7,
  parameter integer SATA_MIN_BURST = 4,
  parameter integer SATA_MIN_INIT = 12,
  parameter integer SATA_MIN_WAKE = 4,
  parameter SHOW_REALIGN_COMMA = "TRUE",
  parameter SIM_MODE = "FAST",
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter [0:0] SIM_TX_EIDLE_DRIVE_LEVEL = 1'b0,
  parameter integer SIM_VERSION = 2,
  parameter [1:0] TAPDLY_SET_TX = 2'h0,
  parameter [3:0] TEMPERATUR_PAR = 4'b0010,
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000,
  parameter [2:0] TERM_RCAL_OVRD = 3'b000,
  parameter [7:0] TRANS_TIME_RATE = 8'h0E,
  parameter [7:0] TST_RSV0 = 8'h00,
  parameter [7:0] TST_RSV1 = 8'h00,
  parameter TXBUF_EN = "TRUE",
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE",
  parameter [15:0] TXDLY_CFG = 16'h001F,
  parameter [15:0] TXDLY_LCFG = 16'h0030,
  parameter [3:0] TXDRVBIAS_N = 4'b1010,
  parameter [3:0] TXDRVBIAS_P = 4'b1100,
  parameter TXFIFO_ADDR_CFG = "LOW",
  parameter integer TXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter TXGEARBOX_EN = "FALSE",
  parameter integer TXOUT_DIV = 4,
  parameter [4:0] TXPCSRESET_TIME = 5'b00001,
  parameter [15:0] TXPHDLY_CFG0 = 16'h2020,
  parameter [15:0] TXPHDLY_CFG1 = 16'h0001,
  parameter [15:0] TXPH_CFG = 16'h0980,
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000,
  parameter [1:0] TXPI_CFG0 = 2'b00,
  parameter [1:0] TXPI_CFG1 = 2'b00,
  parameter [1:0] TXPI_CFG2 = 2'b00,
  parameter [0:0] TXPI_CFG3 = 1'b0,
  parameter [0:0] TXPI_CFG4 = 1'b1,
  parameter [2:0] TXPI_CFG5 = 3'b000,
  parameter [0:0] TXPI_GRAY_SEL = 1'b0,
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0,
  parameter [0:0] TXPI_LPM = 1'b0,
  parameter TXPI_PPMCLK_SEL = "TXUSRCLK2",
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000,
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000,
  parameter [0:0] TXPI_VREFSEL = 1'b0,
  parameter [4:0] TXPMARESET_TIME = 5'b00001,
  parameter [0:0] TXSYNC_MULTILANE = 1'b0,
  parameter [0:0] TXSYNC_OVRD = 1'b0,
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0,
  parameter integer TX_CLK25_DIV = 8,
  parameter [0:0] TX_CLKMUX_EN = 1'b1,
  parameter integer TX_DATA_WIDTH = 20,
  parameter [5:0] TX_DCD_CFG = 6'b000010,
  parameter [0:0] TX_DCD_EN = 1'b0,
  parameter [5:0] TX_DEEMPH0 = 6'b000000,
  parameter [5:0] TX_DEEMPH1 = 6'b000000,
  parameter [4:0] TX_DIVRESET_TIME = 5'b00001,
  parameter TX_DRIVE_MODE = "DIRECT",
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110,
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100,
  parameter [0:0] TX_EML_PHI_TUNE = 1'b0,
  parameter [0:0] TX_FABINT_USRCLK_FLOP = 1'b0,
  parameter [0:0] TX_IDLE_DATA_ZERO = 1'b0,
  parameter integer TX_INT_DATAWIDTH = 1,
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE",
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0,
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110,
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001,
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101,
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010,
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110,
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100,
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010,
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000,
  parameter [2:0] TX_MODE_SEL = 3'b000,
  parameter [0:0] TX_PMADATA_OPT = 1'b0,
  parameter [0:0] TX_PMA_POWER_SAVE = 1'b0,
  parameter TX_PROGCLK_SEL = "POSTPI",
  parameter real TX_PROGDIV_CFG = 0.0,
  parameter [0:0] TX_QPI_STATUS_EN = 1'b0,
  parameter [13:0] TX_RXDETECT_CFG = 14'h0032,
  parameter [2:0] TX_RXDETECT_REF = 3'b100,
  parameter [2:0] TX_SAMPLE_PERIOD = 3'b101,
  parameter [0:0] TX_SARC_LPBK_ENB = 1'b0,
  parameter TX_XCLK_SEL = "TXOUT",
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0,
  parameter [1:0] WB_MODE = 2'b00
)(
  output [2:0] BUFGTCE,
  output [2:0] BUFGTCEMASK,
  output [8:0] BUFGTDIV,
  output [2:0] BUFGTRESET,
  output [2:0] BUFGTRSTMASK,
  output CPLLFBCLKLOST,
  output CPLLLOCK,
  output CPLLREFCLKLOST,
  output [16:0] DMONITOROUT,
  output [15:0] DRPDO,
  output DRPRDY,
  output EYESCANDATAERROR,
  output GTHTXN,
  output GTHTXP,
  output GTPOWERGOOD,
  output GTREFCLKMONITOR,
  output PCIERATEGEN3,
  output PCIERATEIDLE,
  output [1:0] PCIERATEQPLLPD,
  output [1:0] PCIERATEQPLLRESET,
  output PCIESYNCTXSYNCDONE,
  output PCIEUSERGEN3RDY,
  output PCIEUSERPHYSTATUSRST,
  output PCIEUSERRATESTART,
  output [11:0] PCSRSVDOUT,
  output PHYSTATUS,
  output [7:0] PINRSRVDAS,
  output RESETEXCEPTION,
  output [2:0] RXBUFSTATUS,
  output RXBYTEISALIGNED,
  output RXBYTEREALIGN,
  output RXCDRLOCK,
  output RXCDRPHDONE,
  output RXCHANBONDSEQ,
  output RXCHANISALIGNED,
  output RXCHANREALIGN,
  output [4:0] RXCHBONDO,
  output [1:0] RXCLKCORCNT,
  output RXCOMINITDET,
  output RXCOMMADET,
  output RXCOMSASDET,
  output RXCOMWAKEDET,
  output [15:0] RXCTRL0,
  output [15:0] RXCTRL1,
  output [7:0] RXCTRL2,
  output [7:0] RXCTRL3,
  output [127:0] RXDATA,
  output [7:0] RXDATAEXTENDRSVD,
  output [1:0] RXDATAVALID,
  output RXDLYSRESETDONE,
  output RXELECIDLE,
  output [5:0] RXHEADER,
  output [1:0] RXHEADERVALID,
  output [6:0] RXMONITOROUT,
  output RXOSINTDONE,
  output RXOSINTSTARTED,
  output RXOSINTSTROBEDONE,
  output RXOSINTSTROBESTARTED,
  output RXOUTCLK,
  output RXOUTCLKFABRIC,
  output RXOUTCLKPCS,
  output RXPHALIGNDONE,
  output RXPHALIGNERR,
  output RXPMARESETDONE,
  output RXPRBSERR,
  output RXPRBSLOCKED,
  output RXPRGDIVRESETDONE,
  output RXQPISENN,
  output RXQPISENP,
  output RXRATEDONE,
  output RXRECCLKOUT,
  output RXRESETDONE,
  output RXSLIDERDY,
  output RXSLIPDONE,
  output RXSLIPOUTCLKRDY,
  output RXSLIPPMARDY,
  output [1:0] RXSTARTOFSEQ,
  output [2:0] RXSTATUS,
  output RXSYNCDONE,
  output RXSYNCOUT,
  output RXVALID,
  output [1:0] TXBUFSTATUS,
  output TXCOMFINISH,
  output TXDLYSRESETDONE,
  output TXOUTCLK,
  output TXOUTCLKFABRIC,
  output TXOUTCLKPCS,
  output TXPHALIGNDONE,
  output TXPHINITDONE,
  output TXPMARESETDONE,
  output TXPRGDIVRESETDONE,
  output TXQPISENN,
  output TXQPISENP,
  output TXRATEDONE,
  output TXRESETDONE,
  output TXSYNCDONE,
  output TXSYNCOUT,

  input CFGRESET,
  input CLKRSVD0,
  input CLKRSVD1,
  input CPLLLOCKDETCLK,
  input CPLLLOCKEN,
  input CPLLPD,
  input [2:0] CPLLREFCLKSEL,
  input CPLLRESET,
  input DMONFIFORESET,
  input DMONITORCLK,
  input [8:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input EVODDPHICALDONE,
  input EVODDPHICALSTART,
  input EVODDPHIDRDEN,
  input EVODDPHIDWREN,
  input EVODDPHIXRDEN,
  input EVODDPHIXWREN,
  input EYESCANMODE,
  input EYESCANRESET,
  input EYESCANTRIGGER,
  input GTGREFCLK,
  input GTHRXN,
  input GTHRXP,
  input GTNORTHREFCLK0,
  input GTNORTHREFCLK1,
  input GTREFCLK0,
  input GTREFCLK1,
  input GTRESETSEL,
  input [15:0] GTRSVD,
  input GTRXRESET,
  input GTSOUTHREFCLK0,
  input GTSOUTHREFCLK1,
  input GTTXRESET,
  input [2:0] LOOPBACK,
  input LPBKRXTXSEREN,
  input LPBKTXRXSEREN,
  input PCIEEQRXEQADAPTDONE,
  input PCIERSTIDLE,
  input PCIERSTTXSYNCSTART,
  input PCIEUSERRATEDONE,
  input [15:0] PCSRSVDIN,
  input [4:0] PCSRSVDIN2,
  input [4:0] PMARSVDIN,
  input QPLL0CLK,
  input QPLL0REFCLK,
  input QPLL1CLK,
  input QPLL1REFCLK,
  input RESETOVRD,
  input RSTCLKENTX,
  input RX8B10BEN,
  input RXBUFRESET,
  input RXCDRFREQRESET,
  input RXCDRHOLD,
  input RXCDROVRDEN,
  input RXCDRRESET,
  input RXCDRRESETRSV,
  input RXCHBONDEN,
  input [4:0] RXCHBONDI,
  input [2:0] RXCHBONDLEVEL,
  input RXCHBONDMASTER,
  input RXCHBONDSLAVE,
  input RXCOMMADETEN,
  input [1:0] RXDFEAGCCTRL,
  input RXDFEAGCHOLD,
  input RXDFEAGCOVRDEN,
  input RXDFELFHOLD,
  input RXDFELFOVRDEN,
  input RXDFELPMRESET,
  input RXDFETAP10HOLD,
  input RXDFETAP10OVRDEN,
  input RXDFETAP11HOLD,
  input RXDFETAP11OVRDEN,
  input RXDFETAP12HOLD,
  input RXDFETAP12OVRDEN,
  input RXDFETAP13HOLD,
  input RXDFETAP13OVRDEN,
  input RXDFETAP14HOLD,
  input RXDFETAP14OVRDEN,
  input RXDFETAP15HOLD,
  input RXDFETAP15OVRDEN,
  input RXDFETAP2HOLD,
  input RXDFETAP2OVRDEN,
  input RXDFETAP3HOLD,
  input RXDFETAP3OVRDEN,
  input RXDFETAP4HOLD,
  input RXDFETAP4OVRDEN,
  input RXDFETAP5HOLD,
  input RXDFETAP5OVRDEN,
  input RXDFETAP6HOLD,
  input RXDFETAP6OVRDEN,
  input RXDFETAP7HOLD,
  input RXDFETAP7OVRDEN,
  input RXDFETAP8HOLD,
  input RXDFETAP8OVRDEN,
  input RXDFETAP9HOLD,
  input RXDFETAP9OVRDEN,
  input RXDFEUTHOLD,
  input RXDFEUTOVRDEN,
  input RXDFEVPHOLD,
  input RXDFEVPOVRDEN,
  input RXDFEVSEN,
  input RXDFEXYDEN,
  input RXDLYBYPASS,
  input RXDLYEN,
  input RXDLYOVRDEN,
  input RXDLYSRESET,
  input [1:0] RXELECIDLEMODE,
  input RXGEARBOXSLIP,
  input RXLATCLK,
  input RXLPMEN,
  input RXLPMGCHOLD,
  input RXLPMGCOVRDEN,
  input RXLPMHFHOLD,
  input RXLPMHFOVRDEN,
  input RXLPMLFHOLD,
  input RXLPMLFKLOVRDEN,
  input RXLPMOSHOLD,
  input RXLPMOSOVRDEN,
  input RXMCOMMAALIGNEN,
  input [1:0] RXMONITORSEL,
  input RXOOBRESET,
  input RXOSCALRESET,
  input RXOSHOLD,
  input [3:0] RXOSINTCFG,
  input RXOSINTEN,
  input RXOSINTHOLD,
  input RXOSINTOVRDEN,
  input RXOSINTSTROBE,
  input RXOSINTTESTOVRDEN,
  input RXOSOVRDEN,
  input [2:0] RXOUTCLKSEL,
  input RXPCOMMAALIGNEN,
  input RXPCSRESET,
  input [1:0] RXPD,
  input RXPHALIGN,
  input RXPHALIGNEN,
  input RXPHDLYPD,
  input RXPHDLYRESET,
  input RXPHOVRDEN,
  input [1:0] RXPLLCLKSEL,
  input RXPMARESET,
  input RXPOLARITY,
  input RXPRBSCNTRESET,
  input [3:0] RXPRBSSEL,
  input RXPROGDIVRESET,
  input RXQPIEN,
  input [2:0] RXRATE,
  input RXRATEMODE,
  input RXSLIDE,
  input RXSLIPOUTCLK,
  input RXSLIPPMA,
  input RXSYNCALLIN,
  input RXSYNCIN,
  input RXSYNCMODE,
  input [1:0] RXSYSCLKSEL,
  input RXUSERRDY,
  input RXUSRCLK,
  input RXUSRCLK2,
  input SIGVALIDCLK,
  input [19:0] TSTIN,
  input [7:0] TX8B10BBYPASS,
  input TX8B10BEN,
  input [2:0] TXBUFDIFFCTRL,
  input TXCOMINIT,
  input TXCOMSAS,
  input TXCOMWAKE,
  input [15:0] TXCTRL0,
  input [15:0] TXCTRL1,
  input [7:0] TXCTRL2,
  input [127:0] TXDATA,
  input [7:0] TXDATAEXTENDRSVD,
  input TXDEEMPH,
  input TXDETECTRX,
  input [3:0] TXDIFFCTRL,
  input TXDIFFPD,
  input TXDLYBYPASS,
  input TXDLYEN,
  input TXDLYHOLD,
  input TXDLYOVRDEN,
  input TXDLYSRESET,
  input TXDLYUPDOWN,
  input TXELECIDLE,
  input [5:0] TXHEADER,
  input TXINHIBIT,
  input TXLATCLK,
  input [6:0] TXMAINCURSOR,
  input [2:0] TXMARGIN,
  input [2:0] TXOUTCLKSEL,
  input TXPCSRESET,
  input [1:0] TXPD,
  input TXPDELECIDLEMODE,
  input TXPHALIGN,
  input TXPHALIGNEN,
  input TXPHDLYPD,
  input TXPHDLYRESET,
  input TXPHDLYTSTCLK,
  input TXPHINIT,
  input TXPHOVRDEN,
  input TXPIPPMEN,
  input TXPIPPMOVRDEN,
  input TXPIPPMPD,
  input TXPIPPMSEL,
  input [4:0] TXPIPPMSTEPSIZE,
  input TXPISOPD,
  input [1:0] TXPLLCLKSEL,
  input TXPMARESET,
  input TXPOLARITY,
  input [4:0] TXPOSTCURSOR,
  input TXPOSTCURSORINV,
  input TXPRBSFORCEERR,
  input [3:0] TXPRBSSEL,
  input [4:0] TXPRECURSOR,
  input TXPRECURSORINV,
  input TXPROGDIVRESET,
  input TXQPIBIASEN,
  input TXQPISTRONGPDOWN,
  input TXQPIWEAKPUP,
  input [2:0] TXRATE,
  input TXRATEMODE,
  input [6:0] TXSEQUENCE,
  input TXSWING,
  input TXSYNCALLIN,
  input TXSYNCIN,
  input TXSYNCMODE,
  input [1:0] TXSYSCLKSEL,
  input TXUSERRDY,
  input TXUSRCLK,
  input TXUSRCLK2
);
endmodule


module GTHE3_COMMON #(
  parameter [15:0] BIAS_CFG0 = 16'h0000,
  parameter [15:0] BIAS_CFG1 = 16'h0000,
  parameter [15:0] BIAS_CFG2 = 16'h0000,
  parameter [15:0] BIAS_CFG3 = 16'h0040,
  parameter [15:0] BIAS_CFG4 = 16'h0000,
  parameter [9:0] BIAS_CFG_RSVD = 10'b0000000000,
  parameter [15:0] COMMON_CFG0 = 16'h0000,
  parameter [15:0] COMMON_CFG1 = 16'h0000,
  parameter [15:0] POR_CFG = 16'h0004,
  parameter [15:0] QPLL0_CFG0 = 16'h3018,
  parameter [15:0] QPLL0_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL0_CFG2 = 16'h0000,
  parameter [15:0] QPLL0_CFG2_G3 = 16'h0000,
  parameter [15:0] QPLL0_CFG3 = 16'h0120,
  parameter [15:0] QPLL0_CFG4 = 16'h0009,
  parameter [9:0] QPLL0_CP = 10'b0000011111,
  parameter [9:0] QPLL0_CP_G3 = 10'b0000011111,
  parameter integer QPLL0_FBDIV = 66,
  parameter integer QPLL0_FBDIV_G3 = 80,
  parameter [15:0] QPLL0_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL0_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL0_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL0_LOCK_CFG_G3 = 16'h01E8,
  parameter [9:0] QPLL0_LPF = 10'b1111111111,
  parameter [9:0] QPLL0_LPF_G3 = 10'b1111111111,
  parameter integer QPLL0_REFCLK_DIV = 2,
  parameter [15:0] QPLL0_SDM_CFG0 = 16'b0000000000000000,
  parameter [15:0] QPLL0_SDM_CFG1 = 16'b0000000000000000,
  parameter [15:0] QPLL0_SDM_CFG2 = 16'b0000000000000000,
  parameter [15:0] QPLL1_CFG0 = 16'h3018,
  parameter [15:0] QPLL1_CFG1 = 16'h0000,
  parameter [15:0] QPLL1_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL1_CFG2 = 16'h0000,
  parameter [15:0] QPLL1_CFG2_G3 = 16'h0000,
  parameter [15:0] QPLL1_CFG3 = 16'h0120,
  parameter [15:0] QPLL1_CFG4 = 16'h0009,
  parameter [9:0] QPLL1_CP = 10'b0000011111,
  parameter [9:0] QPLL1_CP_G3 = 10'b0000011111,
  parameter integer QPLL1_FBDIV = 66,
  parameter integer QPLL1_FBDIV_G3 = 80,
  parameter [15:0] QPLL1_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL1_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL1_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL1_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL1_LPF = 10'b1111111111,
  parameter [9:0] QPLL1_LPF_G3 = 10'b1111111111,
  parameter integer QPLL1_REFCLK_DIV = 2,
  parameter [15:0] QPLL1_SDM_CFG0 = 16'b0000000000000000,
  parameter [15:0] QPLL1_SDM_CFG1 = 16'b0000000000000000,
  parameter [15:0] QPLL1_SDM_CFG2 = 16'b0000000000000000,
  parameter [15:0] RSVD_ATTR0 = 16'h0000,
  parameter [15:0] RSVD_ATTR1 = 16'h0000,
  parameter [15:0] RSVD_ATTR2 = 16'h0000,
  parameter [15:0] RSVD_ATTR3 = 16'h0000,
  parameter [1:0] RXRECCLKOUT0_SEL = 2'b00,
  parameter [1:0] RXRECCLKOUT1_SEL = 2'b00,
  parameter [0:0] SARC_EN = 1'b1,
  parameter [0:0] SARC_SEL = 1'b0,
  parameter [15:0] SDM0DATA1_0 = 16'b0000000000000000,
  parameter [8:0] SDM0DATA1_1 = 9'b000000000,
  parameter [15:0] SDM0INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM0INITSEED0_1 = 9'b000000000,
  parameter [0:0] SDM0_DATA_PIN_SEL = 1'b0,
  parameter [0:0] SDM0_WIDTH_PIN_SEL = 1'b0,
  parameter [15:0] SDM1DATA1_0 = 16'b0000000000000000,
  parameter [8:0] SDM1DATA1_1 = 9'b000000000,
  parameter [15:0] SDM1INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM1INITSEED0_1 = 9'b000000000,
  parameter [0:0] SDM1_DATA_PIN_SEL = 1'b0,
  parameter [0:0] SDM1_WIDTH_PIN_SEL = 1'b0,
  parameter SIM_MODE = "FAST",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter integer SIM_VERSION = 2
)(
  output [15:0] DRPDO,
  output DRPRDY,
  output [7:0] PMARSVDOUT0,
  output [7:0] PMARSVDOUT1,
  output QPLL0FBCLKLOST,
  output QPLL0LOCK,
  output QPLL0OUTCLK,
  output QPLL0OUTREFCLK,
  output QPLL0REFCLKLOST,
  output QPLL1FBCLKLOST,
  output QPLL1LOCK,
  output QPLL1OUTCLK,
  output QPLL1OUTREFCLK,
  output QPLL1REFCLKLOST,
  output [7:0] QPLLDMONITOR0,
  output [7:0] QPLLDMONITOR1,
  output REFCLKOUTMONITOR0,
  output REFCLKOUTMONITOR1,
  output [1:0] RXRECCLK0_SEL,
  output [1:0] RXRECCLK1_SEL,

  input BGBYPASSB,
  input BGMONITORENB,
  input BGPDB,
  input [4:0] BGRCALOVRD,
  input BGRCALOVRDENB,
  input [8:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input GTGREFCLK0,
  input GTGREFCLK1,
  input GTNORTHREFCLK00,
  input GTNORTHREFCLK01,
  input GTNORTHREFCLK10,
  input GTNORTHREFCLK11,
  input GTREFCLK00,
  input GTREFCLK01,
  input GTREFCLK10,
  input GTREFCLK11,
  input GTSOUTHREFCLK00,
  input GTSOUTHREFCLK01,
  input GTSOUTHREFCLK10,
  input GTSOUTHREFCLK11,
  input [7:0] PMARSVD0,
  input [7:0] PMARSVD1,
  input QPLL0CLKRSVD0,
  input QPLL0CLKRSVD1,
  input QPLL0LOCKDETCLK,
  input QPLL0LOCKEN,
  input QPLL0PD,
  input [2:0] QPLL0REFCLKSEL,
  input QPLL0RESET,
  input QPLL1CLKRSVD0,
  input QPLL1CLKRSVD1,
  input QPLL1LOCKDETCLK,
  input QPLL1LOCKEN,
  input QPLL1PD,
  input [2:0] QPLL1REFCLKSEL,
  input QPLL1RESET,
  input [7:0] QPLLRSVD1,
  input [4:0] QPLLRSVD2,
  input [4:0] QPLLRSVD3,
  input [7:0] QPLLRSVD4,
  input RCALENB
);
endmodule


module GTHE4_CHANNEL #(
  parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0,
  parameter [0:0] ACJTAG_MODE = 1'b0,
  parameter [0:0] ACJTAG_RESET = 1'b0,
  parameter [15:0] ADAPT_CFG0 = 16'h9200,
  parameter [15:0] ADAPT_CFG1 = 16'h801C,
  parameter [15:0] ADAPT_CFG2 = 16'h0000,
  parameter ALIGN_COMMA_DOUBLE = "FALSE",
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111,
  parameter integer ALIGN_COMMA_WORD = 1,
  parameter ALIGN_MCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011,
  parameter ALIGN_PCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100,
  parameter [0:0] A_RXOSCALRESET = 1'b0,
  parameter [0:0] A_RXPROGDIVRESET = 1'b0,
  parameter [0:0] A_RXTERMINATION = 1'b1,
  parameter [4:0] A_TXDIFFCTRL = 5'b01100,
  parameter [0:0] A_TXPROGDIVRESET = 1'b0,
  parameter [0:0] CAPBYPASS_FORCE = 1'b0,
  parameter CBCC_DATA_SOURCE_SEL = "DECODED",
  parameter [0:0] CDR_SWAP_MODE_EN = 1'b0,
  parameter [0:0] CFOK_PWRSVE_EN = 1'b1,
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE",
  parameter integer CHAN_BOND_MAX_SKEW = 7,
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100,
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111,
  parameter CHAN_BOND_SEQ_2_USE = "FALSE",
  parameter integer CHAN_BOND_SEQ_LEN = 2,
  parameter [15:0] CH_HSPMUX = 16'h2424,
  parameter [15:0] CKCAL1_CFG_0 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_1 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_0 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_1 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_4 = 16'b0000000000000000,
  parameter [15:0] CKCAL_RSVD0 = 16'h4000,
  parameter [15:0] CKCAL_RSVD1 = 16'h0000,
  parameter CLK_CORRECT_USE = "TRUE",
  parameter CLK_COR_KEEP_IDLE = "FALSE",
  parameter integer CLK_COR_MAX_LAT = 20,
  parameter integer CLK_COR_MIN_LAT = 18,
  parameter CLK_COR_PRECEDENCE = "TRUE",
  parameter integer CLK_COR_REPEAT_WAIT = 0,
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100,
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111,
  parameter CLK_COR_SEQ_2_USE = "FALSE",
  parameter integer CLK_COR_SEQ_LEN = 2,
  parameter [15:0] CPLL_CFG0 = 16'h01FA,
  parameter [15:0] CPLL_CFG1 = 16'h24A9,
  parameter [15:0] CPLL_CFG2 = 16'h6807,
  parameter [15:0] CPLL_CFG3 = 16'h0000,
  parameter integer CPLL_FBDIV = 4,
  parameter integer CPLL_FBDIV_45 = 4,
  parameter [15:0] CPLL_INIT_CFG0 = 16'h001E,
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8,
  parameter integer CPLL_REFCLK_DIV = 1,
  parameter [2:0] CTLE3_OCAP_EXT_CTRL = 3'b000,
  parameter [0:0] CTLE3_OCAP_EXT_EN = 1'b0,
  parameter [1:0] DDI_CTRL = 2'b00,
  parameter integer DDI_REALIGN_WAIT = 15,
  parameter DEC_MCOMMA_DETECT = "TRUE",
  parameter DEC_PCOMMA_DETECT = "TRUE",
  parameter DEC_VALID_COMMA_ONLY = "TRUE",
  parameter [0:0] DELAY_ELEC = 1'b0,
  parameter [9:0] DMONITOR_CFG0 = 10'h000,
  parameter [7:0] DMONITOR_CFG1 = 8'h00,
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0,
  parameter [5:0] ES_CONTROL = 6'b000000,
  parameter ES_ERRDET_EN = "FALSE",
  parameter ES_EYE_SCAN_EN = "FALSE",
  parameter [11:0] ES_HORZ_OFFSET = 12'h800,
  parameter [4:0] ES_PRESCALE = 5'b00000,
  parameter [15:0] ES_QUALIFIER0 = 16'h0000,
  parameter [15:0] ES_QUALIFIER1 = 16'h0000,
  parameter [15:0] ES_QUALIFIER2 = 16'h0000,
  parameter [15:0] ES_QUALIFIER3 = 16'h0000,
  parameter [15:0] ES_QUALIFIER4 = 16'h0000,
  parameter [15:0] ES_QUALIFIER5 = 16'h0000,
  parameter [15:0] ES_QUALIFIER6 = 16'h0000,
  parameter [15:0] ES_QUALIFIER7 = 16'h0000,
  parameter [15:0] ES_QUALIFIER8 = 16'h0000,
  parameter [15:0] ES_QUALIFIER9 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK0 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK1 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK2 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK3 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK4 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK5 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK6 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK7 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK8 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK9 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK0 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK1 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK2 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK3 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK4 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK5 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK6 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK7 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK8 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK9 = 16'h0000,
  parameter [0:0] EYE_SCAN_SWAP_EN = 1'b0,
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111,
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111,
  parameter FTS_LANE_DESKEW_EN = "FALSE",
  parameter [4:0] GEARBOX_MODE = 5'b00000,
  parameter [0:0] ISCAN_CK_PH_SEL2 = 1'b0,
  parameter [0:0] LOCAL_MASTER = 1'b0,
  parameter [2:0] LPBK_BIAS_CTRL = 3'b000,
  parameter [0:0] LPBK_EN_RCAL_B = 1'b0,
  parameter [3:0] LPBK_EXT_RCAL = 4'b0000,
  parameter [2:0] LPBK_IND_CTRL0 = 3'b000,
  parameter [2:0] LPBK_IND_CTRL1 = 3'b000,
  parameter [2:0] LPBK_IND_CTRL2 = 3'b000,
  parameter [3:0] LPBK_RG_CTRL = 4'b0000,
  parameter [1:0] OOBDIVCTL = 2'b00,
  parameter [0:0] OOB_PWRUP = 1'b0,
  parameter PCI3_AUTO_REALIGN = "FRST_SMPL",
  parameter [0:0] PCI3_PIPE_RX_ELECIDLE = 1'b1,
  parameter [1:0] PCI3_RX_ASYNC_EBUF_BYPASS = 2'b00,
  parameter [0:0] PCI3_RX_ELECIDLE_EI2_ENABLE = 1'b0,
  parameter [5:0] PCI3_RX_ELECIDLE_H2L_COUNT = 6'b000000,
  parameter [2:0] PCI3_RX_ELECIDLE_H2L_DISABLE = 3'b000,
  parameter [5:0] PCI3_RX_ELECIDLE_HI_COUNT = 6'b000000,
  parameter [0:0] PCI3_RX_ELECIDLE_LP4_DISABLE = 1'b0,
  parameter [0:0] PCI3_RX_FIFO_DISABLE = 1'b0,
  parameter [4:0] PCIE3_CLK_COR_EMPTY_THRSH = 5'b00000,
  parameter [5:0] PCIE3_CLK_COR_FULL_THRSH = 6'b010000,
  parameter [4:0] PCIE3_CLK_COR_MAX_LAT = 5'b01000,
  parameter [4:0] PCIE3_CLK_COR_MIN_LAT = 5'b00100,
  parameter [5:0] PCIE3_CLK_COR_THRSH_TIMER = 6'b001000,
  parameter [15:0] PCIE_BUFG_DIV_CTRL = 16'h0000,
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN12 = 2'h0,
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN3 = 2'h0,
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN4 = 2'h0,
  parameter [15:0] PCIE_RXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_RXPMA_CFG = 16'h0000,
  parameter [15:0] PCIE_TXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_TXPMA_CFG = 16'h0000,
  parameter PCS_PCIE_EN = "FALSE",
  parameter [15:0] PCS_RSVD0 = 16'b0000000000000000,
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C,
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19,
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64,
  parameter integer PREIQ_FREQ_BST = 0,
  parameter [2:0] PROCESS_PAR = 3'b010,
  parameter [0:0] RATE_SW_USE_DRP = 1'b0,
  parameter [0:0] RCLK_SIPO_DLY_ENB = 1'b0,
  parameter [0:0] RCLK_SIPO_INV_EN = 1'b0,
  parameter [0:0] RESET_POWERSAVE_DISABLE = 1'b0,
  parameter [2:0] RTX_BUF_CML_CTRL = 3'b010,
  parameter [1:0] RTX_BUF_TERM_CTRL = 2'b00,
  parameter [4:0] RXBUFRESET_TIME = 5'b00001,
  parameter RXBUF_ADDR_MODE = "FULL",
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000,
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000,
  parameter RXBUF_EN = "TRUE",
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE",
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE",
  parameter RXBUF_RESET_ON_EIDLE = "FALSE",
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE",
  parameter integer RXBUF_THRESH_OVFLW = 0,
  parameter RXBUF_THRESH_OVRD = "FALSE",
  parameter integer RXBUF_THRESH_UNDFLW = 4,
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001,
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001,
  parameter [15:0] RXCDR_CFG0 = 16'h0003,
  parameter [15:0] RXCDR_CFG0_GEN3 = 16'h0003,
  parameter [15:0] RXCDR_CFG1 = 16'h0000,
  parameter [15:0] RXCDR_CFG1_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG2 = 16'h0164,
  parameter [9:0] RXCDR_CFG2_GEN2 = 10'h164,
  parameter [15:0] RXCDR_CFG2_GEN3 = 16'h0034,
  parameter [15:0] RXCDR_CFG2_GEN4 = 16'h0034,
  parameter [15:0] RXCDR_CFG3 = 16'h0024,
  parameter [5:0] RXCDR_CFG3_GEN2 = 6'h24,
  parameter [15:0] RXCDR_CFG3_GEN3 = 16'h0024,
  parameter [15:0] RXCDR_CFG3_GEN4 = 16'h0024,
  parameter [15:0] RXCDR_CFG4 = 16'h5CF6,
  parameter [15:0] RXCDR_CFG4_GEN3 = 16'h5CF6,
  parameter [15:0] RXCDR_CFG5 = 16'hB46B,
  parameter [15:0] RXCDR_CFG5_GEN3 = 16'h146B,
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0,
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0,
  parameter [15:0] RXCDR_LOCK_CFG0 = 16'h0040,
  parameter [15:0] RXCDR_LOCK_CFG1 = 16'h8000,
  parameter [15:0] RXCDR_LOCK_CFG2 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG3 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG4 = 16'h0000,
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0,
  parameter [15:0] RXCFOK_CFG0 = 16'h0000,
  parameter [15:0] RXCFOK_CFG1 = 16'h0002,
  parameter [15:0] RXCFOK_CFG2 = 16'h002D,
  parameter [15:0] RXCKCAL1_IQ_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL1_I_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL1_Q_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_DX_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_D_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_S_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_X_LOOP_RST_CFG = 16'h0000,
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111,
  parameter [15:0] RXDFELPM_KL_CFG0 = 16'h0000,
  parameter [15:0] RXDFELPM_KL_CFG1 = 16'h0022,
  parameter [15:0] RXDFELPM_KL_CFG2 = 16'h0100,
  parameter [15:0] RXDFE_CFG0 = 16'h4000,
  parameter [15:0] RXDFE_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H3_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H3_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H4_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H4_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_H5_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H5_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H6_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H6_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H7_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H7_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H8_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H8_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H9_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H9_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HA_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HA_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HB_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HB_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HC_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HD_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HD_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HE_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HE_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HF_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HF_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_KH_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG3 = 16'h0000,
  parameter [15:0] RXDFE_OS_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_OS_CFG1 = 16'h0002,
  parameter [0:0] RXDFE_PWR_SAVING = 1'b0,
  parameter [15:0] RXDFE_UT_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_UT_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_UT_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_VP_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_VP_CFG1 = 16'h0022,
  parameter [15:0] RXDLY_CFG = 16'h0010,
  parameter [15:0] RXDLY_LCFG = 16'h0030,
  parameter RXELECIDLE_CFG = "SIGCFG_4",
  parameter integer RXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter RXGEARBOX_EN = "FALSE",
  parameter [4:0] RXISCANRESET_TIME = 5'b00001,
  parameter [15:0] RXLPM_CFG = 16'h0000,
  parameter [15:0] RXLPM_GC_CFG = 16'h1000,
  parameter [15:0] RXLPM_KH_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_KH_CFG1 = 16'h0002,
  parameter [15:0] RXLPM_OS_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_OS_CFG1 = 16'h0000,
  parameter [8:0] RXOOB_CFG = 9'b000110000,
  parameter RXOOB_CLK_CFG = "PMA",
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011,
  parameter integer RXOUT_DIV = 4,
  parameter [4:0] RXPCSRESET_TIME = 5'b00001,
  parameter [15:0] RXPHBEACON_CFG = 16'h0000,
  parameter [15:0] RXPHDLY_CFG = 16'h2020,
  parameter [15:0] RXPHSAMP_CFG = 16'h2100,
  parameter [15:0] RXPHSLIP_CFG = 16'h9933,
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000,
  parameter [0:0] RXPI_AUTO_BW_SEL_BYPASS = 1'b0,
  parameter [15:0] RXPI_CFG0 = 16'h0002,
  parameter [15:0] RXPI_CFG1 = 16'b0000000000000000,
  parameter [0:0] RXPI_LPM = 1'b0,
  parameter [1:0] RXPI_SEL_LC = 2'b00,
  parameter [1:0] RXPI_STARTCODE = 2'b00,
  parameter [0:0] RXPI_VREFSEL = 1'b0,
  parameter RXPMACLK_SEL = "DATA",
  parameter [4:0] RXPMARESET_TIME = 5'b00001,
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0,
  parameter integer RXPRBS_LINKACQ_CNT = 15,
  parameter [0:0] RXREFCLKDIV2_SEL = 1'b0,
  parameter integer RXSLIDE_AUTO_WAIT = 7,
  parameter RXSLIDE_MODE = "OFF",
  parameter [0:0] RXSYNC_MULTILANE = 1'b0,
  parameter [0:0] RXSYNC_OVRD = 1'b0,
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0,
  parameter [0:0] RX_AFE_CM_EN = 1'b0,
  parameter [15:0] RX_BIAS_CFG0 = 16'h12B0,
  parameter [5:0] RX_BUFFER_CFG = 6'b000000,
  parameter [0:0] RX_CAPFF_SARC_ENB = 1'b0,
  parameter integer RX_CLK25_DIV = 8,
  parameter [0:0] RX_CLKMUX_EN = 1'b1,
  parameter [4:0] RX_CLK_SLIP_OVRD = 5'b00000,
  parameter [3:0] RX_CM_BUF_CFG = 4'b1010,
  parameter [0:0] RX_CM_BUF_PD = 1'b0,
  parameter integer RX_CM_SEL = 3,
  parameter integer RX_CM_TRIM = 12,
  parameter [7:0] RX_CTLE3_LPF = 8'b00000000,
  parameter integer RX_DATA_WIDTH = 20,
  parameter [5:0] RX_DDI_SEL = 6'b000000,
  parameter RX_DEFER_RESET_BUF_EN = "TRUE",
  parameter [2:0] RX_DEGEN_CTRL = 3'b011,
  parameter integer RX_DFELPM_CFG0 = 0,
  parameter [0:0] RX_DFELPM_CFG1 = 1'b1,
  parameter [0:0] RX_DFELPM_KLKH_AGC_STUP_EN = 1'b1,
  parameter [1:0] RX_DFE_AGC_CFG0 = 2'b00,
  parameter integer RX_DFE_AGC_CFG1 = 4,
  parameter integer RX_DFE_KL_LPM_KH_CFG0 = 1,
  parameter integer RX_DFE_KL_LPM_KH_CFG1 = 4,
  parameter [1:0] RX_DFE_KL_LPM_KL_CFG0 = 2'b01,
  parameter integer RX_DFE_KL_LPM_KL_CFG1 = 4,
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0,
  parameter RX_DISPERR_SEQ_MATCH = "TRUE",
  parameter [0:0] RX_DIV2_MODE_B = 1'b0,
  parameter [4:0] RX_DIVRESET_TIME = 5'b00001,
  parameter [0:0] RX_EN_CTLE_RCAL_B = 1'b0,
  parameter [0:0] RX_EN_HI_LR = 1'b1,
  parameter [8:0] RX_EXT_RL_CTRL = 9'b000000000,
  parameter [6:0] RX_EYESCAN_VS_CODE = 7'b0000000,
  parameter [0:0] RX_EYESCAN_VS_NEG_DIR = 1'b0,
  parameter [1:0] RX_EYESCAN_VS_RANGE = 2'b00,
  parameter [0:0] RX_EYESCAN_VS_UT_SIGN = 1'b0,
  parameter [0:0] RX_FABINT_USRCLK_FLOP = 1'b0,
  parameter integer RX_INT_DATAWIDTH = 1,
  parameter [0:0] RX_PMA_POWER_SAVE = 1'b0,
  parameter [15:0] RX_PMA_RSV0 = 16'h0000,
  parameter real RX_PROGDIV_CFG = 0.0,
  parameter [15:0] RX_PROGDIV_RATE = 16'h0001,
  parameter [3:0] RX_RESLOAD_CTRL = 4'b0000,
  parameter [0:0] RX_RESLOAD_OVRD = 1'b0,
  parameter [2:0] RX_SAMPLE_PERIOD = 3'b101,
  parameter integer RX_SIG_VALID_DLY = 11,
  parameter [0:0] RX_SUM_DFETAPREP_EN = 1'b0,
  parameter [3:0] RX_SUM_IREF_TUNE = 4'b1001,
  parameter [3:0] RX_SUM_RESLOAD_CTRL = 4'b0000,
  parameter [3:0] RX_SUM_VCMTUNE = 4'b1010,
  parameter [0:0] RX_SUM_VCM_OVWR = 1'b0,
  parameter [2:0] RX_SUM_VREF_TUNE = 3'b100,
  parameter [1:0] RX_TUNE_AFE_OS = 2'b00,
  parameter [2:0] RX_VREG_CTRL = 3'b101,
  parameter [0:0] RX_VREG_PDB = 1'b1,
  parameter [1:0] RX_WIDEMODE_CDR = 2'b01,
  parameter [1:0] RX_WIDEMODE_CDR_GEN3 = 2'b01,
  parameter [1:0] RX_WIDEMODE_CDR_GEN4 = 2'b01,
  parameter RX_XCLK_SEL = "RXDES",
  parameter [0:0] RX_XMODE_SEL = 1'b0,
  parameter [0:0] SAMPLE_CLK_PHASE = 1'b0,
  parameter [0:0] SAS_12G_MODE = 1'b0,
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111,
  parameter [2:0] SATA_BURST_VAL = 3'b100,
  parameter SATA_CPLL_CFG = "VCO_3000MHZ",
  parameter [2:0] SATA_EIDLE_VAL = 3'b100,
  parameter SHOW_REALIGN_COMMA = "TRUE",
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter SIM_MODE = "FAST",
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter SIM_TX_EIDLE_DRIVE_LEVEL = "Z",
  parameter [0:0] SRSTMODE = 1'b0,
  parameter [1:0] TAPDLY_SET_TX = 2'h0,
  parameter [3:0] TEMPERATURE_PAR = 4'b0010,
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000,
  parameter [2:0] TERM_RCAL_OVRD = 3'b000,
  parameter [7:0] TRANS_TIME_RATE = 8'h0E,
  parameter [7:0] TST_RSV0 = 8'h00,
  parameter [7:0] TST_RSV1 = 8'h00,
  parameter TXBUF_EN = "TRUE",
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE",
  parameter [15:0] TXDLY_CFG = 16'h0010,
  parameter [15:0] TXDLY_LCFG = 16'h0030,
  parameter [3:0] TXDRVBIAS_N = 4'b1010,
  parameter TXFIFO_ADDR_CFG = "LOW",
  parameter integer TXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter TXGEARBOX_EN = "FALSE",
  parameter integer TXOUT_DIV = 4,
  parameter [4:0] TXPCSRESET_TIME = 5'b00001,
  parameter [15:0] TXPHDLY_CFG0 = 16'h6020,
  parameter [15:0] TXPHDLY_CFG1 = 16'h0002,
  parameter [15:0] TXPH_CFG = 16'h0123,
  parameter [15:0] TXPH_CFG2 = 16'h0000,
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000,
  parameter [15:0] TXPI_CFG = 16'h0000,
  parameter [1:0] TXPI_CFG0 = 2'b00,
  parameter [1:0] TXPI_CFG1 = 2'b00,
  parameter [1:0] TXPI_CFG2 = 2'b00,
  parameter [0:0] TXPI_CFG3 = 1'b0,
  parameter [0:0] TXPI_CFG4 = 1'b1,
  parameter [2:0] TXPI_CFG5 = 3'b000,
  parameter [0:0] TXPI_GRAY_SEL = 1'b0,
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0,
  parameter [0:0] TXPI_LPM = 1'b0,
  parameter [0:0] TXPI_PPM = 1'b0,
  parameter TXPI_PPMCLK_SEL = "TXUSRCLK2",
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000,
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000,
  parameter [0:0] TXPI_VREFSEL = 1'b0,
  parameter [4:0] TXPMARESET_TIME = 5'b00001,
  parameter [0:0] TXREFCLKDIV2_SEL = 1'b0,
  parameter [0:0] TXSYNC_MULTILANE = 1'b0,
  parameter [0:0] TXSYNC_OVRD = 1'b0,
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0,
  parameter integer TX_CLK25_DIV = 8,
  parameter [0:0] TX_CLKMUX_EN = 1'b1,
  parameter integer TX_DATA_WIDTH = 20,
  parameter [15:0] TX_DCC_LOOP_RST_CFG = 16'h0000,
  parameter [5:0] TX_DEEMPH0 = 6'b000000,
  parameter [5:0] TX_DEEMPH1 = 6'b000000,
  parameter [5:0] TX_DEEMPH2 = 6'b000000,
  parameter [5:0] TX_DEEMPH3 = 6'b000000,
  parameter [4:0] TX_DIVRESET_TIME = 5'b00001,
  parameter TX_DRIVE_MODE = "DIRECT",
  parameter integer TX_DRVMUX_CTRL = 2,
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110,
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100,
  parameter [0:0] TX_FABINT_USRCLK_FLOP = 1'b0,
  parameter [0:0] TX_FIFO_BYP_EN = 1'b0,
  parameter [0:0] TX_IDLE_DATA_ZERO = 1'b0,
  parameter integer TX_INT_DATAWIDTH = 1,
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE",
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0,
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110,
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001,
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101,
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010,
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110,
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100,
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010,
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000,
  parameter [15:0] TX_PHICAL_CFG0 = 16'h0000,
  parameter [15:0] TX_PHICAL_CFG1 = 16'h003F,
  parameter [15:0] TX_PHICAL_CFG2 = 16'h0000,
  parameter integer TX_PI_BIASSET = 0,
  parameter [1:0] TX_PI_IBIAS_MID = 2'b00,
  parameter [0:0] TX_PMADATA_OPT = 1'b0,
  parameter [0:0] TX_PMA_POWER_SAVE = 1'b0,
  parameter [15:0] TX_PMA_RSV0 = 16'h0008,
  parameter integer TX_PREDRV_CTRL = 2,
  parameter TX_PROGCLK_SEL = "POSTPI",
  parameter real TX_PROGDIV_CFG = 0.0,
  parameter [15:0] TX_PROGDIV_RATE = 16'h0001,
  parameter [0:0] TX_QPI_STATUS_EN = 1'b0,
  parameter [13:0] TX_RXDETECT_CFG = 14'h0032,
  parameter integer TX_RXDETECT_REF = 3,
  parameter [2:0] TX_SAMPLE_PERIOD = 3'b101,
  parameter [0:0] TX_SARC_LPBK_ENB = 1'b0,
  parameter [1:0] TX_SW_MEAS = 2'b00,
  parameter [2:0] TX_VREG_CTRL = 3'b000,
  parameter [0:0] TX_VREG_PDB = 1'b0,
  parameter [1:0] TX_VREG_VREFSEL = 2'b00,
  parameter TX_XCLK_SEL = "TXOUT",
  parameter [0:0] USB_BOTH_BURST_IDLE = 1'b0,
  parameter [6:0] USB_BURSTMAX_U3WAKE = 7'b1111111,
  parameter [6:0] USB_BURSTMIN_U3WAKE = 7'b1100011,
  parameter [0:0] USB_CLK_COR_EQ_EN = 1'b0,
  parameter [0:0] USB_EXT_CNTL = 1'b1,
  parameter [9:0] USB_IDLEMAX_POLLING = 10'b1010111011,
  parameter [9:0] USB_IDLEMIN_POLLING = 10'b0100101011,
  parameter [8:0] USB_LFPSPING_BURST = 9'b000000101,
  parameter [8:0] USB_LFPSPOLLING_BURST = 9'b000110001,
  parameter [8:0] USB_LFPSPOLLING_IDLE_MS = 9'b000000100,
  parameter [8:0] USB_LFPSU1EXIT_BURST = 9'b000011101,
  parameter [8:0] USB_LFPSU2LPEXIT_BURST_MS = 9'b001100011,
  parameter [8:0] USB_LFPSU3WAKE_BURST_MS = 9'b111110011,
  parameter [3:0] USB_LFPS_TPERIOD = 4'b0011,
  parameter [0:0] USB_LFPS_TPERIOD_ACCURATE = 1'b1,
  parameter [0:0] USB_MODE = 1'b0,
  parameter [0:0] USB_PCIE_ERR_REP_DIS = 1'b0,
  parameter integer USB_PING_SATA_MAX_INIT = 21,
  parameter integer USB_PING_SATA_MIN_INIT = 12,
  parameter integer USB_POLL_SATA_MAX_BURST = 8,
  parameter integer USB_POLL_SATA_MIN_BURST = 4,
  parameter [0:0] USB_RAW_ELEC = 1'b0,
  parameter [0:0] USB_RXIDLE_P0_CTRL = 1'b1,
  parameter [0:0] USB_TXIDLE_TUNE_ENABLE = 1'b1,
  parameter integer USB_U1_SATA_MAX_WAKE = 7,
  parameter integer USB_U1_SATA_MIN_WAKE = 4,
  parameter integer USB_U2_SAS_MAX_COM = 64,
  parameter integer USB_U2_SAS_MIN_COM = 36,
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0,
  parameter [0:0] Y_ALL_MODE = 1'b0
)(
  output BUFGTCE,
  output [2:0] BUFGTCEMASK,
  output [8:0] BUFGTDIV,
  output BUFGTRESET,
  output [2:0] BUFGTRSTMASK,
  output CPLLFBCLKLOST,
  output CPLLLOCK,
  output CPLLREFCLKLOST,
  output [15:0] DMONITOROUT,
  output DMONITOROUTCLK,
  output [15:0] DRPDO,
  output DRPRDY,
  output EYESCANDATAERROR,
  output GTHTXN,
  output GTHTXP,
  output GTPOWERGOOD,
  output GTREFCLKMONITOR,
  output PCIERATEGEN3,
  output PCIERATEIDLE,
  output [1:0] PCIERATEQPLLPD,
  output [1:0] PCIERATEQPLLRESET,
  output PCIESYNCTXSYNCDONE,
  output PCIEUSERGEN3RDY,
  output PCIEUSERPHYSTATUSRST,
  output PCIEUSERRATESTART,
  output [15:0] PCSRSVDOUT,
  output PHYSTATUS,
  output [15:0] PINRSRVDAS,
  output POWERPRESENT,
  output RESETEXCEPTION,
  output [2:0] RXBUFSTATUS,
  output RXBYTEISALIGNED,
  output RXBYTEREALIGN,
  output RXCDRLOCK,
  output RXCDRPHDONE,
  output RXCHANBONDSEQ,
  output RXCHANISALIGNED,
  output RXCHANREALIGN,
  output [4:0] RXCHBONDO,
  output RXCKCALDONE,
  output [1:0] RXCLKCORCNT,
  output RXCOMINITDET,
  output RXCOMMADET,
  output RXCOMSASDET,
  output RXCOMWAKEDET,
  output [15:0] RXCTRL0,
  output [15:0] RXCTRL1,
  output [7:0] RXCTRL2,
  output [7:0] RXCTRL3,
  output [127:0] RXDATA,
  output [7:0] RXDATAEXTENDRSVD,
  output [1:0] RXDATAVALID,
  output RXDLYSRESETDONE,
  output RXELECIDLE,
  output [5:0] RXHEADER,
  output [1:0] RXHEADERVALID,
  output RXLFPSTRESETDET,
  output RXLFPSU2LPEXITDET,
  output RXLFPSU3WAKEDET,
  output [7:0] RXMONITOROUT,
  output RXOSINTDONE,
  output RXOSINTSTARTED,
  output RXOSINTSTROBEDONE,
  output RXOSINTSTROBESTARTED,
  output RXOUTCLK,
  output RXOUTCLKFABRIC,
  output RXOUTCLKPCS,
  output RXPHALIGNDONE,
  output RXPHALIGNERR,
  output RXPMARESETDONE,
  output RXPRBSERR,
  output RXPRBSLOCKED,
  output RXPRGDIVRESETDONE,
  output RXQPISENN,
  output RXQPISENP,
  output RXRATEDONE,
  output RXRECCLKOUT,
  output RXRESETDONE,
  output RXSLIDERDY,
  output RXSLIPDONE,
  output RXSLIPOUTCLKRDY,
  output RXSLIPPMARDY,
  output [1:0] RXSTARTOFSEQ,
  output [2:0] RXSTATUS,
  output RXSYNCDONE,
  output RXSYNCOUT,
  output RXVALID,
  output [1:0] TXBUFSTATUS,
  output TXCOMFINISH,
  output TXDCCDONE,
  output TXDLYSRESETDONE,
  output TXOUTCLK,
  output TXOUTCLKFABRIC,
  output TXOUTCLKPCS,
  output TXPHALIGNDONE,
  output TXPHINITDONE,
  output TXPMARESETDONE,
  output TXPRGDIVRESETDONE,
  output TXQPISENN,
  output TXQPISENP,
  output TXRATEDONE,
  output TXRESETDONE,
  output TXSYNCDONE,
  output TXSYNCOUT,

  input CDRSTEPDIR,
  input CDRSTEPSQ,
  input CDRSTEPSX,
  input CFGRESET,
  input CLKRSVD0,
  input CLKRSVD1,
  input CPLLFREQLOCK,
  input CPLLLOCKDETCLK,
  input CPLLLOCKEN,
  input CPLLPD,
  input [2:0] CPLLREFCLKSEL,
  input CPLLRESET,
  input DMONFIFORESET,
  input DMONITORCLK,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPRST,
  input DRPWE,
  input EYESCANRESET,
  input EYESCANTRIGGER,
  input FREQOS,
  input GTGREFCLK,
  input GTHRXN,
  input GTHRXP,
  input GTNORTHREFCLK0,
  input GTNORTHREFCLK1,
  input GTREFCLK0,
  input GTREFCLK1,
  input [15:0] GTRSVD,
  input GTRXRESET,
  input GTRXRESETSEL,
  input GTSOUTHREFCLK0,
  input GTSOUTHREFCLK1,
  input GTTXRESET,
  input GTTXRESETSEL,
  input INCPCTRL,
  input [2:0] LOOPBACK,
  input PCIEEQRXEQADAPTDONE,
  input PCIERSTIDLE,
  input PCIERSTTXSYNCSTART,
  input PCIEUSERRATEDONE,
  input [15:0] PCSRSVDIN,
  input QPLL0CLK,
  input QPLL0FREQLOCK,
  input QPLL0REFCLK,
  input QPLL1CLK,
  input QPLL1FREQLOCK,
  input QPLL1REFCLK,
  input RESETOVRD,
  input RX8B10BEN,
  input RXAFECFOKEN,
  input RXBUFRESET,
  input RXCDRFREQRESET,
  input RXCDRHOLD,
  input RXCDROVRDEN,
  input RXCDRRESET,
  input RXCHBONDEN,
  input [4:0] RXCHBONDI,
  input [2:0] RXCHBONDLEVEL,
  input RXCHBONDMASTER,
  input RXCHBONDSLAVE,
  input RXCKCALRESET,
  input [6:0] RXCKCALSTART,
  input RXCOMMADETEN,
  input [1:0] RXDFEAGCCTRL,
  input RXDFEAGCHOLD,
  input RXDFEAGCOVRDEN,
  input [3:0] RXDFECFOKFCNUM,
  input RXDFECFOKFEN,
  input RXDFECFOKFPULSE,
  input RXDFECFOKHOLD,
  input RXDFECFOKOVREN,
  input RXDFEKHHOLD,
  input RXDFEKHOVRDEN,
  input RXDFELFHOLD,
  input RXDFELFOVRDEN,
  input RXDFELPMRESET,
  input RXDFETAP10HOLD,
  input RXDFETAP10OVRDEN,
  input RXDFETAP11HOLD,
  input RXDFETAP11OVRDEN,
  input RXDFETAP12HOLD,
  input RXDFETAP12OVRDEN,
  input RXDFETAP13HOLD,
  input RXDFETAP13OVRDEN,
  input RXDFETAP14HOLD,
  input RXDFETAP14OVRDEN,
  input RXDFETAP15HOLD,
  input RXDFETAP15OVRDEN,
  input RXDFETAP2HOLD,
  input RXDFETAP2OVRDEN,
  input RXDFETAP3HOLD,
  input RXDFETAP3OVRDEN,
  input RXDFETAP4HOLD,
  input RXDFETAP4OVRDEN,
  input RXDFETAP5HOLD,
  input RXDFETAP5OVRDEN,
  input RXDFETAP6HOLD,
  input RXDFETAP6OVRDEN,
  input RXDFETAP7HOLD,
  input RXDFETAP7OVRDEN,
  input RXDFETAP8HOLD,
  input RXDFETAP8OVRDEN,
  input RXDFETAP9HOLD,
  input RXDFETAP9OVRDEN,
  input RXDFEUTHOLD,
  input RXDFEUTOVRDEN,
  input RXDFEVPHOLD,
  input RXDFEVPOVRDEN,
  input RXDFEXYDEN,
  input RXDLYBYPASS,
  input RXDLYEN,
  input RXDLYOVRDEN,
  input RXDLYSRESET,
  input [1:0] RXELECIDLEMODE,
  input RXEQTRAINING,
  input RXGEARBOXSLIP,
  input RXLATCLK,
  input RXLPMEN,
  input RXLPMGCHOLD,
  input RXLPMGCOVRDEN,
  input RXLPMHFHOLD,
  input RXLPMHFOVRDEN,
  input RXLPMLFHOLD,
  input RXLPMLFKLOVRDEN,
  input RXLPMOSHOLD,
  input RXLPMOSOVRDEN,
  input RXMCOMMAALIGNEN,
  input [1:0] RXMONITORSEL,
  input RXOOBRESET,
  input RXOSCALRESET,
  input RXOSHOLD,
  input RXOSOVRDEN,
  input [2:0] RXOUTCLKSEL,
  input RXPCOMMAALIGNEN,
  input RXPCSRESET,
  input [1:0] RXPD,
  input RXPHALIGN,
  input RXPHALIGNEN,
  input RXPHDLYPD,
  input RXPHDLYRESET,
  input RXPHOVRDEN,
  input [1:0] RXPLLCLKSEL,
  input RXPMARESET,
  input RXPOLARITY,
  input RXPRBSCNTRESET,
  input [3:0] RXPRBSSEL,
  input RXPROGDIVRESET,
  input RXQPIEN,
  input [2:0] RXRATE,
  input RXRATEMODE,
  input RXSLIDE,
  input RXSLIPOUTCLK,
  input RXSLIPPMA,
  input RXSYNCALLIN,
  input RXSYNCIN,
  input RXSYNCMODE,
  input [1:0] RXSYSCLKSEL,
  input RXTERMINATION,
  input RXUSERRDY,
  input RXUSRCLK,
  input RXUSRCLK2,
  input SIGVALIDCLK,
  input [19:0] TSTIN,
  input [7:0] TX8B10BBYPASS,
  input TX8B10BEN,
  input TXCOMINIT,
  input TXCOMSAS,
  input TXCOMWAKE,
  input [15:0] TXCTRL0,
  input [15:0] TXCTRL1,
  input [7:0] TXCTRL2,
  input [127:0] TXDATA,
  input [7:0] TXDATAEXTENDRSVD,
  input TXDCCFORCESTART,
  input TXDCCRESET,
  input [1:0] TXDEEMPH,
  input TXDETECTRX,
  input [4:0] TXDIFFCTRL,
  input TXDLYBYPASS,
  input TXDLYEN,
  input TXDLYHOLD,
  input TXDLYOVRDEN,
  input TXDLYSRESET,
  input TXDLYUPDOWN,
  input TXELECIDLE,
  input [5:0] TXHEADER,
  input TXINHIBIT,
  input TXLATCLK,
  input TXLFPSTRESET,
  input TXLFPSU2LPEXIT,
  input TXLFPSU3WAKE,
  input [6:0] TXMAINCURSOR,
  input [2:0] TXMARGIN,
  input TXMUXDCDEXHOLD,
  input TXMUXDCDORWREN,
  input TXONESZEROS,
  input [2:0] TXOUTCLKSEL,
  input TXPCSRESET,
  input [1:0] TXPD,
  input TXPDELECIDLEMODE,
  input TXPHALIGN,
  input TXPHALIGNEN,
  input TXPHDLYPD,
  input TXPHDLYRESET,
  input TXPHDLYTSTCLK,
  input TXPHINIT,
  input TXPHOVRDEN,
  input TXPIPPMEN,
  input TXPIPPMOVRDEN,
  input TXPIPPMPD,
  input TXPIPPMSEL,
  input [4:0] TXPIPPMSTEPSIZE,
  input TXPISOPD,
  input [1:0] TXPLLCLKSEL,
  input TXPMARESET,
  input TXPOLARITY,
  input [4:0] TXPOSTCURSOR,
  input TXPRBSFORCEERR,
  input [3:0] TXPRBSSEL,
  input [4:0] TXPRECURSOR,
  input TXPROGDIVRESET,
  input TXQPIBIASEN,
  input TXQPIWEAKPUP,
  input [2:0] TXRATE,
  input TXRATEMODE,
  input [6:0] TXSEQUENCE,
  input TXSWING,
  input TXSYNCALLIN,
  input TXSYNCIN,
  input TXSYNCMODE,
  input [1:0] TXSYSCLKSEL,
  input TXUSERRDY,
  input TXUSRCLK,
  input TXUSRCLK2
);
endmodule


module GTHE4_COMMON #(
  parameter [0:0] AEN_QPLL0_FBDIV = 1'b1,
  parameter [0:0] AEN_QPLL1_FBDIV = 1'b1,
  parameter [0:0] AEN_SDM0TOGGLE = 1'b0,
  parameter [0:0] AEN_SDM1TOGGLE = 1'b0,
  parameter [0:0] A_SDM0TOGGLE = 1'b0,
  parameter [8:0] A_SDM1DATA_HIGH = 9'b000000000,
  parameter [15:0] A_SDM1DATA_LOW = 16'b0000000000000000,
  parameter [0:0] A_SDM1TOGGLE = 1'b0,
  parameter [15:0] BIAS_CFG0 = 16'h0000,
  parameter [15:0] BIAS_CFG1 = 16'h0000,
  parameter [15:0] BIAS_CFG2 = 16'h0000,
  parameter [15:0] BIAS_CFG3 = 16'h0000,
  parameter [15:0] BIAS_CFG4 = 16'h0000,
  parameter [15:0] BIAS_CFG_RSVD = 16'h0000,
  parameter [15:0] COMMON_CFG0 = 16'h0000,
  parameter [15:0] COMMON_CFG1 = 16'h0000,
  parameter [15:0] POR_CFG = 16'h0000,
  parameter [15:0] PPF0_CFG = 16'h0F00,
  parameter [15:0] PPF1_CFG = 16'h0F00,
  parameter QPLL0CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL0_CFG0 = 16'h391C,
  parameter [15:0] QPLL0_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL0_CFG2 = 16'h0F80,
  parameter [15:0] QPLL0_CFG2_G3 = 16'h0F80,
  parameter [15:0] QPLL0_CFG3 = 16'h0120,
  parameter [15:0] QPLL0_CFG4 = 16'h0002,
  parameter [9:0] QPLL0_CP = 10'b0000011111,
  parameter [9:0] QPLL0_CP_G3 = 10'b0000011111,
  parameter integer QPLL0_FBDIV = 66,
  parameter integer QPLL0_FBDIV_G3 = 80,
  parameter [15:0] QPLL0_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL0_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL0_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL0_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL0_LPF = 10'b1011111111,
  parameter [9:0] QPLL0_LPF_G3 = 10'b1111111111,
  parameter [0:0] QPLL0_PCI_EN = 1'b0,
  parameter [0:0] QPLL0_RATE_SW_USE_DRP = 1'b0,
  parameter integer QPLL0_REFCLK_DIV = 1,
  parameter [15:0] QPLL0_SDM_CFG0 = 16'h0040,
  parameter [15:0] QPLL0_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_SDM_CFG2 = 16'h0000,
  parameter QPLL1CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL1_CFG0 = 16'h691C,
  parameter [15:0] QPLL1_CFG1 = 16'h0020,
  parameter [15:0] QPLL1_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL1_CFG2 = 16'h0F80,
  parameter [15:0] QPLL1_CFG2_G3 = 16'h0F80,
  parameter [15:0] QPLL1_CFG3 = 16'h0120,
  parameter [15:0] QPLL1_CFG4 = 16'h0002,
  parameter [9:0] QPLL1_CP = 10'b0000011111,
  parameter [9:0] QPLL1_CP_G3 = 10'b0000011111,
  parameter integer QPLL1_FBDIV = 66,
  parameter integer QPLL1_FBDIV_G3 = 80,
  parameter [15:0] QPLL1_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL1_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL1_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL1_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL1_LPF = 10'b1011111111,
  parameter [9:0] QPLL1_LPF_G3 = 10'b1111111111,
  parameter [0:0] QPLL1_PCI_EN = 1'b0,
  parameter [0:0] QPLL1_RATE_SW_USE_DRP = 1'b0,
  parameter integer QPLL1_REFCLK_DIV = 1,
  parameter [15:0] QPLL1_SDM_CFG0 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG2 = 16'h0000,
  parameter [15:0] RSVD_ATTR0 = 16'h0000,
  parameter [15:0] RSVD_ATTR1 = 16'h0000,
  parameter [15:0] RSVD_ATTR2 = 16'h0000,
  parameter [15:0] RSVD_ATTR3 = 16'h0000,
  parameter [1:0] RXRECCLKOUT0_SEL = 2'b00,
  parameter [1:0] RXRECCLKOUT1_SEL = 2'b00,
  parameter [0:0] SARC_ENB = 1'b0,
  parameter [0:0] SARC_SEL = 1'b0,
  parameter [15:0] SDM0INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM0INITSEED0_1 = 9'b000000000,
  parameter [15:0] SDM1INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM1INITSEED0_1 = 9'b000000000,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter SIM_MODE = "FAST",
  parameter SIM_RESET_SPEEDUP = "TRUE"
)(
  output [15:0] DRPDO,
  output DRPRDY,
  output [7:0] PMARSVDOUT0,
  output [7:0] PMARSVDOUT1,
  output QPLL0FBCLKLOST,
  output QPLL0LOCK,
  output QPLL0OUTCLK,
  output QPLL0OUTREFCLK,
  output QPLL0REFCLKLOST,
  output QPLL1FBCLKLOST,
  output QPLL1LOCK,
  output QPLL1OUTCLK,
  output QPLL1OUTREFCLK,
  output QPLL1REFCLKLOST,
  output [7:0] QPLLDMONITOR0,
  output [7:0] QPLLDMONITOR1,
  output REFCLKOUTMONITOR0,
  output REFCLKOUTMONITOR1,
  output [1:0] RXRECCLK0SEL,
  output [1:0] RXRECCLK1SEL,
  output [3:0] SDM0FINALOUT,
  output [14:0] SDM0TESTDATA,
  output [3:0] SDM1FINALOUT,
  output [14:0] SDM1TESTDATA,
  output [9:0] TCONGPO,
  output TCONRSVDOUT0,

  input BGBYPASSB,
  input BGMONITORENB,
  input BGPDB,
  input [4:0] BGRCALOVRD,
  input BGRCALOVRDENB,
  input [15:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input GTGREFCLK0,
  input GTGREFCLK1,
  input GTNORTHREFCLK00,
  input GTNORTHREFCLK01,
  input GTNORTHREFCLK10,
  input GTNORTHREFCLK11,
  input GTREFCLK00,
  input GTREFCLK01,
  input GTREFCLK10,
  input GTREFCLK11,
  input GTSOUTHREFCLK00,
  input GTSOUTHREFCLK01,
  input GTSOUTHREFCLK10,
  input GTSOUTHREFCLK11,
  input [2:0] PCIERATEQPLL0,
  input [2:0] PCIERATEQPLL1,
  input [7:0] PMARSVD0,
  input [7:0] PMARSVD1,
  input QPLL0CLKRSVD0,
  input QPLL0CLKRSVD1,
  input [7:0] QPLL0FBDIV,
  input QPLL0LOCKDETCLK,
  input QPLL0LOCKEN,
  input QPLL0PD,
  input [2:0] QPLL0REFCLKSEL,
  input QPLL0RESET,
  input QPLL1CLKRSVD0,
  input QPLL1CLKRSVD1,
  input [7:0] QPLL1FBDIV,
  input QPLL1LOCKDETCLK,
  input QPLL1LOCKEN,
  input QPLL1PD,
  input [2:0] QPLL1REFCLKSEL,
  input QPLL1RESET,
  input [7:0] QPLLRSVD1,
  input [4:0] QPLLRSVD2,
  input [4:0] QPLLRSVD3,
  input [7:0] QPLLRSVD4,
  input RCALENB,
  input [24:0] SDM0DATA,
  input SDM0RESET,
  input SDM0TOGGLE,
  input [1:0] SDM0WIDTH,
  input [24:0] SDM1DATA,
  input SDM1RESET,
  input SDM1TOGGLE,
  input [1:0] SDM1WIDTH,
  input [9:0] TCONGPI,
  input TCONPOWERUP,
  input [1:0] TCONRESET,
  input [1:0] TCONRSVDIN1
);
endmodule

module GTPE2_CHANNEL (
  DMONITOROUT,
  DRPDO,
  DRPRDY,
  EYESCANDATAERROR,
  GTPTXN,
  GTPTXP,
  PCSRSVDOUT,
  PHYSTATUS,
  PMARSVDOUT0,
  PMARSVDOUT1,
  RXBUFSTATUS,
  RXBYTEISALIGNED,
  RXBYTEREALIGN,
  RXCDRLOCK,
  RXCHANBONDSEQ,
  RXCHANISALIGNED,
  RXCHANREALIGN,
  RXCHARISCOMMA,
  RXCHARISK,
  RXCHBONDO,
  RXCLKCORCNT,
  RXCOMINITDET,
  RXCOMMADET,
  RXCOMSASDET,
  RXCOMWAKEDET,
  RXDATA,
  RXDATAVALID,
  RXDISPERR,
  RXDLYSRESETDONE,
  RXELECIDLE,
  RXHEADER,
  RXHEADERVALID,
  RXNOTINTABLE,
  RXOSINTDONE,
  RXOSINTSTARTED,
  RXOSINTSTROBEDONE,
  RXOSINTSTROBESTARTED,
  RXOUTCLK,
  RXOUTCLKFABRIC,
  RXOUTCLKPCS,
  RXPHALIGNDONE,
  RXPHMONITOR,
  RXPHSLIPMONITOR,
  RXPMARESETDONE,
  RXPRBSERR,
  RXRATEDONE,
  RXRESETDONE,
  RXSTARTOFSEQ,
  RXSTATUS,
  RXSYNCDONE,
  RXSYNCOUT,
  RXVALID,
  TXBUFSTATUS,
  TXCOMFINISH,
  TXDLYSRESETDONE,
  TXGEARBOXREADY,
  TXOUTCLK,
  TXOUTCLKFABRIC,
  TXOUTCLKPCS,
  TXPHALIGNDONE,
  TXPHINITDONE,
  TXPMARESETDONE,
  TXRATEDONE,
  TXRESETDONE,
  TXSYNCDONE,
  TXSYNCOUT,

  CFGRESET,
  CLKRSVD0,
  CLKRSVD1,
  DMONFIFORESET,
  DMONITORCLK,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  EYESCANMODE,
  EYESCANRESET,
  EYESCANTRIGGER,
  GTPRXN,
  GTPRXP,
  GTRESETSEL,
  GTRSVD,
  GTRXRESET,
  GTTXRESET,
  LOOPBACK,
  PCSRSVDIN,
  PLL0CLK,
  PLL0REFCLK,
  PLL1CLK,
  PLL1REFCLK,
  PMARSVDIN0,
  PMARSVDIN1,
  PMARSVDIN2,
  PMARSVDIN3,
  PMARSVDIN4,
  RESETOVRD,
  RX8B10BEN,
  RXADAPTSELTEST,
  RXBUFRESET,
  RXCDRFREQRESET,
  RXCDRHOLD,
  RXCDROVRDEN,
  RXCDRRESET,
  RXCDRRESETRSV,
  RXCHBONDEN,
  RXCHBONDI,
  RXCHBONDLEVEL,
  RXCHBONDMASTER,
  RXCHBONDSLAVE,
  RXCOMMADETEN,
  RXDDIEN,
  RXDFEXYDEN,
  RXDLYBYPASS,
  RXDLYEN,
  RXDLYOVRDEN,
  RXDLYSRESET,
  RXELECIDLEMODE,
  RXGEARBOXSLIP,
  RXLPMHFHOLD,
  RXLPMHFOVRDEN,
  RXLPMLFHOLD,
  RXLPMLFOVRDEN,
  RXLPMOSINTNTRLEN,
  RXLPMRESET,
  RXMCOMMAALIGNEN,
  RXOOBRESET,
  RXOSCALRESET,
  RXOSHOLD,
  RXOSINTCFG,
  RXOSINTEN,
  RXOSINTHOLD,
  RXOSINTID0,
  RXOSINTNTRLEN,
  RXOSINTOVRDEN,
  RXOSINTPD,
  RXOSINTSTROBE,
  RXOSINTTESTOVRDEN,
  RXOSOVRDEN,
  RXOUTCLKSEL,
  RXPCOMMAALIGNEN,
  RXPCSRESET,
  RXPD,
  RXPHALIGN,
  RXPHALIGNEN,
  RXPHDLYPD,
  RXPHDLYRESET,
  RXPHOVRDEN,
  RXPMARESET,
  RXPOLARITY,
  RXPRBSCNTRESET,
  RXPRBSSEL,
  RXRATE,
  RXRATEMODE,
  RXSLIDE,
  RXSYNCALLIN,
  RXSYNCIN,
  RXSYNCMODE,
  RXSYSCLKSEL,
  RXUSERRDY,
  RXUSRCLK,
  RXUSRCLK2,
  SETERRSTATUS,
  SIGVALIDCLK,
  TSTIN,
  TX8B10BBYPASS,
  TX8B10BEN,
  TXBUFDIFFCTRL,
  TXCHARDISPMODE,
  TXCHARDISPVAL,
  TXCHARISK,
  TXCOMINIT,
  TXCOMSAS,
  TXCOMWAKE,
  TXDATA,
  TXDEEMPH,
  TXDETECTRX,
  TXDIFFCTRL,
  TXDIFFPD,
  TXDLYBYPASS,
  TXDLYEN,
  TXDLYHOLD,
  TXDLYOVRDEN,
  TXDLYSRESET,
  TXDLYUPDOWN,
  TXELECIDLE,
  TXHEADER,
  TXINHIBIT,
  TXMAINCURSOR,
  TXMARGIN,
  TXOUTCLKSEL,
  TXPCSRESET,
  TXPD,
  TXPDELECIDLEMODE,
  TXPHALIGN,
  TXPHALIGNEN,
  TXPHDLYPD,
  TXPHDLYRESET,
  TXPHDLYTSTCLK,
  TXPHINIT,
  TXPHOVRDEN,
  TXPIPPMEN,
  TXPIPPMOVRDEN,
  TXPIPPMPD,
  TXPIPPMSEL,
  TXPIPPMSTEPSIZE,
  TXPISOPD,
  TXPMARESET,
  TXPOLARITY,
  TXPOSTCURSOR,
  TXPOSTCURSORINV,
  TXPRBSFORCEERR,
  TXPRBSSEL,
  TXPRECURSOR,
  TXPRECURSORINV,
  TXRATE,
  TXRATEMODE,
  TXSEQUENCE,
  TXSTARTSEQ,
  TXSWING,
  TXSYNCALLIN,
  TXSYNCIN,
  TXSYNCMODE,
  TXSYSCLKSEL,
  TXUSERRDY,
  TXUSRCLK,
  TXUSRCLK2
);
  parameter LOC = "UNPLACED";
    parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0;
  parameter [0:0] ACJTAG_MODE = 1'b0;
  parameter [0:0] ACJTAG_RESET = 1'b0;
  parameter [19:0] ADAPT_CFG0 = 20'b00000000000000000000;
  parameter ALIGN_COMMA_DOUBLE = "FALSE";
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111;
  parameter integer ALIGN_COMMA_WORD = 1;
  parameter ALIGN_MCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011;
  parameter ALIGN_PCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100;
  parameter CBCC_DATA_SOURCE_SEL = "DECODED";
  parameter [42:0] CFOK_CFG = 43'b1001001000000000000000001000000111010000000;
  parameter [6:0] CFOK_CFG2 = 7'b0100000;
  parameter [6:0] CFOK_CFG3 = 7'b0100000;
  parameter [0:0] CFOK_CFG4 = 1'b0;
  parameter [1:0] CFOK_CFG5 = 2'b00;
  parameter [3:0] CFOK_CFG6 = 4'b0000;
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE";
  parameter integer CHAN_BOND_MAX_SKEW = 7;
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100;
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111;
  parameter CHAN_BOND_SEQ_2_USE = "FALSE";
  parameter integer CHAN_BOND_SEQ_LEN = 1;
  parameter [0:0] CLK_COMMON_SWING = 1'b0;
  parameter CLK_CORRECT_USE = "TRUE";
  parameter CLK_COR_KEEP_IDLE = "FALSE";
  parameter integer CLK_COR_MAX_LAT = 20;
  parameter integer CLK_COR_MIN_LAT = 18;
  parameter CLK_COR_PRECEDENCE = "TRUE";
  parameter integer CLK_COR_REPEAT_WAIT = 0;
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100;
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111;
  parameter CLK_COR_SEQ_2_USE = "FALSE";
  parameter integer CLK_COR_SEQ_LEN = 1;
  parameter DEC_MCOMMA_DETECT = "TRUE";
  parameter DEC_PCOMMA_DETECT = "TRUE";
  parameter DEC_VALID_COMMA_ONLY = "TRUE";
  parameter [23:0] DMONITOR_CFG = 24'h000A00;
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0;
  parameter [5:0] ES_CONTROL = 6'b000000;
  parameter ES_ERRDET_EN = "FALSE";
  parameter ES_EYE_SCAN_EN = "FALSE";
  parameter [11:0] ES_HORZ_OFFSET = 12'h010;
  parameter [9:0] ES_PMA_CFG = 10'b0000000000;
  parameter [4:0] ES_PRESCALE = 5'b00000;
  parameter [79:0] ES_QUALIFIER = 80'h00000000000000000000;
  parameter [79:0] ES_QUAL_MASK = 80'h00000000000000000000;
  parameter [79:0] ES_SDATA_MASK = 80'h00000000000000000000;
  parameter [8:0] ES_VERT_OFFSET = 9'b000000000;
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111;
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111;
  parameter FTS_LANE_DESKEW_EN = "FALSE";
  parameter [2:0] GEARBOX_MODE = 3'b000;
  parameter [0:0] IS_CLKRSVD0_INVERTED = 1'b0;
  parameter [0:0] IS_CLKRSVD1_INVERTED = 1'b0;
  parameter [0:0] IS_DMONITORCLK_INVERTED = 1'b0;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK_INVERTED = 1'b0;
  parameter [0:0] IS_SIGVALIDCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXPHDLYTSTCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK_INVERTED = 1'b0;
  parameter [0:0] LOOPBACK_CFG = 1'b0;
  parameter [1:0] OUTREFCLK_SEL_INV = 2'b11;
  parameter PCS_PCIE_EN = "FALSE";
  parameter [47:0] PCS_RSVD_ATTR = 48'h000000000000;
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C;
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19;
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64;
  parameter [0:0] PMA_LOOPBACK_CFG = 1'b0;
  parameter [31:0] PMA_RSV = 32'h00000333;
  parameter [31:0] PMA_RSV2 = 32'h00002050;
  parameter [1:0] PMA_RSV3 = 2'b00;
  parameter [3:0] PMA_RSV4 = 4'b0000;
  parameter [0:0] PMA_RSV5 = 1'b0;
  parameter [0:0] PMA_RSV6 = 1'b0;
  parameter [0:0] PMA_RSV7 = 1'b0;
  parameter [4:0] RXBUFRESET_TIME = 5'b00001;
  parameter RXBUF_ADDR_MODE = "FULL";
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000;
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000;
  parameter RXBUF_EN = "TRUE";
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE";
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE";
  parameter RXBUF_RESET_ON_EIDLE = "FALSE";
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE";
  parameter integer RXBUF_THRESH_OVFLW = 61;
  parameter RXBUF_THRESH_OVRD = "FALSE";
  parameter integer RXBUF_THRESH_UNDFLW = 4;
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001;
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001;
  parameter [82:0] RXCDR_CFG = 83'h0000107FE406001041010;
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0;
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0;
  parameter [5:0] RXCDR_LOCK_CFG = 6'b001001;
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0;
  parameter [15:0] RXDLY_CFG = 16'h0010;
  parameter [8:0] RXDLY_LCFG = 9'h020;
  parameter [15:0] RXDLY_TAP_CFG = 16'h0000;
  parameter RXGEARBOX_EN = "FALSE";
  parameter [4:0] RXISCANRESET_TIME = 5'b00001;
  parameter [6:0] RXLPMRESET_TIME = 7'b0001111;
  parameter [0:0] RXLPM_BIAS_STARTUP_DISABLE = 1'b0;
  parameter [3:0] RXLPM_CFG = 4'b0110;
  parameter [0:0] RXLPM_CFG1 = 1'b0;
  parameter [0:0] RXLPM_CM_CFG = 1'b0;
  parameter [8:0] RXLPM_GC_CFG = 9'b111100010;
  parameter [2:0] RXLPM_GC_CFG2 = 3'b001;
  parameter [13:0] RXLPM_HF_CFG = 14'b00001111110000;
  parameter [4:0] RXLPM_HF_CFG2 = 5'b01010;
  parameter [3:0] RXLPM_HF_CFG3 = 4'b0000;
  parameter [0:0] RXLPM_HOLD_DURING_EIDLE = 1'b0;
  parameter [0:0] RXLPM_INCM_CFG = 1'b0;
  parameter [0:0] RXLPM_IPCM_CFG = 1'b0;
  parameter [17:0] RXLPM_LF_CFG = 18'b000000001111110000;
  parameter [4:0] RXLPM_LF_CFG2 = 5'b01010;
  parameter [2:0] RXLPM_OSINT_CFG = 3'b100;
  parameter [6:0] RXOOB_CFG = 7'b0000110;
  parameter RXOOB_CLK_CFG = "PMA";
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011;
  parameter [4:0] RXOSCALRESET_TIMEOUT = 5'b00000;
  parameter integer RXOUT_DIV = 2;
  parameter [4:0] RXPCSRESET_TIME = 5'b00001;
  parameter [23:0] RXPHDLY_CFG = 24'h084000;
  parameter [23:0] RXPH_CFG = 24'hC00002;
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000;
  parameter [2:0] RXPI_CFG0 = 3'b000;
  parameter [0:0] RXPI_CFG1 = 1'b0;
  parameter [0:0] RXPI_CFG2 = 1'b0;
  parameter [4:0] RXPMARESET_TIME = 5'b00011;
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0;
  parameter integer RXSLIDE_AUTO_WAIT = 7;
  parameter RXSLIDE_MODE = "OFF";
  parameter [0:0] RXSYNC_MULTILANE = 1'b0;
  parameter [0:0] RXSYNC_OVRD = 1'b0;
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0;
  parameter [15:0] RX_BIAS_CFG = 16'b0000111100110011;
  parameter [5:0] RX_BUFFER_CFG = 6'b000000;
  parameter integer RX_CLK25_DIV = 7;
  parameter [0:0] RX_CLKMUX_EN = 1'b1;
  parameter [1:0] RX_CM_SEL = 2'b11;
  parameter [3:0] RX_CM_TRIM = 4'b0100;
  parameter integer RX_DATA_WIDTH = 20;
  parameter [5:0] RX_DDI_SEL = 6'b000000;
  parameter [13:0] RX_DEBUG_CFG = 14'b00000000000000;
  parameter RX_DEFER_RESET_BUF_EN = "TRUE";
  parameter RX_DISPERR_SEQ_MATCH = "TRUE";
  parameter [12:0] RX_OS_CFG = 13'b0001111110000;
  parameter integer RX_SIG_VALID_DLY = 10;
  parameter RX_XCLK_SEL = "RXREC";
  parameter integer SAS_MAX_COM = 64;
  parameter integer SAS_MIN_COM = 36;
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111;
  parameter [2:0] SATA_BURST_VAL = 3'b100;
  parameter [2:0] SATA_EIDLE_VAL = 3'b100;
  parameter integer SATA_MAX_BURST = 8;
  parameter integer SATA_MAX_INIT = 21;
  parameter integer SATA_MAX_WAKE = 7;
  parameter integer SATA_MIN_BURST = 4;
  parameter integer SATA_MIN_INIT = 12;
  parameter integer SATA_MIN_WAKE = 4;
  parameter SATA_PLL_CFG = "VCO_3000MHZ";
  parameter SHOW_REALIGN_COMMA = "TRUE";
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE";
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_TX_EIDLE_DRIVE_LEVEL = "X";
  parameter SIM_VERSION = "1.0";
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000;
  parameter [2:0] TERM_RCAL_OVRD = 3'b000;
  parameter [7:0] TRANS_TIME_RATE = 8'h0E;
  parameter [31:0] TST_RSV = 32'h00000000;
  parameter TXBUF_EN = "TRUE";
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE";
  parameter [15:0] TXDLY_CFG = 16'h0010;
  parameter [8:0] TXDLY_LCFG = 9'h020;
  parameter [15:0] TXDLY_TAP_CFG = 16'h0000;
  parameter TXGEARBOX_EN = "FALSE";
  parameter [0:0] TXOOB_CFG = 1'b0;
  parameter integer TXOUT_DIV = 2;
  parameter [4:0] TXPCSRESET_TIME = 5'b00001;
  parameter [23:0] TXPHDLY_CFG = 24'h084000;
  parameter [15:0] TXPH_CFG = 16'h0400;
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000;
  parameter [1:0] TXPI_CFG0 = 2'b00;
  parameter [1:0] TXPI_CFG1 = 2'b00;
  parameter [1:0] TXPI_CFG2 = 2'b00;
  parameter [0:0] TXPI_CFG3 = 1'b0;
  parameter [0:0] TXPI_CFG4 = 1'b0;
  parameter [2:0] TXPI_CFG5 = 3'b000;
  parameter [0:0] TXPI_GREY_SEL = 1'b0;
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0;
  parameter TXPI_PPMCLK_SEL = "TXUSRCLK2";
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000;
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000;
  parameter [4:0] TXPMARESET_TIME = 5'b00001;
  parameter [0:0] TXSYNC_MULTILANE = 1'b0;
  parameter [0:0] TXSYNC_OVRD = 1'b0;
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0;
  parameter integer TX_CLK25_DIV = 7;
  parameter [0:0] TX_CLKMUX_EN = 1'b1;
  parameter integer TX_DATA_WIDTH = 20;
  parameter [5:0] TX_DEEMPH0 = 6'b000000;
  parameter [5:0] TX_DEEMPH1 = 6'b000000;
  parameter TX_DRIVE_MODE = "DIRECT";
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110;
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100;
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE";
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0;
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110;
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001;
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101;
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010;
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110;
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100;
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010;
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000;
  parameter [0:0] TX_PREDRIVER_MODE = 1'b0;
  parameter [13:0] TX_RXDETECT_CFG = 14'h1832;
  parameter [2:0] TX_RXDETECT_REF = 3'b100;
  parameter TX_XCLK_SEL = "TXUSR";
  parameter [0:0] UCODEER_CLR = 1'b0;
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0;
  output DRPRDY;
  output EYESCANDATAERROR;
  output GTPTXN;
  output GTPTXP;
  output PHYSTATUS;
  output PMARSVDOUT0;
  output PMARSVDOUT1;
  output RXBYTEISALIGNED;
  output RXBYTEREALIGN;
  output RXCDRLOCK;
  output RXCHANBONDSEQ;
  output RXCHANISALIGNED;
  output RXCHANREALIGN;
  output RXCOMINITDET;
  output RXCOMMADET;
  output RXCOMSASDET;
  output RXCOMWAKEDET;
  output RXDLYSRESETDONE;
  output RXELECIDLE;
  output RXHEADERVALID;
  output RXOSINTDONE;
  output RXOSINTSTARTED;
  output RXOSINTSTROBEDONE;
  output RXOSINTSTROBESTARTED;
  output RXOUTCLK;
  output RXOUTCLKFABRIC;
  output RXOUTCLKPCS;
  output RXPHALIGNDONE;
  output RXPMARESETDONE;
  output RXPRBSERR;
  output RXRATEDONE;
  output RXRESETDONE;
  output RXSYNCDONE;
  output RXSYNCOUT;
  output RXVALID;
  output TXCOMFINISH;
  output TXDLYSRESETDONE;
  output TXGEARBOXREADY;
  output TXOUTCLK;
  output TXOUTCLKFABRIC;
  output TXOUTCLKPCS;
  output TXPHALIGNDONE;
  output TXPHINITDONE;
  output TXPMARESETDONE;
  output TXRATEDONE;
  output TXRESETDONE;
  output TXSYNCDONE;
  output TXSYNCOUT;
  output [14:0] DMONITOROUT;
  output [15:0] DRPDO;
  output [15:0] PCSRSVDOUT;
  output [1:0] RXCLKCORCNT;
  output [1:0] RXDATAVALID;
  output [1:0] RXSTARTOFSEQ;
  output [1:0] TXBUFSTATUS;
  output [2:0] RXBUFSTATUS;
  output [2:0] RXHEADER;
  output [2:0] RXSTATUS;
  output [31:0] RXDATA;
  output [3:0] RXCHARISCOMMA;
  output [3:0] RXCHARISK;
  output [3:0] RXCHBONDO;
  output [3:0] RXDISPERR;
  output [3:0] RXNOTINTABLE;
  output [4:0] RXPHMONITOR;
  output [4:0] RXPHSLIPMONITOR;
  input CFGRESET;
  input CLKRSVD0;
  input CLKRSVD1;
  input DMONFIFORESET;
  input DMONITORCLK;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input EYESCANMODE;
  input EYESCANRESET;
  input EYESCANTRIGGER;
  input GTPRXN;
  input GTPRXP;
  input GTRESETSEL;
  input GTRXRESET;
  input GTTXRESET;
  input PLL0CLK;
  input PLL0REFCLK;
  input PLL1CLK;
  input PLL1REFCLK;
  input PMARSVDIN0;
  input PMARSVDIN1;
  input PMARSVDIN2;
  input PMARSVDIN3;
  input PMARSVDIN4;
  input RESETOVRD;
  input RX8B10BEN;
  input RXBUFRESET;
  input RXCDRFREQRESET;
  input RXCDRHOLD;
  input RXCDROVRDEN;
  input RXCDRRESET;
  input RXCDRRESETRSV;
  input RXCHBONDEN;
  input RXCHBONDMASTER;
  input RXCHBONDSLAVE;
  input RXCOMMADETEN;
  input RXDDIEN;
  input RXDFEXYDEN;
  input RXDLYBYPASS;
  input RXDLYEN;
  input RXDLYOVRDEN;
  input RXDLYSRESET;
  input RXGEARBOXSLIP;
  input RXLPMHFHOLD;
  input RXLPMHFOVRDEN;
  input RXLPMLFHOLD;
  input RXLPMLFOVRDEN;
  input RXLPMOSINTNTRLEN;
  input RXLPMRESET;
  input RXMCOMMAALIGNEN;
  input RXOOBRESET;
  input RXOSCALRESET;
  input RXOSHOLD;
  input RXOSINTEN;
  input RXOSINTHOLD;
  input RXOSINTNTRLEN;
  input RXOSINTOVRDEN;
  input RXOSINTPD;
  input RXOSINTSTROBE;
  input RXOSINTTESTOVRDEN;
  input RXOSOVRDEN;
  input RXPCOMMAALIGNEN;
  input RXPCSRESET;
  input RXPHALIGN;
  input RXPHALIGNEN;
  input RXPHDLYPD;
  input RXPHDLYRESET;
  input RXPHOVRDEN;
  input RXPMARESET;
  input RXPOLARITY;
  input RXPRBSCNTRESET;
  input RXRATEMODE;
  input RXSLIDE;
  input RXSYNCALLIN;
  input RXSYNCIN;
  input RXSYNCMODE;
  input RXUSERRDY;
  input RXUSRCLK2;
  input RXUSRCLK;
  input SETERRSTATUS;
  input SIGVALIDCLK;
  input TX8B10BEN;
  input TXCOMINIT;
  input TXCOMSAS;
  input TXCOMWAKE;
  input TXDEEMPH;
  input TXDETECTRX;
  input TXDIFFPD;
  input TXDLYBYPASS;
  input TXDLYEN;
  input TXDLYHOLD;
  input TXDLYOVRDEN;
  input TXDLYSRESET;
  input TXDLYUPDOWN;
  input TXELECIDLE;
  input TXINHIBIT;
  input TXPCSRESET;
  input TXPDELECIDLEMODE;
  input TXPHALIGN;
  input TXPHALIGNEN;
  input TXPHDLYPD;
  input TXPHDLYRESET;
  input TXPHDLYTSTCLK;
  input TXPHINIT;
  input TXPHOVRDEN;
  input TXPIPPMEN;
  input TXPIPPMOVRDEN;
  input TXPIPPMPD;
  input TXPIPPMSEL;
  input TXPISOPD;
  input TXPMARESET;
  input TXPOLARITY;
  input TXPOSTCURSORINV;
  input TXPRBSFORCEERR;
  input TXPRECURSORINV;
  input TXRATEMODE;
  input TXSTARTSEQ;
  input TXSWING;
  input TXSYNCALLIN;
  input TXSYNCIN;
  input TXSYNCMODE;
  input TXUSERRDY;
  input TXUSRCLK2;
  input TXUSRCLK;
  input [13:0] RXADAPTSELTEST;
  input [15:0] DRPDI;
  input [15:0] GTRSVD;
  input [15:0] PCSRSVDIN;
  input [19:0] TSTIN;
  input [1:0] RXELECIDLEMODE;
  input [1:0] RXPD;
  input [1:0] RXSYSCLKSEL;
  input [1:0] TXPD;
  input [1:0] TXSYSCLKSEL;
  input [2:0] LOOPBACK;
  input [2:0] RXCHBONDLEVEL;
  input [2:0] RXOUTCLKSEL;
  input [2:0] RXPRBSSEL;
  input [2:0] RXRATE;
  input [2:0] TXBUFDIFFCTRL;
  input [2:0] TXHEADER;
  input [2:0] TXMARGIN;
  input [2:0] TXOUTCLKSEL;
  input [2:0] TXPRBSSEL;
  input [2:0] TXRATE;
  input [31:0] TXDATA;
  input [3:0] RXCHBONDI;
  input [3:0] RXOSINTCFG;
  input [3:0] RXOSINTID0;
  input [3:0] TX8B10BBYPASS;
  input [3:0] TXCHARDISPMODE;
  input [3:0] TXCHARDISPVAL;
  input [3:0] TXCHARISK;
  input [3:0] TXDIFFCTRL;
  input [4:0] TXPIPPMSTEPSIZE;
  input [4:0] TXPOSTCURSOR;
  input [4:0] TXPRECURSOR;
  input [6:0] TXMAINCURSOR;
  input [6:0] TXSEQUENCE;
  input [8:0] DRPADDR;
endmodule
module GTPE2_COMMON (
  DMONITOROUT,
  DRPDO,
  DRPRDY,
  PLL0FBCLKLOST,
  PLL0LOCK,
  PLL0OUTCLK,
  PLL0OUTREFCLK,
  PLL0REFCLKLOST,
  PLL1FBCLKLOST,
  PLL1LOCK,
  PLL1OUTCLK,
  PLL1OUTREFCLK,
  PLL1REFCLKLOST,
  PMARSVDOUT,
  REFCLKOUTMONITOR0,
  REFCLKOUTMONITOR1,

  BGBYPASSB,
  BGMONITORENB,
  BGPDB,
  BGRCALOVRD,
  BGRCALOVRDENB,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  GTEASTREFCLK0,
  GTEASTREFCLK1,
  GTGREFCLK0,
  GTGREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTWESTREFCLK0,
  GTWESTREFCLK1,
  PLL0LOCKDETCLK,
  PLL0LOCKEN,
  PLL0PD,
  PLL0REFCLKSEL,
  PLL0RESET,
  PLL1LOCKDETCLK,
  PLL1LOCKEN,
  PLL1PD,
  PLL1REFCLKSEL,
  PLL1RESET,
  PLLRSVD1,
  PLLRSVD2,
  PMARSVD,
  RCALENB
);
  parameter LOC = "UNPLACED";
  parameter [63:0] BIAS_CFG = 64'h0000000000000000;
  parameter [31:0] COMMON_CFG = 32'h00000000;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK0_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK1_INVERTED = 1'b0;
  parameter [0:0] IS_PLL0LOCKDETCLK_INVERTED = 1'b0;
  parameter [0:0] IS_PLL1LOCKDETCLK_INVERTED = 1'b0;
  parameter [26:0] PLL0_CFG = 27'h01F03DC;
  parameter [0:0] PLL0_DMON_CFG = 1'b0;
  parameter integer PLL0_FBDIV = 4;
  parameter integer PLL0_FBDIV_45 = 5;
  parameter [23:0] PLL0_INIT_CFG = 24'h00001E;
  parameter [8:0] PLL0_LOCK_CFG = 9'h1E8;
  parameter integer PLL0_REFCLK_DIV = 1;
  parameter [26:0] PLL1_CFG = 27'h01F03DC;
  parameter [0:0] PLL1_DMON_CFG = 1'b0;
  parameter integer PLL1_FBDIV = 4;
  parameter integer PLL1_FBDIV_45 = 5;
  parameter [23:0] PLL1_INIT_CFG = 24'h00001E;
  parameter [8:0] PLL1_LOCK_CFG = 9'h1E8;
  parameter integer PLL1_REFCLK_DIV = 1;
  parameter [7:0] PLL_CLKOUT_CFG = 8'b00000000;
  parameter [15:0] RSVD_ATTR0 = 16'h0000;
  parameter [15:0] RSVD_ATTR1 = 16'h0000;
  parameter [2:0] SIM_PLL0REFCLK_SEL = 3'b001;
  parameter [2:0] SIM_PLL1REFCLK_SEL = 3'b001;
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_VERSION = "1.0";
  output DRPRDY;
  output PLL0FBCLKLOST;
  output PLL0LOCK;
  output PLL0OUTCLK;
  output PLL0OUTREFCLK;
  output PLL0REFCLKLOST;
  output PLL1FBCLKLOST;
  output PLL1LOCK;
  output PLL1OUTCLK;
  output PLL1OUTREFCLK;
  output PLL1REFCLKLOST;
  output REFCLKOUTMONITOR0;
  output REFCLKOUTMONITOR1;
  output [15:0] DRPDO;
  output [15:0] PMARSVDOUT;
  output [7:0] DMONITOROUT;
  input BGBYPASSB;
  input BGMONITORENB;
  input BGPDB;
  input BGRCALOVRDENB;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input GTEASTREFCLK0;
  input GTEASTREFCLK1;
  input GTGREFCLK0;
  input GTGREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTWESTREFCLK0;
  input GTWESTREFCLK1;
  input PLL0LOCKDETCLK;
  input PLL0LOCKEN;
  input PLL0PD;
  input PLL0RESET;
  input PLL1LOCKDETCLK;
  input PLL1LOCKEN;
  input PLL1PD;
  input PLL1RESET;
  input RCALENB;
  input [15:0] DRPDI;
  input [15:0] PLLRSVD1;
  input [2:0] PLL0REFCLKSEL;
  input [2:0] PLL1REFCLKSEL;
  input [4:0] BGRCALOVRD;
  input [4:0] PLLRSVD2;
  input [7:0] DRPADDR;
  input [7:0] PMARSVD;
endmodule
    
module GTXE2_CHANNEL (
  CPLLFBCLKLOST,
  CPLLLOCK,
  CPLLREFCLKLOST,
  DMONITOROUT,
  DRPDO,
  DRPRDY,
  EYESCANDATAERROR,
  GTREFCLKMONITOR,
  GTXTXN,
  GTXTXP,
  PCSRSVDOUT,
  PHYSTATUS,
  RXBUFSTATUS,
  RXBYTEISALIGNED,
  RXBYTEREALIGN,
  RXCDRLOCK,
  RXCHANBONDSEQ,
  RXCHANISALIGNED,
  RXCHANREALIGN,
  RXCHARISCOMMA,
  RXCHARISK,
  RXCHBONDO,
  RXCLKCORCNT,
  RXCOMINITDET,
  RXCOMMADET,
  RXCOMSASDET,
  RXCOMWAKEDET,
  RXDATA,
  RXDATAVALID,
  RXDISPERR,
  RXDLYSRESETDONE,
  RXELECIDLE,
  RXHEADER,
  RXHEADERVALID,
  RXMONITOROUT,
  RXNOTINTABLE,
  RXOUTCLK,
  RXOUTCLKFABRIC,
  RXOUTCLKPCS,
  RXPHALIGNDONE,
  RXPHMONITOR,
  RXPHSLIPMONITOR,
  RXPRBSERR,
  RXQPISENN,
  RXQPISENP,
  RXRATEDONE,
  RXRESETDONE,
  RXSTARTOFSEQ,
  RXSTATUS,
  RXVALID,
  TSTOUT,
  TXBUFSTATUS,
  TXCOMFINISH,
  TXDLYSRESETDONE,
  TXGEARBOXREADY,
  TXOUTCLK,
  TXOUTCLKFABRIC,
  TXOUTCLKPCS,
  TXPHALIGNDONE,
  TXPHINITDONE,
  TXQPISENN,
  TXQPISENP,
  TXRATEDONE,
  TXRESETDONE,

  CFGRESET,
  CLKRSVD,
  CPLLLOCKDETCLK,
  CPLLLOCKEN,
  CPLLPD,
  CPLLREFCLKSEL,
  CPLLRESET,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  EYESCANMODE,
  EYESCANRESET,
  EYESCANTRIGGER,
  GTGREFCLK,
  GTNORTHREFCLK0,
  GTNORTHREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTRESETSEL,
  GTRSVD,
  GTRXRESET,
  GTSOUTHREFCLK0,
  GTSOUTHREFCLK1,
  GTTXRESET,
  GTXRXN,
  GTXRXP,
  LOOPBACK,
  PCSRSVDIN,
  PCSRSVDIN2,
  PMARSVDIN,
  PMARSVDIN2,
  QPLLCLK,
  QPLLREFCLK,
  RESETOVRD,
  RX8B10BEN,
  RXBUFRESET,
  RXCDRFREQRESET,
  RXCDRHOLD,
  RXCDROVRDEN,
  RXCDRRESET,
  RXCDRRESETRSV,
  RXCHBONDEN,
  RXCHBONDI,
  RXCHBONDLEVEL,
  RXCHBONDMASTER,
  RXCHBONDSLAVE,
  RXCOMMADETEN,
  RXDDIEN,
  RXDFEAGCHOLD,
  RXDFEAGCOVRDEN,
  RXDFECM1EN,
  RXDFELFHOLD,
  RXDFELFOVRDEN,
  RXDFELPMRESET,
  RXDFETAP2HOLD,
  RXDFETAP2OVRDEN,
  RXDFETAP3HOLD,
  RXDFETAP3OVRDEN,
  RXDFETAP4HOLD,
  RXDFETAP4OVRDEN,
  RXDFETAP5HOLD,
  RXDFETAP5OVRDEN,
  RXDFEUTHOLD,
  RXDFEUTOVRDEN,
  RXDFEVPHOLD,
  RXDFEVPOVRDEN,
  RXDFEVSEN,
  RXDFEXYDEN,
  RXDFEXYDHOLD,
  RXDFEXYDOVRDEN,
  RXDLYBYPASS,
  RXDLYEN,
  RXDLYOVRDEN,
  RXDLYSRESET,
  RXELECIDLEMODE,
  RXGEARBOXSLIP,
  RXLPMEN,
  RXLPMHFHOLD,
  RXLPMHFOVRDEN,
  RXLPMLFHOLD,
  RXLPMLFKLOVRDEN,
  RXMCOMMAALIGNEN,
  RXMONITORSEL,
  RXOOBRESET,
  RXOSHOLD,
  RXOSOVRDEN,
  RXOUTCLKSEL,
  RXPCOMMAALIGNEN,
  RXPCSRESET,
  RXPD,
  RXPHALIGN,
  RXPHALIGNEN,
  RXPHDLYPD,
  RXPHDLYRESET,
  RXPHOVRDEN,
  RXPMARESET,
  RXPOLARITY,
  RXPRBSCNTRESET,
  RXPRBSSEL,
  RXQPIEN,
  RXRATE,
  RXSLIDE,
  RXSYSCLKSEL,
  RXUSERRDY,
  RXUSRCLK,
  RXUSRCLK2,
  SETERRSTATUS,
  TSTIN,
  TX8B10BBYPASS,
  TX8B10BEN,
  TXBUFDIFFCTRL,
  TXCHARDISPMODE,
  TXCHARDISPVAL,
  TXCHARISK,
  TXCOMINIT,
  TXCOMSAS,
  TXCOMWAKE,
  TXDATA,
  TXDEEMPH,
  TXDETECTRX,
  TXDIFFCTRL,
  TXDIFFPD,
  TXDLYBYPASS,
  TXDLYEN,
  TXDLYHOLD,
  TXDLYOVRDEN,
  TXDLYSRESET,
  TXDLYUPDOWN,
  TXELECIDLE,
  TXHEADER,
  TXINHIBIT,
  TXMAINCURSOR,
  TXMARGIN,
  TXOUTCLKSEL,
  TXPCSRESET,
  TXPD,
  TXPDELECIDLEMODE,
  TXPHALIGN,
  TXPHALIGNEN,
  TXPHDLYPD,
  TXPHDLYRESET,
  TXPHDLYTSTCLK,
  TXPHINIT,
  TXPHOVRDEN,
  TXPISOPD,
  TXPMARESET,
  TXPOLARITY,
  TXPOSTCURSOR,
  TXPOSTCURSORINV,
  TXPRBSFORCEERR,
  TXPRBSSEL,
  TXPRECURSOR,
  TXPRECURSORINV,
  TXQPIBIASEN,
  TXQPISTRONGPDOWN,
  TXQPIWEAKPUP,
  TXRATE,
  TXSEQUENCE,
  TXSTARTSEQ,
  TXSWING,
  TXSYSCLKSEL,
  TXUSERRDY,
  TXUSRCLK,
  TXUSRCLK2
);
  parameter LOC = "UNPLACED";
  parameter ALIGN_COMMA_DOUBLE = "FALSE";
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111;
  parameter integer ALIGN_COMMA_WORD = 1;
  parameter ALIGN_MCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011;
  parameter ALIGN_PCOMMA_DET = "TRUE";
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100;
  parameter CBCC_DATA_SOURCE_SEL = "DECODED";
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE";
  parameter integer CHAN_BOND_MAX_SKEW = 7;
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100;
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111;
  parameter CHAN_BOND_SEQ_2_USE = "FALSE";
  parameter integer CHAN_BOND_SEQ_LEN = 1;
  parameter CLK_CORRECT_USE = "TRUE";
  parameter CLK_COR_KEEP_IDLE = "FALSE";
  parameter integer CLK_COR_MAX_LAT = 20;
  parameter integer CLK_COR_MIN_LAT = 18;
  parameter CLK_COR_PRECEDENCE = "TRUE";
  parameter integer CLK_COR_REPEAT_WAIT = 0;
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100;
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000;
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000;
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111;
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000;
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000;
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111;
  parameter CLK_COR_SEQ_2_USE = "FALSE";
  parameter integer CLK_COR_SEQ_LEN = 1;
  parameter [23:0] CPLL_CFG = 24'hB007D8;
  parameter integer CPLL_FBDIV = 4;
  parameter integer CPLL_FBDIV_45 = 5;
  parameter [23:0] CPLL_INIT_CFG = 24'h00001E;
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8;
  parameter integer CPLL_REFCLK_DIV = 1;
  parameter DEC_MCOMMA_DETECT = "TRUE";
  parameter DEC_PCOMMA_DETECT = "TRUE";
  parameter DEC_VALID_COMMA_ONLY = "TRUE";
  parameter [23:0] DMONITOR_CFG = 24'h000A00;
  parameter [5:0] ES_CONTROL = 6'b000000;
  parameter ES_ERRDET_EN = "FALSE";
  parameter ES_EYE_SCAN_EN = "FALSE";
  parameter [11:0] ES_HORZ_OFFSET = 12'h000;
  parameter [9:0] ES_PMA_CFG = 10'b0000000000;
  parameter [4:0] ES_PRESCALE = 5'b00000;
  parameter [79:0] ES_QUALIFIER = 80'h00000000000000000000;
  parameter [79:0] ES_QUAL_MASK = 80'h00000000000000000000;
  parameter [79:0] ES_SDATA_MASK = 80'h00000000000000000000;
  parameter [8:0] ES_VERT_OFFSET = 9'b000000000;
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111;
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111;
  parameter FTS_LANE_DESKEW_EN = "FALSE";
  parameter [2:0] GEARBOX_MODE = 3'b000;
  parameter [0:0] IS_CPLLLOCKDETCLK_INVERTED = 1'b0;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_RXUSRCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXPHDLYTSTCLK_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK2_INVERTED = 1'b0;
  parameter [0:0] IS_TXUSRCLK_INVERTED = 1'b0;
  parameter [1:0] OUTREFCLK_SEL_INV = 2'b11;
  parameter PCS_PCIE_EN = "FALSE";
  parameter [47:0] PCS_RSVD_ATTR = 48'h000000000000;
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C;
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19;
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64;
  parameter [31:0] PMA_RSV = 32'h00000000;
  parameter [15:0] PMA_RSV2 = 16'h2050;
  parameter [1:0] PMA_RSV3 = 2'b00;
  parameter [31:0] PMA_RSV4 = 32'h00000000;
  parameter [4:0] RXBUFRESET_TIME = 5'b00001;
  parameter RXBUF_ADDR_MODE = "FULL";
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000;
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000;
  parameter RXBUF_EN = "TRUE";
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE";
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE";
  parameter RXBUF_RESET_ON_EIDLE = "FALSE";
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE";
  parameter integer RXBUF_THRESH_OVFLW = 61;
  parameter RXBUF_THRESH_OVRD = "FALSE";
  parameter integer RXBUF_THRESH_UNDFLW = 4;
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001;
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001;
  parameter [71:0] RXCDR_CFG = 72'h0B000023FF20400020;
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0;
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0;
  parameter [5:0] RXCDR_LOCK_CFG = 6'b010101;
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0;
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111;
  parameter [15:0] RXDLY_CFG = 16'h001F;
  parameter [8:0] RXDLY_LCFG = 9'h030;
  parameter [15:0] RXDLY_TAP_CFG = 16'h0000;
  parameter RXGEARBOX_EN = "FALSE";
  parameter [4:0] RXISCANRESET_TIME = 5'b00001;
  parameter [13:0] RXLPM_HF_CFG = 14'b00000011110000;
  parameter [13:0] RXLPM_LF_CFG = 14'b00000011110000;
  parameter [6:0] RXOOB_CFG = 7'b0000110;
  parameter integer RXOUT_DIV = 2;
  parameter [4:0] RXPCSRESET_TIME = 5'b00001;
  parameter [23:0] RXPHDLY_CFG = 24'h084020;
  parameter [23:0] RXPH_CFG = 24'h000000;
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000;
  parameter [4:0] RXPMARESET_TIME = 5'b00011;
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0;
  parameter integer RXSLIDE_AUTO_WAIT = 7;
  parameter RXSLIDE_MODE = "OFF";
  parameter [11:0] RX_BIAS_CFG = 12'b000000000000;
  parameter [5:0] RX_BUFFER_CFG = 6'b000000;
  parameter integer RX_CLK25_DIV = 7;
  parameter [0:0] RX_CLKMUX_PD = 1'b1;
  parameter [1:0] RX_CM_SEL = 2'b11;
  parameter [2:0] RX_CM_TRIM = 3'b100;
  parameter integer RX_DATA_WIDTH = 20;
  parameter [5:0] RX_DDI_SEL = 6'b000000;
  parameter [11:0] RX_DEBUG_CFG = 12'b000000000000;
  parameter RX_DEFER_RESET_BUF_EN = "TRUE";
  parameter [22:0] RX_DFE_GAIN_CFG = 23'h180E0F;
  parameter [11:0] RX_DFE_H2_CFG = 12'b000111100000;
  parameter [11:0] RX_DFE_H3_CFG = 12'b000111100000;
  parameter [10:0] RX_DFE_H4_CFG = 11'b00011110000;
  parameter [10:0] RX_DFE_H5_CFG = 11'b00011110000;
  parameter [12:0] RX_DFE_KL_CFG = 13'b0001111110000;
  parameter [31:0] RX_DFE_KL_CFG2 = 32'h3008E56A;
  parameter [15:0] RX_DFE_LPM_CFG = 16'h0904;
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0;
  parameter [16:0] RX_DFE_UT_CFG = 17'b00111111000000000;
  parameter [16:0] RX_DFE_VP_CFG = 17'b00011111100000000;
  parameter [12:0] RX_DFE_XYD_CFG =  13'b0000000010000;
  parameter RX_DISPERR_SEQ_MATCH = "TRUE";
  parameter integer RX_INT_DATAWIDTH = 0;
  parameter [12:0] RX_OS_CFG = 13'b0001111110000;
  parameter integer RX_SIG_VALID_DLY = 10;
  parameter RX_XCLK_SEL = "RXREC";
  parameter integer SAS_MAX_COM = 64;
  parameter integer SAS_MIN_COM = 36;
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111;
  parameter [2:0] SATA_BURST_VAL = 3'b100;
  parameter SATA_CPLL_CFG = "VCO_3000MHZ";
  parameter [2:0] SATA_EIDLE_VAL = 3'b100;
  parameter integer SATA_MAX_BURST = 8;
  parameter integer SATA_MAX_INIT = 21;
  parameter integer SATA_MAX_WAKE = 7;
  parameter integer SATA_MIN_BURST = 4;
  parameter integer SATA_MIN_INIT = 12;
  parameter integer SATA_MIN_WAKE = 4;
  parameter SHOW_REALIGN_COMMA = "TRUE";
  parameter [2:0] SIM_CPLLREFCLK_SEL = 3'b001;
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE";
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_TX_EIDLE_DRIVE_LEVEL = "X";
  parameter SIM_VERSION = "4.0";
  parameter [4:0] TERM_RCAL_CFG = 5'b10000;
  parameter [0:0] TERM_RCAL_OVRD = 1'b0;
  parameter [7:0] TRANS_TIME_RATE = 8'h0E;
  parameter [31:0] TST_RSV = 32'h00000000;
  parameter TXBUF_EN = "TRUE";
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE";
  parameter [15:0] TXDLY_CFG = 16'h001F;
  parameter [8:0] TXDLY_LCFG = 9'h030;
  parameter [15:0] TXDLY_TAP_CFG = 16'h0000;
  parameter TXGEARBOX_EN = "FALSE";
  parameter integer TXOUT_DIV = 2;
  parameter [4:0] TXPCSRESET_TIME = 5'b00001;
  parameter [23:0] TXPHDLY_CFG = 24'h084020;
  parameter [15:0] TXPH_CFG = 16'h0780;
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000;
  parameter [4:0] TXPMARESET_TIME = 5'b00001;
  parameter integer TX_CLK25_DIV = 7;
  parameter [0:0] TX_CLKMUX_PD = 1'b1;
  parameter integer TX_DATA_WIDTH = 20;
  parameter [4:0] TX_DEEMPH0 = 5'b00000;
  parameter [4:0] TX_DEEMPH1 = 5'b00000;
  parameter TX_DRIVE_MODE = "DIRECT";
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110;
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100;
  parameter integer TX_INT_DATAWIDTH = 0;
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE";
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0;
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110;
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001;
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101;
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010;
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110;
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100;
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010;
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000;
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000;
  parameter [0:0] TX_PREDRIVER_MODE = 1'b0;
  parameter [0:0] TX_QPI_STATUS_EN = 1'b0;
  parameter [13:0] TX_RXDETECT_CFG = 14'h1832;
  parameter [2:0] TX_RXDETECT_REF = 3'b100;
  parameter TX_XCLK_SEL = "TXUSR";
  parameter [0:0] UCODEER_CLR = 1'b0;
  output CPLLFBCLKLOST;
  output CPLLLOCK;
  output CPLLREFCLKLOST;
  output DRPRDY;
  output EYESCANDATAERROR;
  output GTREFCLKMONITOR;
  output GTXTXN;
  output GTXTXP;
  output PHYSTATUS;
  output RXBYTEISALIGNED;
  output RXBYTEREALIGN;
  output RXCDRLOCK;
  output RXCHANBONDSEQ;
  output RXCHANISALIGNED;
  output RXCHANREALIGN;
  output RXCOMINITDET;
  output RXCOMMADET;
  output RXCOMSASDET;
  output RXCOMWAKEDET;
  output RXDATAVALID;
  output RXDLYSRESETDONE;
  output RXELECIDLE;
  output RXHEADERVALID;
  output RXOUTCLK;
  output RXOUTCLKFABRIC;
  output RXOUTCLKPCS;
  output RXPHALIGNDONE;
  output RXPRBSERR;
  output RXQPISENN;
  output RXQPISENP;
  output RXRATEDONE;
  output RXRESETDONE;
  output RXSTARTOFSEQ;
  output RXVALID;
  output TXCOMFINISH;
  output TXDLYSRESETDONE;
  output TXGEARBOXREADY;
  output TXOUTCLK;
  output TXOUTCLKFABRIC;
  output TXOUTCLKPCS;
  output TXPHALIGNDONE;
  output TXPHINITDONE;
  output TXQPISENN;
  output TXQPISENP;
  output TXRATEDONE;
  output TXRESETDONE;
  output [15:0] DRPDO;
  output [15:0] PCSRSVDOUT;
  output [1:0] RXCLKCORCNT;
  output [1:0] TXBUFSTATUS;
  output [2:0] RXBUFSTATUS;
  output [2:0] RXHEADER;
  output [2:0] RXSTATUS;
  output [4:0] RXCHBONDO;
  output [4:0] RXPHMONITOR;
  output [4:0] RXPHSLIPMONITOR;
  output [63:0] RXDATA;
  output [6:0] RXMONITOROUT;
  output [7:0] DMONITOROUT;
  output [7:0] RXCHARISCOMMA;
  output [7:0] RXCHARISK;
  output [7:0] RXDISPERR;
  output [7:0] RXNOTINTABLE;
  output [9:0] TSTOUT;
  input CFGRESET;
  input CPLLLOCKDETCLK;
  input CPLLLOCKEN;
  input CPLLPD;
  input CPLLRESET;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input EYESCANMODE;
  input EYESCANRESET;
  input EYESCANTRIGGER;
  input GTGREFCLK;
  input GTNORTHREFCLK0;
  input GTNORTHREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTRESETSEL;
  input GTRXRESET;
  input GTSOUTHREFCLK0;
  input GTSOUTHREFCLK1;
  input GTTXRESET;
  input GTXRXN;
  input GTXRXP;
  input QPLLCLK;
  input QPLLREFCLK;
  input RESETOVRD;
  input RX8B10BEN;
  input RXBUFRESET;
  input RXCDRFREQRESET;
  input RXCDRHOLD;
  input RXCDROVRDEN;
  input RXCDRRESET;
  input RXCDRRESETRSV;
  input RXCHBONDEN;
  input RXCHBONDMASTER;
  input RXCHBONDSLAVE;
  input RXCOMMADETEN;
  input RXDDIEN;
  input RXDFEAGCHOLD;
  input RXDFEAGCOVRDEN;
  input RXDFECM1EN;
  input RXDFELFHOLD;
  input RXDFELFOVRDEN;
  input RXDFELPMRESET;
  input RXDFETAP2HOLD;
  input RXDFETAP2OVRDEN;
  input RXDFETAP3HOLD;
  input RXDFETAP3OVRDEN;
  input RXDFETAP4HOLD;
  input RXDFETAP4OVRDEN;
  input RXDFETAP5HOLD;
  input RXDFETAP5OVRDEN;
  input RXDFEUTHOLD;
  input RXDFEUTOVRDEN;
  input RXDFEVPHOLD;
  input RXDFEVPOVRDEN;
  input RXDFEVSEN;
  input RXDFEXYDEN;
  input RXDFEXYDHOLD;
  input RXDFEXYDOVRDEN;
  input RXDLYBYPASS;
  input RXDLYEN;
  input RXDLYOVRDEN;
  input RXDLYSRESET;
  input RXGEARBOXSLIP;
  input RXLPMEN;
  input RXLPMHFHOLD;
  input RXLPMHFOVRDEN;
  input RXLPMLFHOLD;
  input RXLPMLFKLOVRDEN;
  input RXMCOMMAALIGNEN;
  input RXOOBRESET;
  input RXOSHOLD;
  input RXOSOVRDEN;
  input RXPCOMMAALIGNEN;
  input RXPCSRESET;
  input RXPHALIGN;
  input RXPHALIGNEN;
  input RXPHDLYPD;
  input RXPHDLYRESET;
  input RXPHOVRDEN;
  input RXPMARESET;
  input RXPOLARITY;
  input RXPRBSCNTRESET;
  input RXQPIEN;
  input RXSLIDE;
  input RXUSERRDY;
  input RXUSRCLK2;
  input RXUSRCLK;
  input SETERRSTATUS;
  input TX8B10BEN;
  input TXCOMINIT;
  input TXCOMSAS;
  input TXCOMWAKE;
  input TXDEEMPH;
  input TXDETECTRX;
  input TXDIFFPD;
  input TXDLYBYPASS;
  input TXDLYEN;
  input TXDLYHOLD;
  input TXDLYOVRDEN;
  input TXDLYSRESET;
  input TXDLYUPDOWN;
  input TXELECIDLE;
  input TXINHIBIT;
  input TXPCSRESET;
  input TXPDELECIDLEMODE;
  input TXPHALIGN;
  input TXPHALIGNEN;
  input TXPHDLYPD;
  input TXPHDLYRESET;
  input TXPHDLYTSTCLK;
  input TXPHINIT;
  input TXPHOVRDEN;
  input TXPISOPD;
  input TXPMARESET;
  input TXPOLARITY;
  input TXPOSTCURSORINV;
  input TXPRBSFORCEERR;
  input TXPRECURSORINV;
  input TXQPIBIASEN;
  input TXQPISTRONGPDOWN;
  input TXQPIWEAKPUP;
  input TXSTARTSEQ;
  input TXSWING;
  input TXUSERRDY;
  input TXUSRCLK2;
  input TXUSRCLK;
  input [15:0] DRPDI;
  input [15:0] GTRSVD;
  input [15:0] PCSRSVDIN;
  input [19:0] TSTIN;
  input [1:0] RXELECIDLEMODE;
  input [1:0] RXMONITORSEL;
  input [1:0] RXPD;
  input [1:0] RXSYSCLKSEL;
  input [1:0] TXPD;
  input [1:0] TXSYSCLKSEL;
  input [2:0] CPLLREFCLKSEL;
  input [2:0] LOOPBACK;
  input [2:0] RXCHBONDLEVEL;
  input [2:0] RXOUTCLKSEL;
  input [2:0] RXPRBSSEL;
  input [2:0] RXRATE;
  input [2:0] TXBUFDIFFCTRL;
  input [2:0] TXHEADER;
  input [2:0] TXMARGIN;
  input [2:0] TXOUTCLKSEL;
  input [2:0] TXPRBSSEL;
  input [2:0] TXRATE;
  input [3:0] CLKRSVD;
  input [3:0] TXDIFFCTRL;
  input [4:0] PCSRSVDIN2;
  input [4:0] PMARSVDIN2;
  input [4:0] PMARSVDIN;
  input [4:0] RXCHBONDI;
  input [4:0] TXPOSTCURSOR;
  input [4:0] TXPRECURSOR;
  input [63:0] TXDATA;
  input [6:0] TXMAINCURSOR;
  input [6:0] TXSEQUENCE;
  input [7:0] TX8B10BBYPASS;
  input [7:0] TXCHARDISPMODE;
  input [7:0] TXCHARDISPVAL;
  input [7:0] TXCHARISK;
  input [8:0] DRPADDR;
endmodule

    
module GTXE2_COMMON (
  DRPDO,
  DRPRDY,
  QPLLDMONITOR,
  QPLLFBCLKLOST,
  QPLLLOCK,
  QPLLOUTCLK,
  QPLLOUTREFCLK,
  QPLLREFCLKLOST,
  REFCLKOUTMONITOR,

  BGBYPASSB,
  BGMONITORENB,
  BGPDB,
  BGRCALOVRD,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  GTGREFCLK,
  GTNORTHREFCLK0,
  GTNORTHREFCLK1,
  GTREFCLK0,
  GTREFCLK1,
  GTSOUTHREFCLK0,
  GTSOUTHREFCLK1,
  PMARSVD,
  QPLLLOCKDETCLK,
  QPLLLOCKEN,
  QPLLOUTRESET,
  QPLLPD,
  QPLLREFCLKSEL,
  QPLLRESET,
  QPLLRSVD1,
  QPLLRSVD2,
  RCALENB
);
  parameter LOC = "UNPLACED";
  parameter [63:0] BIAS_CFG = 64'h0000040000001000;
  parameter [31:0] COMMON_CFG = 32'h00000000;
  parameter [0:0] IS_DRPCLK_INVERTED = 1'b0;
  parameter [0:0] IS_GTGREFCLK_INVERTED = 1'b0;
  parameter [0:0] IS_QPLLLOCKDETCLK_INVERTED = 1'b0;
  parameter [26:0] QPLL_CFG = 27'h0680181;
  parameter [3:0] QPLL_CLKOUT_CFG = 4'b0000;
  parameter [5:0] QPLL_COARSE_FREQ_OVRD = 6'b010000;
  parameter [0:0] QPLL_COARSE_FREQ_OVRD_EN = 1'b0;
  parameter [9:0] QPLL_CP = 10'b0000011111;
  parameter [0:0] QPLL_CP_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_DMONITOR_SEL = 1'b0;
  parameter [9:0] QPLL_FBDIV = 10'b0000000000;
  parameter [0:0] QPLL_FBDIV_MONITOR_EN = 1'b0;
  parameter [0:0] QPLL_FBDIV_RATIO = 1'b0;
  parameter [23:0] QPLL_INIT_CFG = 24'h000006;
  parameter [15:0] QPLL_LOCK_CFG = 16'h21E8;
  parameter [3:0] QPLL_LPF = 4'b1111;
  parameter integer QPLL_REFCLK_DIV = 2;
  parameter [2:0] SIM_QPLLREFCLK_SEL = 3'b001;
  parameter SIM_RESET_SPEEDUP = "TRUE";
  parameter SIM_VERSION = "4.0";
  output DRPRDY;
  output QPLLFBCLKLOST;
  output QPLLLOCK;
  output QPLLOUTCLK;
  output QPLLOUTREFCLK;
  output QPLLREFCLKLOST;
  output REFCLKOUTMONITOR;
  output [15:0] DRPDO;
  output [7:0] QPLLDMONITOR;
  input BGBYPASSB;
  input BGMONITORENB;
  input BGPDB;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input GTGREFCLK;
  input GTNORTHREFCLK0;
  input GTNORTHREFCLK1;
  input GTREFCLK0;
  input GTREFCLK1;
  input GTSOUTHREFCLK0;
  input GTSOUTHREFCLK1;
  input QPLLLOCKDETCLK;
  input QPLLLOCKEN;
  input QPLLOUTRESET;
  input QPLLPD;
  input QPLLRESET;
  input RCALENB;
  input [15:0] DRPDI;
  input [15:0] QPLLRSVD1;
  input [2:0] QPLLREFCLKSEL;
  input [4:0] BGRCALOVRD;
  input [4:0] QPLLRSVD2;
  input [7:0] DRPADDR;
  input [7:0] PMARSVD;
endmodule


module GTYE3_CHANNEL #(
  parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0,
  parameter [0:0] ACJTAG_MODE = 1'b0,
  parameter [0:0] ACJTAG_RESET = 1'b0,
  parameter [15:0] ADAPT_CFG0 = 16'h9200,
  parameter [15:0] ADAPT_CFG1 = 16'h801C,
  parameter [15:0] ADAPT_CFG2 = 16'b0000000000000000,
  parameter ALIGN_COMMA_DOUBLE = "FALSE",
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111,
  parameter integer ALIGN_COMMA_WORD = 1,
  parameter ALIGN_MCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011,
  parameter ALIGN_PCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100,
  parameter [0:0] AUTO_BW_SEL_BYPASS = 1'b0,
  parameter [0:0] A_RXOSCALRESET = 1'b0,
  parameter [0:0] A_RXPROGDIVRESET = 1'b0,
  parameter [4:0] A_TXDIFFCTRL = 5'b01100,
  parameter [0:0] A_TXPROGDIVRESET = 1'b0,
  parameter [0:0] CAPBYPASS_FORCE = 1'b0,
  parameter CBCC_DATA_SOURCE_SEL = "DECODED",
  parameter [0:0] CDR_SWAP_MODE_EN = 1'b0,
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE",
  parameter integer CHAN_BOND_MAX_SKEW = 7,
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100,
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111,
  parameter CHAN_BOND_SEQ_2_USE = "FALSE",
  parameter integer CHAN_BOND_SEQ_LEN = 2,
  parameter [15:0] CH_HSPMUX = 16'h0000,
  parameter [15:0] CKCAL1_CFG_0 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_1 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_0 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_1 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_4 = 16'b0000000000000000,
  parameter [15:0] CKCAL_RSVD0 = 16'h4000,
  parameter [15:0] CKCAL_RSVD1 = 16'h0000,
  parameter CLK_CORRECT_USE = "TRUE",
  parameter CLK_COR_KEEP_IDLE = "FALSE",
  parameter integer CLK_COR_MAX_LAT = 20,
  parameter integer CLK_COR_MIN_LAT = 18,
  parameter CLK_COR_PRECEDENCE = "TRUE",
  parameter integer CLK_COR_REPEAT_WAIT = 0,
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100,
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111,
  parameter CLK_COR_SEQ_2_USE = "FALSE",
  parameter integer CLK_COR_SEQ_LEN = 2,
  parameter [15:0] CPLL_CFG0 = 16'h20FA,
  parameter [15:0] CPLL_CFG1 = 16'h24AA,
  parameter [15:0] CPLL_CFG2 = 16'hF007,
  parameter [5:0] CPLL_CFG3 = 6'h00,
  parameter integer CPLL_FBDIV = 4,
  parameter integer CPLL_FBDIV_45 = 4,
  parameter [15:0] CPLL_INIT_CFG0 = 16'h001E,
  parameter [7:0] CPLL_INIT_CFG1 = 8'h00,
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8,
  parameter integer CPLL_REFCLK_DIV = 1,
  parameter [2:0] CTLE3_OCAP_EXT_CTRL = 3'b000,
  parameter [0:0] CTLE3_OCAP_EXT_EN = 1'b0,
  parameter [1:0] DDI_CTRL = 2'b00,
  parameter integer DDI_REALIGN_WAIT = 15,
  parameter DEC_MCOMMA_DETECT = "TRUE",
  parameter DEC_PCOMMA_DETECT = "TRUE",
  parameter DEC_VALID_COMMA_ONLY = "TRUE",
  parameter [0:0] DFE_D_X_REL_POS = 1'b0,
  parameter [0:0] DFE_VCM_COMP_EN = 1'b0,
  parameter [9:0] DMONITOR_CFG0 = 10'h000,
  parameter [7:0] DMONITOR_CFG1 = 8'h00,
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0,
  parameter [5:0] ES_CONTROL = 6'b000000,
  parameter ES_ERRDET_EN = "FALSE",
  parameter ES_EYE_SCAN_EN = "FALSE",
  parameter [11:0] ES_HORZ_OFFSET = 12'h000,
  parameter [9:0] ES_PMA_CFG = 10'b0000000000,
  parameter [4:0] ES_PRESCALE = 5'b00000,
  parameter [15:0] ES_QUALIFIER0 = 16'h0000,
  parameter [15:0] ES_QUALIFIER1 = 16'h0000,
  parameter [15:0] ES_QUALIFIER2 = 16'h0000,
  parameter [15:0] ES_QUALIFIER3 = 16'h0000,
  parameter [15:0] ES_QUALIFIER4 = 16'h0000,
  parameter [15:0] ES_QUALIFIER5 = 16'h0000,
  parameter [15:0] ES_QUALIFIER6 = 16'h0000,
  parameter [15:0] ES_QUALIFIER7 = 16'h0000,
  parameter [15:0] ES_QUALIFIER8 = 16'h0000,
  parameter [15:0] ES_QUALIFIER9 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK0 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK1 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK2 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK3 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK4 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK5 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK6 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK7 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK8 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK9 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK0 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK1 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK2 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK3 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK4 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK5 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK6 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK7 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK8 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK9 = 16'h0000,
  parameter [10:0] EVODD_PHI_CFG = 11'b00000000000,
  parameter [0:0] EYE_SCAN_SWAP_EN = 1'b0,
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111,
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111,
  parameter FTS_LANE_DESKEW_EN = "FALSE",
  parameter [4:0] GEARBOX_MODE = 5'b00000,
  parameter [0:0] GM_BIAS_SELECT = 1'b0,
  parameter [0:0] ISCAN_CK_PH_SEL2 = 1'b0,
  parameter [0:0] LOCAL_MASTER = 1'b0,
  parameter [15:0] LOOP0_CFG = 16'h0000,
  parameter [15:0] LOOP10_CFG = 16'h0000,
  parameter [15:0] LOOP11_CFG = 16'h0000,
  parameter [15:0] LOOP12_CFG = 16'h0000,
  parameter [15:0] LOOP13_CFG = 16'h0000,
  parameter [15:0] LOOP1_CFG = 16'h0000,
  parameter [15:0] LOOP2_CFG = 16'h0000,
  parameter [15:0] LOOP3_CFG = 16'h0000,
  parameter [15:0] LOOP4_CFG = 16'h0000,
  parameter [15:0] LOOP5_CFG = 16'h0000,
  parameter [15:0] LOOP6_CFG = 16'h0000,
  parameter [15:0] LOOP7_CFG = 16'h0000,
  parameter [15:0] LOOP8_CFG = 16'h0000,
  parameter [15:0] LOOP9_CFG = 16'h0000,
  parameter [2:0] LPBK_BIAS_CTRL = 3'b000,
  parameter [0:0] LPBK_EN_RCAL_B = 1'b0,
  parameter [3:0] LPBK_EXT_RCAL = 4'b0000,
  parameter [3:0] LPBK_RG_CTRL = 4'b0000,
  parameter [1:0] OOBDIVCTL = 2'b00,
  parameter [0:0] OOB_PWRUP = 1'b0,
  parameter PCI3_AUTO_REALIGN = "FRST_SMPL",
  parameter [0:0] PCI3_PIPE_RX_ELECIDLE = 1'b1,
  parameter [1:0] PCI3_RX_ASYNC_EBUF_BYPASS = 2'b00,
  parameter [0:0] PCI3_RX_ELECIDLE_EI2_ENABLE = 1'b0,
  parameter [5:0] PCI3_RX_ELECIDLE_H2L_COUNT = 6'b000000,
  parameter [2:0] PCI3_RX_ELECIDLE_H2L_DISABLE = 3'b000,
  parameter [5:0] PCI3_RX_ELECIDLE_HI_COUNT = 6'b000000,
  parameter [0:0] PCI3_RX_ELECIDLE_LP4_DISABLE = 1'b0,
  parameter [0:0] PCI3_RX_FIFO_DISABLE = 1'b0,
  parameter [15:0] PCIE_BUFG_DIV_CTRL = 16'h0000,
  parameter [15:0] PCIE_RXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_RXPMA_CFG = 16'h0000,
  parameter [15:0] PCIE_TXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_TXPMA_CFG = 16'h0000,
  parameter PCS_PCIE_EN = "FALSE",
  parameter [15:0] PCS_RSVD0 = 16'b0000000000000000,
  parameter [2:0] PCS_RSVD1 = 3'b000,
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C,
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19,
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64,
  parameter [1:0] PLL_SEL_MODE_GEN12 = 2'h0,
  parameter [1:0] PLL_SEL_MODE_GEN3 = 2'h0,
  parameter [15:0] PMA_RSV0 = 16'h00E0,
  parameter [15:0] PMA_RSV1 = 16'h000A,
  parameter integer PREIQ_FREQ_BST = 0,
  parameter [2:0] PROCESS_PAR = 3'b010,
  parameter [0:0] RATE_SW_USE_DRP = 1'b0,
  parameter [0:0] RESET_POWERSAVE_DISABLE = 1'b0,
  parameter [4:0] RXBUFRESET_TIME = 5'b00001,
  parameter RXBUF_ADDR_MODE = "FULL",
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000,
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000,
  parameter RXBUF_EN = "TRUE",
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE",
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE",
  parameter RXBUF_RESET_ON_EIDLE = "FALSE",
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE",
  parameter integer RXBUF_THRESH_OVFLW = 0,
  parameter RXBUF_THRESH_OVRD = "FALSE",
  parameter integer RXBUF_THRESH_UNDFLW = 4,
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b00001,
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001,
  parameter [15:0] RXCDR_CFG0 = 16'h0000,
  parameter [15:0] RXCDR_CFG0_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG1 = 16'h0300,
  parameter [15:0] RXCDR_CFG1_GEN3 = 16'h0300,
  parameter [15:0] RXCDR_CFG2 = 16'h0060,
  parameter [15:0] RXCDR_CFG2_GEN3 = 16'h0060,
  parameter [15:0] RXCDR_CFG3 = 16'h0000,
  parameter [15:0] RXCDR_CFG3_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG4 = 16'h0002,
  parameter [15:0] RXCDR_CFG4_GEN3 = 16'h0002,
  parameter [15:0] RXCDR_CFG5 = 16'h0000,
  parameter [15:0] RXCDR_CFG5_GEN3 = 16'h0000,
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0,
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0,
  parameter [15:0] RXCDR_LOCK_CFG0 = 16'h0001,
  parameter [15:0] RXCDR_LOCK_CFG1 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG2 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG3 = 16'h0000,
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0,
  parameter [1:0] RXCFOKDONE_SRC = 2'b00,
  parameter [15:0] RXCFOK_CFG0 = 16'h3E00,
  parameter [15:0] RXCFOK_CFG1 = 16'h0042,
  parameter [15:0] RXCFOK_CFG2 = 16'h002D,
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111,
  parameter [15:0] RXDFELPM_KL_CFG0 = 16'h0000,
  parameter [15:0] RXDFELPM_KL_CFG1 = 16'h0022,
  parameter [15:0] RXDFELPM_KL_CFG2 = 16'h0100,
  parameter [15:0] RXDFE_CFG0 = 16'h4C00,
  parameter [15:0] RXDFE_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG0 = 16'h1E00,
  parameter [15:0] RXDFE_GC_CFG1 = 16'h1900,
  parameter [15:0] RXDFE_GC_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H3_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H3_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H4_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H4_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_H5_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H5_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H6_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H6_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H7_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H7_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H8_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H8_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H9_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H9_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HA_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HA_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HB_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HB_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HC_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HD_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HD_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HE_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HE_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HF_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HF_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_OS_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_OS_CFG1 = 16'h0200,
  parameter [0:0] RXDFE_PWR_SAVING = 1'b0,
  parameter [15:0] RXDFE_UT_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_UT_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_VP_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_VP_CFG1 = 16'h0022,
  parameter [15:0] RXDLY_CFG = 16'h001F,
  parameter [15:0] RXDLY_LCFG = 16'h0030,
  parameter RXELECIDLE_CFG = "SIGCFG_4",
  parameter integer RXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter RXGEARBOX_EN = "FALSE",
  parameter [4:0] RXISCANRESET_TIME = 5'b00001,
  parameter [15:0] RXLPM_CFG = 16'h0000,
  parameter [15:0] RXLPM_GC_CFG = 16'h0200,
  parameter [15:0] RXLPM_KH_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_KH_CFG1 = 16'h0002,
  parameter [15:0] RXLPM_OS_CFG0 = 16'h0400,
  parameter [15:0] RXLPM_OS_CFG1 = 16'h0000,
  parameter [8:0] RXOOB_CFG = 9'b000000110,
  parameter RXOOB_CLK_CFG = "PMA",
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011,
  parameter integer RXOUT_DIV = 4,
  parameter [4:0] RXPCSRESET_TIME = 5'b00001,
  parameter [15:0] RXPHBEACON_CFG = 16'h0000,
  parameter [15:0] RXPHDLY_CFG = 16'h2020,
  parameter [15:0] RXPHSAMP_CFG = 16'h2100,
  parameter [15:0] RXPHSLIP_CFG = 16'h9933,
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000,
  parameter [0:0] RXPI_AUTO_BW_SEL_BYPASS = 1'b0,
  parameter [15:0] RXPI_CFG = 16'h0100,
  parameter [0:0] RXPI_LPM = 1'b0,
  parameter [15:0] RXPI_RSV0 = 16'h0000,
  parameter [1:0] RXPI_SEL_LC = 2'b00,
  parameter [1:0] RXPI_STARTCODE = 2'b00,
  parameter [0:0] RXPI_VREFSEL = 1'b0,
  parameter RXPMACLK_SEL = "DATA",
  parameter [4:0] RXPMARESET_TIME = 5'b00001,
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0,
  parameter integer RXPRBS_LINKACQ_CNT = 15,
  parameter integer RXSLIDE_AUTO_WAIT = 7,
  parameter RXSLIDE_MODE = "OFF",
  parameter [0:0] RXSYNC_MULTILANE = 1'b0,
  parameter [0:0] RXSYNC_OVRD = 1'b0,
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0,
  parameter [0:0] RX_AFE_CM_EN = 1'b0,
  parameter [15:0] RX_BIAS_CFG0 = 16'h1534,
  parameter [5:0] RX_BUFFER_CFG = 6'b000000,
  parameter [0:0] RX_CAPFF_SARC_ENB = 1'b0,
  parameter integer RX_CLK25_DIV = 8,
  parameter [0:0] RX_CLKMUX_EN = 1'b1,
  parameter [4:0] RX_CLK_SLIP_OVRD = 5'b00000,
  parameter [3:0] RX_CM_BUF_CFG = 4'b1010,
  parameter [0:0] RX_CM_BUF_PD = 1'b0,
  parameter integer RX_CM_SEL = 3,
  parameter integer RX_CM_TRIM = 10,
  parameter [0:0] RX_CTLE1_KHKL = 1'b0,
  parameter [0:0] RX_CTLE2_KHKL = 1'b0,
  parameter [0:0] RX_CTLE3_AGC = 1'b0,
  parameter integer RX_DATA_WIDTH = 20,
  parameter [5:0] RX_DDI_SEL = 6'b000000,
  parameter RX_DEFER_RESET_BUF_EN = "TRUE",
  parameter [2:0] RX_DEGEN_CTRL = 3'b011,
  parameter integer RX_DFELPM_CFG0 = 0,
  parameter [0:0] RX_DFELPM_CFG1 = 1'b1,
  parameter [0:0] RX_DFELPM_KLKH_AGC_STUP_EN = 1'b1,
  parameter [1:0] RX_DFE_AGC_CFG0 = 2'b00,
  parameter integer RX_DFE_AGC_CFG1 = 2,
  parameter integer RX_DFE_KL_LPM_KH_CFG0 = 1,
  parameter integer RX_DFE_KL_LPM_KH_CFG1 = 2,
  parameter [1:0] RX_DFE_KL_LPM_KL_CFG0 = 2'b01,
  parameter [2:0] RX_DFE_KL_LPM_KL_CFG1 = 3'b010,
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0,
  parameter RX_DISPERR_SEQ_MATCH = "TRUE",
  parameter [0:0] RX_DIV2_MODE_B = 1'b0,
  parameter [4:0] RX_DIVRESET_TIME = 5'b00001,
  parameter [0:0] RX_EN_CTLE_RCAL_B = 1'b0,
  parameter [0:0] RX_EN_HI_LR = 1'b0,
  parameter [8:0] RX_EXT_RL_CTRL = 9'b000000000,
  parameter [6:0] RX_EYESCAN_VS_CODE = 7'b0000000,
  parameter [0:0] RX_EYESCAN_VS_NEG_DIR = 1'b0,
  parameter [1:0] RX_EYESCAN_VS_RANGE = 2'b00,
  parameter [0:0] RX_EYESCAN_VS_UT_SIGN = 1'b0,
  parameter [0:0] RX_FABINT_USRCLK_FLOP = 1'b0,
  parameter integer RX_INT_DATAWIDTH = 1,
  parameter [0:0] RX_PMA_POWER_SAVE = 1'b0,
  parameter real RX_PROGDIV_CFG = 0.0,
  parameter [15:0] RX_PROGDIV_RATE = 16'h0001,
  parameter [3:0] RX_RESLOAD_CTRL = 4'b0000,
  parameter [0:0] RX_RESLOAD_OVRD = 1'b0,
  parameter [2:0] RX_SAMPLE_PERIOD = 3'b101,
  parameter integer RX_SIG_VALID_DLY = 11,
  parameter [0:0] RX_SUM_DFETAPREP_EN = 1'b0,
  parameter [3:0] RX_SUM_IREF_TUNE = 4'b0000,
  parameter [3:0] RX_SUM_VCMTUNE = 4'b1000,
  parameter [0:0] RX_SUM_VCM_OVWR = 1'b0,
  parameter [2:0] RX_SUM_VREF_TUNE = 3'b100,
  parameter [1:0] RX_TUNE_AFE_OS = 2'b00,
  parameter [2:0] RX_VREG_CTRL = 3'b101,
  parameter [0:0] RX_VREG_PDB = 1'b1,
  parameter [1:0] RX_WIDEMODE_CDR = 2'b01,
  parameter RX_XCLK_SEL = "RXDES",
  parameter [0:0] RX_XMODE_SEL = 1'b0,
  parameter integer SAS_MAX_COM = 64,
  parameter integer SAS_MIN_COM = 36,
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111,
  parameter [2:0] SATA_BURST_VAL = 3'b100,
  parameter SATA_CPLL_CFG = "VCO_3000MHZ",
  parameter [2:0] SATA_EIDLE_VAL = 3'b100,
  parameter integer SATA_MAX_BURST = 8,
  parameter integer SATA_MAX_INIT = 21,
  parameter integer SATA_MAX_WAKE = 7,
  parameter integer SATA_MIN_BURST = 4,
  parameter integer SATA_MIN_INIT = 12,
  parameter integer SATA_MIN_WAKE = 4,
  parameter SHOW_REALIGN_COMMA = "TRUE",
  parameter SIM_MODE = "FAST",
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter [0:0] SIM_TX_EIDLE_DRIVE_LEVEL = 1'b0,
  parameter integer SIM_VERSION = 2,
  parameter [1:0] TAPDLY_SET_TX = 2'h0,
  parameter [3:0] TEMPERATURE_PAR = 4'b0010,
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000,
  parameter [2:0] TERM_RCAL_OVRD = 3'b000,
  parameter [7:0] TRANS_TIME_RATE = 8'h0E,
  parameter [7:0] TST_RSV0 = 8'h00,
  parameter [7:0] TST_RSV1 = 8'h00,
  parameter TXBUF_EN = "TRUE",
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE",
  parameter [15:0] TXDLY_CFG = 16'h001F,
  parameter [15:0] TXDLY_LCFG = 16'h0030,
  parameter TXFIFO_ADDR_CFG = "LOW",
  parameter integer TXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter TXGEARBOX_EN = "FALSE",
  parameter integer TXOUT_DIV = 4,
  parameter [4:0] TXPCSRESET_TIME = 5'b00001,
  parameter [15:0] TXPHDLY_CFG0 = 16'h2020,
  parameter [15:0] TXPHDLY_CFG1 = 16'h0001,
  parameter [15:0] TXPH_CFG = 16'h0123,
  parameter [15:0] TXPH_CFG2 = 16'h0000,
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000,
  parameter [1:0] TXPI_CFG0 = 2'b00,
  parameter [1:0] TXPI_CFG1 = 2'b00,
  parameter [1:0] TXPI_CFG2 = 2'b00,
  parameter [0:0] TXPI_CFG3 = 1'b0,
  parameter [0:0] TXPI_CFG4 = 1'b1,
  parameter [2:0] TXPI_CFG5 = 3'b000,
  parameter [0:0] TXPI_GRAY_SEL = 1'b0,
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0,
  parameter [0:0] TXPI_LPM = 1'b0,
  parameter TXPI_PPMCLK_SEL = "TXUSRCLK2",
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000,
  parameter [15:0] TXPI_RSV0 = 16'h0000,
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000,
  parameter [0:0] TXPI_VREFSEL = 1'b0,
  parameter [4:0] TXPMARESET_TIME = 5'b00001,
  parameter [0:0] TXSYNC_MULTILANE = 1'b0,
  parameter [0:0] TXSYNC_OVRD = 1'b0,
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0,
  parameter integer TX_CLK25_DIV = 8,
  parameter [0:0] TX_CLKMUX_EN = 1'b1,
  parameter [0:0] TX_CLKREG_PDB = 1'b0,
  parameter [2:0] TX_CLKREG_SET = 3'b000,
  parameter integer TX_DATA_WIDTH = 20,
  parameter [5:0] TX_DCD_CFG = 6'b000010,
  parameter [0:0] TX_DCD_EN = 1'b0,
  parameter [5:0] TX_DEEMPH0 = 6'b000000,
  parameter [5:0] TX_DEEMPH1 = 6'b000000,
  parameter [4:0] TX_DIVRESET_TIME = 5'b00001,
  parameter TX_DRIVE_MODE = "DIRECT",
  parameter integer TX_DRVMUX_CTRL = 2,
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110,
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100,
  parameter [0:0] TX_EML_PHI_TUNE = 1'b0,
  parameter [0:0] TX_FABINT_USRCLK_FLOP = 1'b0,
  parameter [0:0] TX_FIFO_BYP_EN = 1'b0,
  parameter [0:0] TX_IDLE_DATA_ZERO = 1'b0,
  parameter integer TX_INT_DATAWIDTH = 1,
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE",
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0,
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110,
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001,
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101,
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010,
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110,
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100,
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010,
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000,
  parameter [2:0] TX_MODE_SEL = 3'b000,
  parameter [15:0] TX_PHICAL_CFG0 = 16'h0000,
  parameter [15:0] TX_PHICAL_CFG1 = 16'h7E00,
  parameter [15:0] TX_PHICAL_CFG2 = 16'h0000,
  parameter integer TX_PI_BIASSET = 0,
  parameter [15:0] TX_PI_CFG0 = 16'h0000,
  parameter [15:0] TX_PI_CFG1 = 16'h0000,
  parameter [0:0] TX_PI_DIV2_MODE_B = 1'b0,
  parameter [0:0] TX_PI_SEL_QPLL0 = 1'b0,
  parameter [0:0] TX_PI_SEL_QPLL1 = 1'b0,
  parameter [0:0] TX_PMADATA_OPT = 1'b0,
  parameter [0:0] TX_PMA_POWER_SAVE = 1'b0,
  parameter integer TX_PREDRV_CTRL = 2,
  parameter TX_PROGCLK_SEL = "POSTPI",
  parameter real TX_PROGDIV_CFG = 0.0,
  parameter [15:0] TX_PROGDIV_RATE = 16'h0001,
  parameter [13:0] TX_RXDETECT_CFG = 14'h0032,
  parameter integer TX_RXDETECT_REF = 3,
  parameter [2:0] TX_SAMPLE_PERIOD = 3'b101,
  parameter [0:0] TX_SARC_LPBK_ENB = 1'b0,
  parameter TX_XCLK_SEL = "TXOUT",
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0
)(
  output [2:0] BUFGTCE,
  output [2:0] BUFGTCEMASK,
  output [8:0] BUFGTDIV,
  output [2:0] BUFGTRESET,
  output [2:0] BUFGTRSTMASK,
  output CPLLFBCLKLOST,
  output CPLLLOCK,
  output CPLLREFCLKLOST,
  output [16:0] DMONITOROUT,
  output [15:0] DRPDO,
  output DRPRDY,
  output EYESCANDATAERROR,
  output GTPOWERGOOD,
  output GTREFCLKMONITOR,
  output GTYTXN,
  output GTYTXP,
  output PCIERATEGEN3,
  output PCIERATEIDLE,
  output [1:0] PCIERATEQPLLPD,
  output [1:0] PCIERATEQPLLRESET,
  output PCIESYNCTXSYNCDONE,
  output PCIEUSERGEN3RDY,
  output PCIEUSERPHYSTATUSRST,
  output PCIEUSERRATESTART,
  output [15:0] PCSRSVDOUT,
  output PHYSTATUS,
  output [7:0] PINRSRVDAS,
  output RESETEXCEPTION,
  output [2:0] RXBUFSTATUS,
  output RXBYTEISALIGNED,
  output RXBYTEREALIGN,
  output RXCDRLOCK,
  output RXCDRPHDONE,
  output RXCHANBONDSEQ,
  output RXCHANISALIGNED,
  output RXCHANREALIGN,
  output [4:0] RXCHBONDO,
  output RXCKCALDONE,
  output [1:0] RXCLKCORCNT,
  output RXCOMINITDET,
  output RXCOMMADET,
  output RXCOMSASDET,
  output RXCOMWAKEDET,
  output [15:0] RXCTRL0,
  output [15:0] RXCTRL1,
  output [7:0] RXCTRL2,
  output [7:0] RXCTRL3,
  output [127:0] RXDATA,
  output [7:0] RXDATAEXTENDRSVD,
  output [1:0] RXDATAVALID,
  output RXDLYSRESETDONE,
  output RXELECIDLE,
  output [5:0] RXHEADER,
  output [1:0] RXHEADERVALID,
  output [6:0] RXMONITOROUT,
  output RXOSINTDONE,
  output RXOSINTSTARTED,
  output RXOSINTSTROBEDONE,
  output RXOSINTSTROBESTARTED,
  output RXOUTCLK,
  output RXOUTCLKFABRIC,
  output RXOUTCLKPCS,
  output RXPHALIGNDONE,
  output RXPHALIGNERR,
  output RXPMARESETDONE,
  output RXPRBSERR,
  output RXPRBSLOCKED,
  output RXPRGDIVRESETDONE,
  output RXRATEDONE,
  output RXRECCLKOUT,
  output RXRESETDONE,
  output RXSLIDERDY,
  output RXSLIPDONE,
  output RXSLIPOUTCLKRDY,
  output RXSLIPPMARDY,
  output [1:0] RXSTARTOFSEQ,
  output [2:0] RXSTATUS,
  output RXSYNCDONE,
  output RXSYNCOUT,
  output RXVALID,
  output [1:0] TXBUFSTATUS,
  output TXCOMFINISH,
  output TXDCCDONE,
  output TXDLYSRESETDONE,
  output TXOUTCLK,
  output TXOUTCLKFABRIC,
  output TXOUTCLKPCS,
  output TXPHALIGNDONE,
  output TXPHINITDONE,
  output TXPMARESETDONE,
  output TXPRGDIVRESETDONE,
  output TXRATEDONE,
  output TXRESETDONE,
  output TXSYNCDONE,
  output TXSYNCOUT,

  input CDRSTEPDIR,
  input CDRSTEPSQ,
  input CDRSTEPSX,
  input CFGRESET,
  input CLKRSVD0,
  input CLKRSVD1,
  input CPLLLOCKDETCLK,
  input CPLLLOCKEN,
  input CPLLPD,
  input [2:0] CPLLREFCLKSEL,
  input CPLLRESET,
  input DMONFIFORESET,
  input DMONITORCLK,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input ELPCALDVORWREN,
  input ELPCALPAORWREN,
  input EVODDPHICALDONE,
  input EVODDPHICALSTART,
  input EVODDPHIDRDEN,
  input EVODDPHIDWREN,
  input EVODDPHIXRDEN,
  input EVODDPHIXWREN,
  input EYESCANMODE,
  input EYESCANRESET,
  input EYESCANTRIGGER,
  input GTGREFCLK,
  input GTNORTHREFCLK0,
  input GTNORTHREFCLK1,
  input GTREFCLK0,
  input GTREFCLK1,
  input GTRESETSEL,
  input [15:0] GTRSVD,
  input GTRXRESET,
  input GTSOUTHREFCLK0,
  input GTSOUTHREFCLK1,
  input GTTXRESET,
  input GTYRXN,
  input GTYRXP,
  input [2:0] LOOPBACK,
  input [15:0] LOOPRSVD,
  input LPBKRXTXSEREN,
  input LPBKTXRXSEREN,
  input PCIEEQRXEQADAPTDONE,
  input PCIERSTIDLE,
  input PCIERSTTXSYNCSTART,
  input PCIEUSERRATEDONE,
  input [15:0] PCSRSVDIN,
  input [4:0] PCSRSVDIN2,
  input [4:0] PMARSVDIN,
  input QPLL0CLK,
  input QPLL0REFCLK,
  input QPLL1CLK,
  input QPLL1REFCLK,
  input RESETOVRD,
  input RSTCLKENTX,
  input RX8B10BEN,
  input RXBUFRESET,
  input RXCDRFREQRESET,
  input RXCDRHOLD,
  input RXCDROVRDEN,
  input RXCDRRESET,
  input RXCDRRESETRSV,
  input RXCHBONDEN,
  input [4:0] RXCHBONDI,
  input [2:0] RXCHBONDLEVEL,
  input RXCHBONDMASTER,
  input RXCHBONDSLAVE,
  input RXCKCALRESET,
  input RXCOMMADETEN,
  input RXDCCFORCESTART,
  input RXDFEAGCHOLD,
  input RXDFEAGCOVRDEN,
  input RXDFELFHOLD,
  input RXDFELFOVRDEN,
  input RXDFELPMRESET,
  input RXDFETAP10HOLD,
  input RXDFETAP10OVRDEN,
  input RXDFETAP11HOLD,
  input RXDFETAP11OVRDEN,
  input RXDFETAP12HOLD,
  input RXDFETAP12OVRDEN,
  input RXDFETAP13HOLD,
  input RXDFETAP13OVRDEN,
  input RXDFETAP14HOLD,
  input RXDFETAP14OVRDEN,
  input RXDFETAP15HOLD,
  input RXDFETAP15OVRDEN,
  input RXDFETAP2HOLD,
  input RXDFETAP2OVRDEN,
  input RXDFETAP3HOLD,
  input RXDFETAP3OVRDEN,
  input RXDFETAP4HOLD,
  input RXDFETAP4OVRDEN,
  input RXDFETAP5HOLD,
  input RXDFETAP5OVRDEN,
  input RXDFETAP6HOLD,
  input RXDFETAP6OVRDEN,
  input RXDFETAP7HOLD,
  input RXDFETAP7OVRDEN,
  input RXDFETAP8HOLD,
  input RXDFETAP8OVRDEN,
  input RXDFETAP9HOLD,
  input RXDFETAP9OVRDEN,
  input RXDFEUTHOLD,
  input RXDFEUTOVRDEN,
  input RXDFEVPHOLD,
  input RXDFEVPOVRDEN,
  input RXDFEVSEN,
  input RXDFEXYDEN,
  input RXDLYBYPASS,
  input RXDLYEN,
  input RXDLYOVRDEN,
  input RXDLYSRESET,
  input [1:0] RXELECIDLEMODE,
  input RXGEARBOXSLIP,
  input RXLATCLK,
  input RXLPMEN,
  input RXLPMGCHOLD,
  input RXLPMGCOVRDEN,
  input RXLPMHFHOLD,
  input RXLPMHFOVRDEN,
  input RXLPMLFHOLD,
  input RXLPMLFKLOVRDEN,
  input RXLPMOSHOLD,
  input RXLPMOSOVRDEN,
  input RXMCOMMAALIGNEN,
  input [1:0] RXMONITORSEL,
  input RXOOBRESET,
  input RXOSCALRESET,
  input RXOSHOLD,
  input [3:0] RXOSINTCFG,
  input RXOSINTEN,
  input RXOSINTHOLD,
  input RXOSINTOVRDEN,
  input RXOSINTSTROBE,
  input RXOSINTTESTOVRDEN,
  input RXOSOVRDEN,
  input [2:0] RXOUTCLKSEL,
  input RXPCOMMAALIGNEN,
  input RXPCSRESET,
  input [1:0] RXPD,
  input RXPHALIGN,
  input RXPHALIGNEN,
  input RXPHDLYPD,
  input RXPHDLYRESET,
  input RXPHOVRDEN,
  input [1:0] RXPLLCLKSEL,
  input RXPMARESET,
  input RXPOLARITY,
  input RXPRBSCNTRESET,
  input [3:0] RXPRBSSEL,
  input RXPROGDIVRESET,
  input [2:0] RXRATE,
  input RXRATEMODE,
  input RXSLIDE,
  input RXSLIPOUTCLK,
  input RXSLIPPMA,
  input RXSYNCALLIN,
  input RXSYNCIN,
  input RXSYNCMODE,
  input [1:0] RXSYSCLKSEL,
  input RXUSERRDY,
  input RXUSRCLK,
  input RXUSRCLK2,
  input SIGVALIDCLK,
  input [19:0] TSTIN,
  input [7:0] TX8B10BBYPASS,
  input TX8B10BEN,
  input [2:0] TXBUFDIFFCTRL,
  input TXCOMINIT,
  input TXCOMSAS,
  input TXCOMWAKE,
  input [15:0] TXCTRL0,
  input [15:0] TXCTRL1,
  input [7:0] TXCTRL2,
  input [127:0] TXDATA,
  input [7:0] TXDATAEXTENDRSVD,
  input TXDCCFORCESTART,
  input TXDCCRESET,
  input TXDEEMPH,
  input TXDETECTRX,
  input [4:0] TXDIFFCTRL,
  input TXDIFFPD,
  input TXDLYBYPASS,
  input TXDLYEN,
  input TXDLYHOLD,
  input TXDLYOVRDEN,
  input TXDLYSRESET,
  input TXDLYUPDOWN,
  input TXELECIDLE,
  input TXELFORCESTART,
  input [5:0] TXHEADER,
  input TXINHIBIT,
  input TXLATCLK,
  input [6:0] TXMAINCURSOR,
  input [2:0] TXMARGIN,
  input [2:0] TXOUTCLKSEL,
  input TXPCSRESET,
  input [1:0] TXPD,
  input TXPDELECIDLEMODE,
  input TXPHALIGN,
  input TXPHALIGNEN,
  input TXPHDLYPD,
  input TXPHDLYRESET,
  input TXPHDLYTSTCLK,
  input TXPHINIT,
  input TXPHOVRDEN,
  input TXPIPPMEN,
  input TXPIPPMOVRDEN,
  input TXPIPPMPD,
  input TXPIPPMSEL,
  input [4:0] TXPIPPMSTEPSIZE,
  input TXPISOPD,
  input [1:0] TXPLLCLKSEL,
  input TXPMARESET,
  input TXPOLARITY,
  input [4:0] TXPOSTCURSOR,
  input TXPRBSFORCEERR,
  input [3:0] TXPRBSSEL,
  input [4:0] TXPRECURSOR,
  input TXPROGDIVRESET,
  input [2:0] TXRATE,
  input TXRATEMODE,
  input [6:0] TXSEQUENCE,
  input TXSWING,
  input TXSYNCALLIN,
  input TXSYNCIN,
  input TXSYNCMODE,
  input [1:0] TXSYSCLKSEL,
  input TXUSERRDY,
  input TXUSRCLK,
  input TXUSRCLK2
);
endmodule


module GTYE3_COMMON #(
  parameter [15:0] A_SDM1DATA1_0 = 16'b0000000000000000,
  parameter [8:0] A_SDM1DATA1_1 = 9'b000000000,
  parameter [15:0] BIAS_CFG0 = 16'h0000,
  parameter [15:0] BIAS_CFG1 = 16'h0000,
  parameter [15:0] BIAS_CFG2 = 16'h0000,
  parameter [15:0] BIAS_CFG3 = 16'h0000,
  parameter [15:0] BIAS_CFG4 = 16'h0000,
  parameter [9:0] BIAS_CFG_RSVD = 10'b0000000000,
  parameter [15:0] COMMON_CFG0 = 16'h0000,
  parameter [15:0] COMMON_CFG1 = 16'h0000,
  parameter [15:0] POR_CFG = 16'h0004,
  parameter [15:0] PPF0_CFG = 16'h0FFF,
  parameter [15:0] PPF1_CFG = 16'h0FFF,
  parameter QPLL0CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL0_CFG0 = 16'h301C,
  parameter [15:0] QPLL0_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL0_CFG2 = 16'h0780,
  parameter [15:0] QPLL0_CFG2_G3 = 16'h0780,
  parameter [15:0] QPLL0_CFG3 = 16'h0120,
  parameter [15:0] QPLL0_CFG4 = 16'h0021,
  parameter [9:0] QPLL0_CP = 10'b0000011111,
  parameter [9:0] QPLL0_CP_G3 = 10'b0000011111,
  parameter integer QPLL0_FBDIV = 66,
  parameter integer QPLL0_FBDIV_G3 = 80,
  parameter [15:0] QPLL0_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL0_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL0_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL0_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL0_LPF = 10'b1011111111,
  parameter [9:0] QPLL0_LPF_G3 = 10'b1111111111,
  parameter integer QPLL0_REFCLK_DIV = 2,
  parameter [15:0] QPLL0_SDM_CFG0 = 16'h0000,
  parameter [15:0] QPLL0_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_SDM_CFG2 = 16'h0000,
  parameter QPLL1CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL1_CFG0 = 16'h301C,
  parameter [15:0] QPLL1_CFG1 = 16'h0000,
  parameter [15:0] QPLL1_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL1_CFG2 = 16'h0780,
  parameter [15:0] QPLL1_CFG2_G3 = 16'h0780,
  parameter [15:0] QPLL1_CFG3 = 16'h0120,
  parameter [15:0] QPLL1_CFG4 = 16'h0021,
  parameter [9:0] QPLL1_CP = 10'b0000011111,
  parameter [9:0] QPLL1_CP_G3 = 10'b0000011111,
  parameter integer QPLL1_FBDIV = 66,
  parameter integer QPLL1_FBDIV_G3 = 80,
  parameter [15:0] QPLL1_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL1_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL1_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL1_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL1_LPF = 10'b1011111111,
  parameter [9:0] QPLL1_LPF_G3 = 10'b1111111111,
  parameter integer QPLL1_REFCLK_DIV = 2,
  parameter [15:0] QPLL1_SDM_CFG0 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG2 = 16'h0000,
  parameter [15:0] RSVD_ATTR0 = 16'h0000,
  parameter [15:0] RSVD_ATTR1 = 16'h0000,
  parameter [15:0] RSVD_ATTR2 = 16'h0000,
  parameter [15:0] RSVD_ATTR3 = 16'h0000,
  parameter [1:0] RXRECCLKOUT0_SEL = 2'b00,
  parameter [1:0] RXRECCLKOUT1_SEL = 2'b00,
  parameter [0:0] SARC_EN = 1'b1,
  parameter [0:0] SARC_SEL = 1'b0,
  parameter [15:0] SDM0INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM0INITSEED0_1 = 9'b000000000,
  parameter [15:0] SDM1INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM1INITSEED0_1 = 9'b000000000,
  parameter SIM_MODE = "FAST",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter integer SIM_VERSION = 2
)(
  output [15:0] DRPDO,
  output DRPRDY,
  output [7:0] PMARSVDOUT0,
  output [7:0] PMARSVDOUT1,
  output QPLL0FBCLKLOST,
  output QPLL0LOCK,
  output QPLL0OUTCLK,
  output QPLL0OUTREFCLK,
  output QPLL0REFCLKLOST,
  output QPLL1FBCLKLOST,
  output QPLL1LOCK,
  output QPLL1OUTCLK,
  output QPLL1OUTREFCLK,
  output QPLL1REFCLKLOST,
  output [7:0] QPLLDMONITOR0,
  output [7:0] QPLLDMONITOR1,
  output REFCLKOUTMONITOR0,
  output REFCLKOUTMONITOR1,
  output [1:0] RXRECCLK0_SEL,
  output [1:0] RXRECCLK1_SEL,
  output [3:0] SDM0FINALOUT,
  output [14:0] SDM0TESTDATA,
  output [3:0] SDM1FINALOUT,
  output [14:0] SDM1TESTDATA,

  input BGBYPASSB,
  input BGMONITORENB,
  input BGPDB,
  input [4:0] BGRCALOVRD,
  input BGRCALOVRDENB,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input GTGREFCLK0,
  input GTGREFCLK1,
  input GTNORTHREFCLK00,
  input GTNORTHREFCLK01,
  input GTNORTHREFCLK10,
  input GTNORTHREFCLK11,
  input GTREFCLK00,
  input GTREFCLK01,
  input GTREFCLK10,
  input GTREFCLK11,
  input GTSOUTHREFCLK00,
  input GTSOUTHREFCLK01,
  input GTSOUTHREFCLK10,
  input GTSOUTHREFCLK11,
  input [7:0] PMARSVD0,
  input [7:0] PMARSVD1,
  input QPLL0CLKRSVD0,
  input QPLL0LOCKDETCLK,
  input QPLL0LOCKEN,
  input QPLL0PD,
  input [2:0] QPLL0REFCLKSEL,
  input QPLL0RESET,
  input QPLL1CLKRSVD0,
  input QPLL1LOCKDETCLK,
  input QPLL1LOCKEN,
  input QPLL1PD,
  input [2:0] QPLL1REFCLKSEL,
  input QPLL1RESET,
  input [7:0] QPLLRSVD1,
  input [4:0] QPLLRSVD2,
  input [4:0] QPLLRSVD3,
  input [7:0] QPLLRSVD4,
  input RCALENB,
  input [24:0] SDM0DATA,
  input SDM0RESET,
  input [1:0] SDM0WIDTH,
  input [24:0] SDM1DATA,
  input SDM1RESET,
  input [1:0] SDM1WIDTH
);
endmodule


module GTYE4_CHANNEL #(
  parameter [0:0] ACJTAG_DEBUG_MODE = 1'b0,
  parameter [0:0] ACJTAG_MODE = 1'b0,
  parameter [0:0] ACJTAG_RESET = 1'b0,
  parameter [15:0] ADAPT_CFG0 = 16'h9200,
  parameter [15:0] ADAPT_CFG1 = 16'h801C,
  parameter [15:0] ADAPT_CFG2 = 16'h0000,
  parameter ALIGN_COMMA_DOUBLE = "FALSE",
  parameter [9:0] ALIGN_COMMA_ENABLE = 10'b0001111111,
  parameter integer ALIGN_COMMA_WORD = 1,
  parameter ALIGN_MCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_MCOMMA_VALUE = 10'b1010000011,
  parameter ALIGN_PCOMMA_DET = "TRUE",
  parameter [9:0] ALIGN_PCOMMA_VALUE = 10'b0101111100,
  parameter [0:0] A_RXOSCALRESET = 1'b0,
  parameter [0:0] A_RXPROGDIVRESET = 1'b0,
  parameter [0:0] A_RXTERMINATION = 1'b1,
  parameter [4:0] A_TXDIFFCTRL = 5'b01100,
  parameter [0:0] A_TXPROGDIVRESET = 1'b0,
  parameter CBCC_DATA_SOURCE_SEL = "DECODED",
  parameter [0:0] CDR_SWAP_MODE_EN = 1'b0,
  parameter [0:0] CFOK_PWRSVE_EN = 1'b1,
  parameter CHAN_BOND_KEEP_ALIGN = "FALSE",
  parameter integer CHAN_BOND_MAX_SKEW = 7,
  parameter [9:0] CHAN_BOND_SEQ_1_1 = 10'b0101111100,
  parameter [9:0] CHAN_BOND_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CHAN_BOND_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CHAN_BOND_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CHAN_BOND_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CHAN_BOND_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CHAN_BOND_SEQ_2_ENABLE = 4'b1111,
  parameter CHAN_BOND_SEQ_2_USE = "FALSE",
  parameter integer CHAN_BOND_SEQ_LEN = 2,
  parameter [15:0] CH_HSPMUX = 16'h2424,
  parameter [15:0] CKCAL1_CFG_0 = 16'b1100000011000000,
  parameter [15:0] CKCAL1_CFG_1 = 16'b0101000011000000,
  parameter [15:0] CKCAL1_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL1_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_0 = 16'b1100000011000000,
  parameter [15:0] CKCAL2_CFG_1 = 16'b1000000011000000,
  parameter [15:0] CKCAL2_CFG_2 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_3 = 16'b0000000000000000,
  parameter [15:0] CKCAL2_CFG_4 = 16'b0000000000000000,
  parameter CLK_CORRECT_USE = "TRUE",
  parameter CLK_COR_KEEP_IDLE = "FALSE",
  parameter integer CLK_COR_MAX_LAT = 20,
  parameter integer CLK_COR_MIN_LAT = 18,
  parameter CLK_COR_PRECEDENCE = "TRUE",
  parameter integer CLK_COR_REPEAT_WAIT = 0,
  parameter [9:0] CLK_COR_SEQ_1_1 = 10'b0100011100,
  parameter [9:0] CLK_COR_SEQ_1_2 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_3 = 10'b0000000000,
  parameter [9:0] CLK_COR_SEQ_1_4 = 10'b0000000000,
  parameter [3:0] CLK_COR_SEQ_1_ENABLE = 4'b1111,
  parameter [9:0] CLK_COR_SEQ_2_1 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_2 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_3 = 10'b0100000000,
  parameter [9:0] CLK_COR_SEQ_2_4 = 10'b0100000000,
  parameter [3:0] CLK_COR_SEQ_2_ENABLE = 4'b1111,
  parameter CLK_COR_SEQ_2_USE = "FALSE",
  parameter integer CLK_COR_SEQ_LEN = 2,
  parameter [15:0] CPLL_CFG0 = 16'h01FA,
  parameter [15:0] CPLL_CFG1 = 16'h24A9,
  parameter [15:0] CPLL_CFG2 = 16'h6807,
  parameter [15:0] CPLL_CFG3 = 16'h0000,
  parameter integer CPLL_FBDIV = 4,
  parameter integer CPLL_FBDIV_45 = 4,
  parameter [15:0] CPLL_INIT_CFG0 = 16'h001E,
  parameter [15:0] CPLL_LOCK_CFG = 16'h01E8,
  parameter integer CPLL_REFCLK_DIV = 1,
  parameter [2:0] CTLE3_OCAP_EXT_CTRL = 3'b000,
  parameter [0:0] CTLE3_OCAP_EXT_EN = 1'b0,
  parameter [1:0] DDI_CTRL = 2'b00,
  parameter integer DDI_REALIGN_WAIT = 15,
  parameter DEC_MCOMMA_DETECT = "TRUE",
  parameter DEC_PCOMMA_DETECT = "TRUE",
  parameter DEC_VALID_COMMA_ONLY = "TRUE",
  parameter [0:0] DELAY_ELEC = 1'b0,
  parameter [9:0] DMONITOR_CFG0 = 10'h000,
  parameter [7:0] DMONITOR_CFG1 = 8'h00,
  parameter [0:0] ES_CLK_PHASE_SEL = 1'b0,
  parameter [5:0] ES_CONTROL = 6'b000000,
  parameter ES_ERRDET_EN = "FALSE",
  parameter ES_EYE_SCAN_EN = "FALSE",
  parameter [11:0] ES_HORZ_OFFSET = 12'h800,
  parameter [4:0] ES_PRESCALE = 5'b00000,
  parameter [15:0] ES_QUALIFIER0 = 16'h0000,
  parameter [15:0] ES_QUALIFIER1 = 16'h0000,
  parameter [15:0] ES_QUALIFIER2 = 16'h0000,
  parameter [15:0] ES_QUALIFIER3 = 16'h0000,
  parameter [15:0] ES_QUALIFIER4 = 16'h0000,
  parameter [15:0] ES_QUALIFIER5 = 16'h0000,
  parameter [15:0] ES_QUALIFIER6 = 16'h0000,
  parameter [15:0] ES_QUALIFIER7 = 16'h0000,
  parameter [15:0] ES_QUALIFIER8 = 16'h0000,
  parameter [15:0] ES_QUALIFIER9 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK0 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK1 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK2 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK3 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK4 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK5 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK6 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK7 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK8 = 16'h0000,
  parameter [15:0] ES_QUAL_MASK9 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK0 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK1 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK2 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK3 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK4 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK5 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK6 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK7 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK8 = 16'h0000,
  parameter [15:0] ES_SDATA_MASK9 = 16'h0000,
  parameter integer EYESCAN_VP_RANGE = 0,
  parameter [0:0] EYE_SCAN_SWAP_EN = 1'b0,
  parameter [3:0] FTS_DESKEW_SEQ_ENABLE = 4'b1111,
  parameter [3:0] FTS_LANE_DESKEW_CFG = 4'b1111,
  parameter FTS_LANE_DESKEW_EN = "FALSE",
  parameter [4:0] GEARBOX_MODE = 5'b00000,
  parameter [0:0] ISCAN_CK_PH_SEL2 = 1'b0,
  parameter [0:0] LOCAL_MASTER = 1'b0,
  parameter integer LPBK_BIAS_CTRL = 4,
  parameter [0:0] LPBK_EN_RCAL_B = 1'b0,
  parameter [3:0] LPBK_EXT_RCAL = 4'b0000,
  parameter integer LPBK_IND_CTRL0 = 5,
  parameter integer LPBK_IND_CTRL1 = 5,
  parameter integer LPBK_IND_CTRL2 = 5,
  parameter integer LPBK_RG_CTRL = 2,
  parameter [1:0] OOBDIVCTL = 2'b00,
  parameter [0:0] OOB_PWRUP = 1'b0,
  parameter PCI3_AUTO_REALIGN = "FRST_SMPL",
  parameter [0:0] PCI3_PIPE_RX_ELECIDLE = 1'b1,
  parameter [1:0] PCI3_RX_ASYNC_EBUF_BYPASS = 2'b00,
  parameter [0:0] PCI3_RX_ELECIDLE_EI2_ENABLE = 1'b0,
  parameter [5:0] PCI3_RX_ELECIDLE_H2L_COUNT = 6'b000000,
  parameter [2:0] PCI3_RX_ELECIDLE_H2L_DISABLE = 3'b000,
  parameter [5:0] PCI3_RX_ELECIDLE_HI_COUNT = 6'b000000,
  parameter [0:0] PCI3_RX_ELECIDLE_LP4_DISABLE = 1'b0,
  parameter [0:0] PCI3_RX_FIFO_DISABLE = 1'b0,
  parameter [4:0] PCIE3_CLK_COR_EMPTY_THRSH = 5'b00000,
  parameter [5:0] PCIE3_CLK_COR_FULL_THRSH = 6'b010000,
  parameter [4:0] PCIE3_CLK_COR_MAX_LAT = 5'b01000,
  parameter [4:0] PCIE3_CLK_COR_MIN_LAT = 5'b00100,
  parameter [5:0] PCIE3_CLK_COR_THRSH_TIMER = 6'b001000,
  parameter PCIE_64B_DYN_CLKSW_DIS = "FALSE",
  parameter [15:0] PCIE_BUFG_DIV_CTRL = 16'h0000,
  parameter PCIE_GEN4_64BIT_INT_EN = "FALSE",
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN12 = 2'h0,
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN3 = 2'h0,
  parameter [1:0] PCIE_PLL_SEL_MODE_GEN4 = 2'h0,
  parameter [15:0] PCIE_RXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_RXPMA_CFG = 16'h0000,
  parameter [15:0] PCIE_TXPCS_CFG_GEN3 = 16'h0000,
  parameter [15:0] PCIE_TXPMA_CFG = 16'h0000,
  parameter PCS_PCIE_EN = "FALSE",
  parameter [15:0] PCS_RSVD0 = 16'h0000,
  parameter [11:0] PD_TRANS_TIME_FROM_P2 = 12'h03C,
  parameter [7:0] PD_TRANS_TIME_NONE_P2 = 8'h19,
  parameter [7:0] PD_TRANS_TIME_TO_P2 = 8'h64,
  parameter integer PREIQ_FREQ_BST = 0,
  parameter [0:0] RATE_SW_USE_DRP = 1'b0,
  parameter [0:0] RCLK_SIPO_DLY_ENB = 1'b0,
  parameter [0:0] RCLK_SIPO_INV_EN = 1'b0,
  parameter [2:0] RTX_BUF_CML_CTRL = 3'b010,
  parameter [1:0] RTX_BUF_TERM_CTRL = 2'b00,
  parameter [4:0] RXBUFRESET_TIME = 5'b00001,
  parameter RXBUF_ADDR_MODE = "FULL",
  parameter [3:0] RXBUF_EIDLE_HI_CNT = 4'b1000,
  parameter [3:0] RXBUF_EIDLE_LO_CNT = 4'b0000,
  parameter RXBUF_EN = "TRUE",
  parameter RXBUF_RESET_ON_CB_CHANGE = "TRUE",
  parameter RXBUF_RESET_ON_COMMAALIGN = "FALSE",
  parameter RXBUF_RESET_ON_EIDLE = "FALSE",
  parameter RXBUF_RESET_ON_RATE_CHANGE = "TRUE",
  parameter integer RXBUF_THRESH_OVFLW = 0,
  parameter RXBUF_THRESH_OVRD = "FALSE",
  parameter integer RXBUF_THRESH_UNDFLW = 4,
  parameter [4:0] RXCDRFREQRESET_TIME = 5'b10000,
  parameter [4:0] RXCDRPHRESET_TIME = 5'b00001,
  parameter [15:0] RXCDR_CFG0 = 16'h0003,
  parameter [15:0] RXCDR_CFG0_GEN3 = 16'h0003,
  parameter [15:0] RXCDR_CFG1 = 16'h0000,
  parameter [15:0] RXCDR_CFG1_GEN3 = 16'h0000,
  parameter [15:0] RXCDR_CFG2 = 16'h0164,
  parameter [9:0] RXCDR_CFG2_GEN2 = 10'h164,
  parameter [15:0] RXCDR_CFG2_GEN3 = 16'h0034,
  parameter [15:0] RXCDR_CFG2_GEN4 = 16'h0034,
  parameter [15:0] RXCDR_CFG3 = 16'h0024,
  parameter [5:0] RXCDR_CFG3_GEN2 = 6'h24,
  parameter [15:0] RXCDR_CFG3_GEN3 = 16'h0024,
  parameter [15:0] RXCDR_CFG3_GEN4 = 16'h0024,
  parameter [15:0] RXCDR_CFG4 = 16'h5CF6,
  parameter [15:0] RXCDR_CFG4_GEN3 = 16'h5CF6,
  parameter [15:0] RXCDR_CFG5 = 16'hB46B,
  parameter [15:0] RXCDR_CFG5_GEN3 = 16'h146B,
  parameter [0:0] RXCDR_FR_RESET_ON_EIDLE = 1'b0,
  parameter [0:0] RXCDR_HOLD_DURING_EIDLE = 1'b0,
  parameter [15:0] RXCDR_LOCK_CFG0 = 16'h0040,
  parameter [15:0] RXCDR_LOCK_CFG1 = 16'h8000,
  parameter [15:0] RXCDR_LOCK_CFG2 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG3 = 16'h0000,
  parameter [15:0] RXCDR_LOCK_CFG4 = 16'h0000,
  parameter [0:0] RXCDR_PH_RESET_ON_EIDLE = 1'b0,
  parameter [15:0] RXCFOK_CFG0 = 16'h0000,
  parameter [15:0] RXCFOK_CFG1 = 16'h0002,
  parameter [15:0] RXCFOK_CFG2 = 16'h002D,
  parameter [15:0] RXCKCAL1_IQ_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL1_I_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL1_Q_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_DX_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_D_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_S_LOOP_RST_CFG = 16'h0000,
  parameter [15:0] RXCKCAL2_X_LOOP_RST_CFG = 16'h0000,
  parameter [6:0] RXDFELPMRESET_TIME = 7'b0001111,
  parameter [15:0] RXDFELPM_KL_CFG0 = 16'h0000,
  parameter [15:0] RXDFELPM_KL_CFG1 = 16'h0022,
  parameter [15:0] RXDFELPM_KL_CFG2 = 16'h0100,
  parameter [15:0] RXDFE_CFG0 = 16'h4000,
  parameter [15:0] RXDFE_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_GC_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H2_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H3_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H3_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H4_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H4_CFG1 = 16'h0003,
  parameter [15:0] RXDFE_H5_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H5_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H6_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H6_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H7_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H7_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H8_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H8_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_H9_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_H9_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HA_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HA_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HB_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HB_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HC_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HC_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HD_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HD_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HE_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HE_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_HF_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_HF_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_KH_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_KH_CFG3 = 16'h2000,
  parameter [15:0] RXDFE_OS_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_OS_CFG1 = 16'h0000,
  parameter [15:0] RXDFE_UT_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_UT_CFG1 = 16'h0002,
  parameter [15:0] RXDFE_UT_CFG2 = 16'h0000,
  parameter [15:0] RXDFE_VP_CFG0 = 16'h0000,
  parameter [15:0] RXDFE_VP_CFG1 = 16'h0022,
  parameter [15:0] RXDLY_CFG = 16'h0010,
  parameter [15:0] RXDLY_LCFG = 16'h0030,
  parameter RXELECIDLE_CFG = "SIGCFG_4",
  parameter integer RXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter RXGEARBOX_EN = "FALSE",
  parameter [4:0] RXISCANRESET_TIME = 5'b00001,
  parameter [15:0] RXLPM_CFG = 16'h0000,
  parameter [15:0] RXLPM_GC_CFG = 16'h1000,
  parameter [15:0] RXLPM_KH_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_KH_CFG1 = 16'h0002,
  parameter [15:0] RXLPM_OS_CFG0 = 16'h0000,
  parameter [15:0] RXLPM_OS_CFG1 = 16'h0000,
  parameter [8:0] RXOOB_CFG = 9'b000110000,
  parameter RXOOB_CLK_CFG = "PMA",
  parameter [4:0] RXOSCALRESET_TIME = 5'b00011,
  parameter integer RXOUT_DIV = 4,
  parameter [4:0] RXPCSRESET_TIME = 5'b00001,
  parameter [15:0] RXPHBEACON_CFG = 16'h0000,
  parameter [15:0] RXPHDLY_CFG = 16'h2020,
  parameter [15:0] RXPHSAMP_CFG = 16'h2100,
  parameter [15:0] RXPHSLIP_CFG = 16'h9933,
  parameter [4:0] RXPH_MONITOR_SEL = 5'b00000,
  parameter [15:0] RXPI_CFG0 = 16'h0102,
  parameter [15:0] RXPI_CFG1 = 16'b0000000001010100,
  parameter RXPMACLK_SEL = "DATA",
  parameter [4:0] RXPMARESET_TIME = 5'b00001,
  parameter [0:0] RXPRBS_ERR_LOOPBACK = 1'b0,
  parameter integer RXPRBS_LINKACQ_CNT = 15,
  parameter [0:0] RXREFCLKDIV2_SEL = 1'b0,
  parameter integer RXSLIDE_AUTO_WAIT = 7,
  parameter RXSLIDE_MODE = "OFF",
  parameter [0:0] RXSYNC_MULTILANE = 1'b0,
  parameter [0:0] RXSYNC_OVRD = 1'b0,
  parameter [0:0] RXSYNC_SKIP_DA = 1'b0,
  parameter [0:0] RX_AFE_CM_EN = 1'b0,
  parameter [15:0] RX_BIAS_CFG0 = 16'h12B0,
  parameter [5:0] RX_BUFFER_CFG = 6'b000000,
  parameter [0:0] RX_CAPFF_SARC_ENB = 1'b0,
  parameter integer RX_CLK25_DIV = 8,
  parameter [0:0] RX_CLKMUX_EN = 1'b1,
  parameter [4:0] RX_CLK_SLIP_OVRD = 5'b00000,
  parameter [3:0] RX_CM_BUF_CFG = 4'b1010,
  parameter [0:0] RX_CM_BUF_PD = 1'b0,
  parameter integer RX_CM_SEL = 2,
  parameter integer RX_CM_TRIM = 12,
  parameter [0:0] RX_CTLE_PWR_SAVING = 1'b0,
  parameter [3:0] RX_CTLE_RES_CTRL = 4'b0000,
  parameter integer RX_DATA_WIDTH = 20,
  parameter [5:0] RX_DDI_SEL = 6'b000000,
  parameter RX_DEFER_RESET_BUF_EN = "TRUE",
  parameter [2:0] RX_DEGEN_CTRL = 3'b100,
  parameter integer RX_DFELPM_CFG0 = 10,
  parameter [0:0] RX_DFELPM_CFG1 = 1'b1,
  parameter [0:0] RX_DFELPM_KLKH_AGC_STUP_EN = 1'b1,
  parameter integer RX_DFE_AGC_CFG1 = 4,
  parameter integer RX_DFE_KL_LPM_KH_CFG0 = 1,
  parameter integer RX_DFE_KL_LPM_KH_CFG1 = 2,
  parameter [1:0] RX_DFE_KL_LPM_KL_CFG0 = 2'b01,
  parameter integer RX_DFE_KL_LPM_KL_CFG1 = 4,
  parameter [0:0] RX_DFE_LPM_HOLD_DURING_EIDLE = 1'b0,
  parameter RX_DISPERR_SEQ_MATCH = "TRUE",
  parameter [4:0] RX_DIVRESET_TIME = 5'b00001,
  parameter [0:0] RX_EN_CTLE_RCAL_B = 1'b0,
  parameter integer RX_EN_SUM_RCAL_B = 0,
  parameter [6:0] RX_EYESCAN_VS_CODE = 7'b0000000,
  parameter [0:0] RX_EYESCAN_VS_NEG_DIR = 1'b0,
  parameter [1:0] RX_EYESCAN_VS_RANGE = 2'b10,
  parameter [0:0] RX_EYESCAN_VS_UT_SIGN = 1'b0,
  parameter [0:0] RX_FABINT_USRCLK_FLOP = 1'b0,
  parameter [0:0] RX_I2V_FILTER_EN = 1'b1,
  parameter integer RX_INT_DATAWIDTH = 1,
  parameter [0:0] RX_PMA_POWER_SAVE = 1'b0,
  parameter [15:0] RX_PMA_RSV0 = 16'h002F,
  parameter real RX_PROGDIV_CFG = 0.0,
  parameter [15:0] RX_PROGDIV_RATE = 16'h0001,
  parameter [3:0] RX_RESLOAD_CTRL = 4'b0000,
  parameter [0:0] RX_RESLOAD_OVRD = 1'b0,
  parameter [2:0] RX_SAMPLE_PERIOD = 3'b101,
  parameter integer RX_SIG_VALID_DLY = 11,
  parameter integer RX_SUM_DEGEN_AVTT_OVERITE = 0,
  parameter [0:0] RX_SUM_DFETAPREP_EN = 1'b0,
  parameter [3:0] RX_SUM_IREF_TUNE = 4'b0000,
  parameter integer RX_SUM_PWR_SAVING = 0,
  parameter [3:0] RX_SUM_RES_CTRL = 4'b0000,
  parameter [3:0] RX_SUM_VCMTUNE = 4'b0011,
  parameter [0:0] RX_SUM_VCM_BIAS_TUNE_EN = 1'b1,
  parameter [0:0] RX_SUM_VCM_OVWR = 1'b0,
  parameter [2:0] RX_SUM_VREF_TUNE = 3'b100,
  parameter [1:0] RX_TUNE_AFE_OS = 2'b00,
  parameter [2:0] RX_VREG_CTRL = 3'b010,
  parameter [0:0] RX_VREG_PDB = 1'b1,
  parameter [1:0] RX_WIDEMODE_CDR = 2'b01,
  parameter [1:0] RX_WIDEMODE_CDR_GEN3 = 2'b01,
  parameter [1:0] RX_WIDEMODE_CDR_GEN4 = 2'b01,
  parameter RX_XCLK_SEL = "RXDES",
  parameter [0:0] RX_XMODE_SEL = 1'b0,
  parameter [0:0] SAMPLE_CLK_PHASE = 1'b0,
  parameter [0:0] SAS_12G_MODE = 1'b0,
  parameter [3:0] SATA_BURST_SEQ_LEN = 4'b1111,
  parameter [2:0] SATA_BURST_VAL = 3'b100,
  parameter SATA_CPLL_CFG = "VCO_3000MHZ",
  parameter [2:0] SATA_EIDLE_VAL = 3'b100,
  parameter SHOW_REALIGN_COMMA = "TRUE",
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter SIM_MODE = "FAST",
  parameter SIM_RECEIVER_DETECT_PASS = "TRUE",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter SIM_TX_EIDLE_DRIVE_LEVEL = "Z",
  parameter [0:0] SRSTMODE = 1'b0,
  parameter [1:0] TAPDLY_SET_TX = 2'h0,
  parameter [14:0] TERM_RCAL_CFG = 15'b100001000010000,
  parameter [2:0] TERM_RCAL_OVRD = 3'b000,
  parameter [7:0] TRANS_TIME_RATE = 8'h0E,
  parameter [7:0] TST_RSV0 = 8'h00,
  parameter [7:0] TST_RSV1 = 8'h00,
  parameter TXBUF_EN = "TRUE",
  parameter TXBUF_RESET_ON_RATE_CHANGE = "FALSE",
  parameter [15:0] TXDLY_CFG = 16'h0010,
  parameter [15:0] TXDLY_LCFG = 16'h0030,
  parameter integer TXDRV_FREQBAND = 0,
  parameter [15:0] TXFE_CFG0 = 16'b0000000000000000,
  parameter [15:0] TXFE_CFG1 = 16'b0000000000000000,
  parameter [15:0] TXFE_CFG2 = 16'b0000000000000000,
  parameter [15:0] TXFE_CFG3 = 16'b0000000000000000,
  parameter TXFIFO_ADDR_CFG = "LOW",
  parameter integer TXGBOX_FIFO_INIT_RD_ADDR = 4,
  parameter TXGEARBOX_EN = "FALSE",
  parameter integer TXOUT_DIV = 4,
  parameter [4:0] TXPCSRESET_TIME = 5'b00001,
  parameter [15:0] TXPHDLY_CFG0 = 16'h6020,
  parameter [15:0] TXPHDLY_CFG1 = 16'h0002,
  parameter [15:0] TXPH_CFG = 16'h0123,
  parameter [15:0] TXPH_CFG2 = 16'h0000,
  parameter [4:0] TXPH_MONITOR_SEL = 5'b00000,
  parameter [15:0] TXPI_CFG0 = 16'b0000000100000000,
  parameter [15:0] TXPI_CFG1 = 16'b0000000000000000,
  parameter [0:0] TXPI_GRAY_SEL = 1'b0,
  parameter [0:0] TXPI_INVSTROBE_SEL = 1'b0,
  parameter [0:0] TXPI_PPM = 1'b0,
  parameter [7:0] TXPI_PPM_CFG = 8'b00000000,
  parameter [2:0] TXPI_SYNFREQ_PPM = 3'b000,
  parameter [4:0] TXPMARESET_TIME = 5'b00001,
  parameter [0:0] TXREFCLKDIV2_SEL = 1'b0,
  parameter integer TXSWBST_BST = 1,
  parameter integer TXSWBST_EN = 0,
  parameter integer TXSWBST_MAG = 6,
  parameter [0:0] TXSYNC_MULTILANE = 1'b0,
  parameter [0:0] TXSYNC_OVRD = 1'b0,
  parameter [0:0] TXSYNC_SKIP_DA = 1'b0,
  parameter integer TX_CLK25_DIV = 8,
  parameter [0:0] TX_CLKMUX_EN = 1'b1,
  parameter integer TX_DATA_WIDTH = 20,
  parameter [15:0] TX_DCC_LOOP_RST_CFG = 16'h0000,
  parameter [5:0] TX_DEEMPH0 = 6'b000000,
  parameter [5:0] TX_DEEMPH1 = 6'b000000,
  parameter [5:0] TX_DEEMPH2 = 6'b000000,
  parameter [5:0] TX_DEEMPH3 = 6'b000000,
  parameter [4:0] TX_DIVRESET_TIME = 5'b00001,
  parameter TX_DRIVE_MODE = "DIRECT",
  parameter [2:0] TX_EIDLE_ASSERT_DELAY = 3'b110,
  parameter [2:0] TX_EIDLE_DEASSERT_DELAY = 3'b100,
  parameter [0:0] TX_FABINT_USRCLK_FLOP = 1'b0,
  parameter [0:0] TX_FIFO_BYP_EN = 1'b0,
  parameter [0:0] TX_IDLE_DATA_ZERO = 1'b0,
  parameter integer TX_INT_DATAWIDTH = 1,
  parameter TX_LOOPBACK_DRIVE_HIZ = "FALSE",
  parameter [0:0] TX_MAINCURSOR_SEL = 1'b0,
  parameter [6:0] TX_MARGIN_FULL_0 = 7'b1001110,
  parameter [6:0] TX_MARGIN_FULL_1 = 7'b1001001,
  parameter [6:0] TX_MARGIN_FULL_2 = 7'b1000101,
  parameter [6:0] TX_MARGIN_FULL_3 = 7'b1000010,
  parameter [6:0] TX_MARGIN_FULL_4 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_0 = 7'b1000110,
  parameter [6:0] TX_MARGIN_LOW_1 = 7'b1000100,
  parameter [6:0] TX_MARGIN_LOW_2 = 7'b1000010,
  parameter [6:0] TX_MARGIN_LOW_3 = 7'b1000000,
  parameter [6:0] TX_MARGIN_LOW_4 = 7'b1000000,
  parameter [15:0] TX_PHICAL_CFG0 = 16'h0000,
  parameter [15:0] TX_PHICAL_CFG1 = 16'h003F,
  parameter integer TX_PI_BIASSET = 0,
  parameter [0:0] TX_PMADATA_OPT = 1'b0,
  parameter [0:0] TX_PMA_POWER_SAVE = 1'b0,
  parameter [15:0] TX_PMA_RSV0 = 16'h0000,
  parameter [15:0] TX_PMA_RSV1 = 16'h0000,
  parameter TX_PROGCLK_SEL = "POSTPI",
  parameter real TX_PROGDIV_CFG = 0.0,
  parameter [15:0] TX_PROGDIV_RATE = 16'h0001,
  parameter [13:0] TX_RXDETECT_CFG = 14'h0032,
  parameter integer TX_RXDETECT_REF = 3,
  parameter [2:0] TX_SAMPLE_PERIOD = 3'b101,
  parameter [1:0] TX_SW_MEAS = 2'b00,
  parameter [2:0] TX_VREG_CTRL = 3'b000,
  parameter [0:0] TX_VREG_PDB = 1'b0,
  parameter [1:0] TX_VREG_VREFSEL = 2'b00,
  parameter TX_XCLK_SEL = "TXOUT",
  parameter [0:0] USB_BOTH_BURST_IDLE = 1'b0,
  parameter [6:0] USB_BURSTMAX_U3WAKE = 7'b1111111,
  parameter [6:0] USB_BURSTMIN_U3WAKE = 7'b1100011,
  parameter [0:0] USB_CLK_COR_EQ_EN = 1'b0,
  parameter [0:0] USB_EXT_CNTL = 1'b1,
  parameter [9:0] USB_IDLEMAX_POLLING = 10'b1010111011,
  parameter [9:0] USB_IDLEMIN_POLLING = 10'b0100101011,
  parameter [8:0] USB_LFPSPING_BURST = 9'b000000101,
  parameter [8:0] USB_LFPSPOLLING_BURST = 9'b000110001,
  parameter [8:0] USB_LFPSPOLLING_IDLE_MS = 9'b000000100,
  parameter [8:0] USB_LFPSU1EXIT_BURST = 9'b000011101,
  parameter [8:0] USB_LFPSU2LPEXIT_BURST_MS = 9'b001100011,
  parameter [8:0] USB_LFPSU3WAKE_BURST_MS = 9'b111110011,
  parameter [3:0] USB_LFPS_TPERIOD = 4'b0011,
  parameter [0:0] USB_LFPS_TPERIOD_ACCURATE = 1'b1,
  parameter [0:0] USB_MODE = 1'b0,
  parameter [0:0] USB_PCIE_ERR_REP_DIS = 1'b0,
  parameter integer USB_PING_SATA_MAX_INIT = 21,
  parameter integer USB_PING_SATA_MIN_INIT = 12,
  parameter integer USB_POLL_SATA_MAX_BURST = 8,
  parameter integer USB_POLL_SATA_MIN_BURST = 4,
  parameter [0:0] USB_RAW_ELEC = 1'b0,
  parameter [0:0] USB_RXIDLE_P0_CTRL = 1'b1,
  parameter [0:0] USB_TXIDLE_TUNE_ENABLE = 1'b1,
  parameter integer USB_U1_SATA_MAX_WAKE = 7,
  parameter integer USB_U1_SATA_MIN_WAKE = 4,
  parameter integer USB_U2_SAS_MAX_COM = 64,
  parameter integer USB_U2_SAS_MIN_COM = 36,
  parameter [0:0] USE_PCS_CLK_PHASE_SEL = 1'b0,
  parameter [0:0] Y_ALL_MODE = 1'b0
)(
  output BUFGTCE,
  output [2:0] BUFGTCEMASK,
  output [8:0] BUFGTDIV,
  output BUFGTRESET,
  output [2:0] BUFGTRSTMASK,
  output CPLLFBCLKLOST,
  output CPLLLOCK,
  output CPLLREFCLKLOST,
  output [15:0] DMONITOROUT,
  output DMONITOROUTCLK,
  output [15:0] DRPDO,
  output DRPRDY,
  output EYESCANDATAERROR,
  output GTPOWERGOOD,
  output GTREFCLKMONITOR,
  output GTYTXN,
  output GTYTXP,
  output PCIERATEGEN3,
  output PCIERATEIDLE,
  output [1:0] PCIERATEQPLLPD,
  output [1:0] PCIERATEQPLLRESET,
  output PCIESYNCTXSYNCDONE,
  output PCIEUSERGEN3RDY,
  output PCIEUSERPHYSTATUSRST,
  output PCIEUSERRATESTART,
  output [15:0] PCSRSVDOUT,
  output PHYSTATUS,
  output [15:0] PINRSRVDAS,
  output POWERPRESENT,
  output RESETEXCEPTION,
  output [2:0] RXBUFSTATUS,
  output RXBYTEISALIGNED,
  output RXBYTEREALIGN,
  output RXCDRLOCK,
  output RXCDRPHDONE,
  output RXCHANBONDSEQ,
  output RXCHANISALIGNED,
  output RXCHANREALIGN,
  output [4:0] RXCHBONDO,
  output RXCKCALDONE,
  output [1:0] RXCLKCORCNT,
  output RXCOMINITDET,
  output RXCOMMADET,
  output RXCOMSASDET,
  output RXCOMWAKEDET,
  output [15:0] RXCTRL0,
  output [15:0] RXCTRL1,
  output [7:0] RXCTRL2,
  output [7:0] RXCTRL3,
  output [127:0] RXDATA,
  output [7:0] RXDATAEXTENDRSVD,
  output [1:0] RXDATAVALID,
  output RXDLYSRESETDONE,
  output RXELECIDLE,
  output [5:0] RXHEADER,
  output [1:0] RXHEADERVALID,
  output RXLFPSTRESETDET,
  output RXLFPSU2LPEXITDET,
  output RXLFPSU3WAKEDET,
  output [7:0] RXMONITOROUT,
  output RXOSINTDONE,
  output RXOSINTSTARTED,
  output RXOSINTSTROBEDONE,
  output RXOSINTSTROBESTARTED,
  output RXOUTCLK,
  output RXOUTCLKFABRIC,
  output RXOUTCLKPCS,
  output RXPHALIGNDONE,
  output RXPHALIGNERR,
  output RXPMARESETDONE,
  output RXPRBSERR,
  output RXPRBSLOCKED,
  output RXPRGDIVRESETDONE,
  output RXRATEDONE,
  output RXRECCLKOUT,
  output RXRESETDONE,
  output RXSLIDERDY,
  output RXSLIPDONE,
  output RXSLIPOUTCLKRDY,
  output RXSLIPPMARDY,
  output [1:0] RXSTARTOFSEQ,
  output [2:0] RXSTATUS,
  output RXSYNCDONE,
  output RXSYNCOUT,
  output RXVALID,
  output [1:0] TXBUFSTATUS,
  output TXCOMFINISH,
  output TXDCCDONE,
  output TXDLYSRESETDONE,
  output TXOUTCLK,
  output TXOUTCLKFABRIC,
  output TXOUTCLKPCS,
  output TXPHALIGNDONE,
  output TXPHINITDONE,
  output TXPMARESETDONE,
  output TXPRGDIVRESETDONE,
  output TXRATEDONE,
  output TXRESETDONE,
  output TXSYNCDONE,
  output TXSYNCOUT,

  input CDRSTEPDIR,
  input CDRSTEPSQ,
  input CDRSTEPSX,
  input CFGRESET,
  input CLKRSVD0,
  input CLKRSVD1,
  input CPLLFREQLOCK,
  input CPLLLOCKDETCLK,
  input CPLLLOCKEN,
  input CPLLPD,
  input [2:0] CPLLREFCLKSEL,
  input CPLLRESET,
  input DMONFIFORESET,
  input DMONITORCLK,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPRST,
  input DRPWE,
  input EYESCANRESET,
  input EYESCANTRIGGER,
  input FREQOS,
  input GTGREFCLK,
  input GTNORTHREFCLK0,
  input GTNORTHREFCLK1,
  input GTREFCLK0,
  input GTREFCLK1,
  input [15:0] GTRSVD,
  input GTRXRESET,
  input GTRXRESETSEL,
  input GTSOUTHREFCLK0,
  input GTSOUTHREFCLK1,
  input GTTXRESET,
  input GTTXRESETSEL,
  input GTYRXN,
  input GTYRXP,
  input INCPCTRL,
  input [2:0] LOOPBACK,
  input PCIEEQRXEQADAPTDONE,
  input PCIERSTIDLE,
  input PCIERSTTXSYNCSTART,
  input PCIEUSERRATEDONE,
  input [15:0] PCSRSVDIN,
  input QPLL0CLK,
  input QPLL0FREQLOCK,
  input QPLL0REFCLK,
  input QPLL1CLK,
  input QPLL1FREQLOCK,
  input QPLL1REFCLK,
  input RESETOVRD,
  input RX8B10BEN,
  input RXAFECFOKEN,
  input RXBUFRESET,
  input RXCDRFREQRESET,
  input RXCDRHOLD,
  input RXCDROVRDEN,
  input RXCDRRESET,
  input RXCHBONDEN,
  input [4:0] RXCHBONDI,
  input [2:0] RXCHBONDLEVEL,
  input RXCHBONDMASTER,
  input RXCHBONDSLAVE,
  input RXCKCALRESET,
  input [6:0] RXCKCALSTART,
  input RXCOMMADETEN,
  input RXDFEAGCHOLD,
  input RXDFEAGCOVRDEN,
  input [3:0] RXDFECFOKFCNUM,
  input RXDFECFOKFEN,
  input RXDFECFOKFPULSE,
  input RXDFECFOKHOLD,
  input RXDFECFOKOVREN,
  input RXDFEKHHOLD,
  input RXDFEKHOVRDEN,
  input RXDFELFHOLD,
  input RXDFELFOVRDEN,
  input RXDFELPMRESET,
  input RXDFETAP10HOLD,
  input RXDFETAP10OVRDEN,
  input RXDFETAP11HOLD,
  input RXDFETAP11OVRDEN,
  input RXDFETAP12HOLD,
  input RXDFETAP12OVRDEN,
  input RXDFETAP13HOLD,
  input RXDFETAP13OVRDEN,
  input RXDFETAP14HOLD,
  input RXDFETAP14OVRDEN,
  input RXDFETAP15HOLD,
  input RXDFETAP15OVRDEN,
  input RXDFETAP2HOLD,
  input RXDFETAP2OVRDEN,
  input RXDFETAP3HOLD,
  input RXDFETAP3OVRDEN,
  input RXDFETAP4HOLD,
  input RXDFETAP4OVRDEN,
  input RXDFETAP5HOLD,
  input RXDFETAP5OVRDEN,
  input RXDFETAP6HOLD,
  input RXDFETAP6OVRDEN,
  input RXDFETAP7HOLD,
  input RXDFETAP7OVRDEN,
  input RXDFETAP8HOLD,
  input RXDFETAP8OVRDEN,
  input RXDFETAP9HOLD,
  input RXDFETAP9OVRDEN,
  input RXDFEUTHOLD,
  input RXDFEUTOVRDEN,
  input RXDFEVPHOLD,
  input RXDFEVPOVRDEN,
  input RXDFEXYDEN,
  input RXDLYBYPASS,
  input RXDLYEN,
  input RXDLYOVRDEN,
  input RXDLYSRESET,
  input [1:0] RXELECIDLEMODE,
  input RXEQTRAINING,
  input RXGEARBOXSLIP,
  input RXLATCLK,
  input RXLPMEN,
  input RXLPMGCHOLD,
  input RXLPMGCOVRDEN,
  input RXLPMHFHOLD,
  input RXLPMHFOVRDEN,
  input RXLPMLFHOLD,
  input RXLPMLFKLOVRDEN,
  input RXLPMOSHOLD,
  input RXLPMOSOVRDEN,
  input RXMCOMMAALIGNEN,
  input [1:0] RXMONITORSEL,
  input RXOOBRESET,
  input RXOSCALRESET,
  input RXOSHOLD,
  input RXOSOVRDEN,
  input [2:0] RXOUTCLKSEL,
  input RXPCOMMAALIGNEN,
  input RXPCSRESET,
  input [1:0] RXPD,
  input RXPHALIGN,
  input RXPHALIGNEN,
  input RXPHDLYPD,
  input RXPHDLYRESET,
  input [1:0] RXPLLCLKSEL,
  input RXPMARESET,
  input RXPOLARITY,
  input RXPRBSCNTRESET,
  input [3:0] RXPRBSSEL,
  input RXPROGDIVRESET,
  input [2:0] RXRATE,
  input RXRATEMODE,
  input RXSLIDE,
  input RXSLIPOUTCLK,
  input RXSLIPPMA,
  input RXSYNCALLIN,
  input RXSYNCIN,
  input RXSYNCMODE,
  input [1:0] RXSYSCLKSEL,
  input RXTERMINATION,
  input RXUSERRDY,
  input RXUSRCLK,
  input RXUSRCLK2,
  input SIGVALIDCLK,
  input [19:0] TSTIN,
  input [7:0] TX8B10BBYPASS,
  input TX8B10BEN,
  input TXCOMINIT,
  input TXCOMSAS,
  input TXCOMWAKE,
  input [15:0] TXCTRL0,
  input [15:0] TXCTRL1,
  input [7:0] TXCTRL2,
  input [127:0] TXDATA,
  input [7:0] TXDATAEXTENDRSVD,
  input TXDCCFORCESTART,
  input TXDCCRESET,
  input [1:0] TXDEEMPH,
  input TXDETECTRX,
  input [4:0] TXDIFFCTRL,
  input TXDLYBYPASS,
  input TXDLYEN,
  input TXDLYHOLD,
  input TXDLYOVRDEN,
  input TXDLYSRESET,
  input TXDLYUPDOWN,
  input TXELECIDLE,
  input [5:0] TXHEADER,
  input TXINHIBIT,
  input TXLATCLK,
  input TXLFPSTRESET,
  input TXLFPSU2LPEXIT,
  input TXLFPSU3WAKE,
  input [6:0] TXMAINCURSOR,
  input [2:0] TXMARGIN,
  input TXMUXDCDEXHOLD,
  input TXMUXDCDORWREN,
  input TXONESZEROS,
  input [2:0] TXOUTCLKSEL,
  input TXPCSRESET,
  input [1:0] TXPD,
  input TXPDELECIDLEMODE,
  input TXPHALIGN,
  input TXPHALIGNEN,
  input TXPHDLYPD,
  input TXPHDLYRESET,
  input TXPHDLYTSTCLK,
  input TXPHINIT,
  input TXPHOVRDEN,
  input TXPIPPMEN,
  input TXPIPPMOVRDEN,
  input TXPIPPMPD,
  input TXPIPPMSEL,
  input [4:0] TXPIPPMSTEPSIZE,
  input TXPISOPD,
  input [1:0] TXPLLCLKSEL,
  input TXPMARESET,
  input TXPOLARITY,
  input [4:0] TXPOSTCURSOR,
  input TXPRBSFORCEERR,
  input [3:0] TXPRBSSEL,
  input [4:0] TXPRECURSOR,
  input TXPROGDIVRESET,
  input [2:0] TXRATE,
  input TXRATEMODE,
  input [6:0] TXSEQUENCE,
  input TXSWING,
  input TXSYNCALLIN,
  input TXSYNCIN,
  input TXSYNCMODE,
  input [1:0] TXSYSCLKSEL,
  input TXUSERRDY,
  input TXUSRCLK,
  input TXUSRCLK2
);
endmodule


module GTYE4_COMMON #(
  parameter [0:0] AEN_QPLL0_FBDIV = 1'b1,
  parameter [0:0] AEN_QPLL1_FBDIV = 1'b1,
  parameter [0:0] AEN_SDM0TOGGLE = 1'b0,
  parameter [0:0] AEN_SDM1TOGGLE = 1'b0,
  parameter [0:0] A_SDM0TOGGLE = 1'b0,
  parameter [8:0] A_SDM1DATA_HIGH = 9'b000000000,
  parameter [15:0] A_SDM1DATA_LOW = 16'b0000000000000000,
  parameter [0:0] A_SDM1TOGGLE = 1'b0,
  parameter [15:0] BIAS_CFG0 = 16'h0000,
  parameter [15:0] BIAS_CFG1 = 16'h0000,
  parameter [15:0] BIAS_CFG2 = 16'h0000,
  parameter [15:0] BIAS_CFG3 = 16'h0000,
  parameter [15:0] BIAS_CFG4 = 16'h0000,
  parameter [15:0] BIAS_CFG_RSVD = 16'h0000,
  parameter [15:0] COMMON_CFG0 = 16'h0000,
  parameter [15:0] COMMON_CFG1 = 16'h0000,
  parameter [15:0] POR_CFG = 16'h0000,
  parameter [15:0] PPF0_CFG = 16'h0F00,
  parameter [15:0] PPF1_CFG = 16'h0F00,
  parameter QPLL0CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL0_CFG0 = 16'h391C,
  parameter [15:0] QPLL0_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL0_CFG2 = 16'h0F80,
  parameter [15:0] QPLL0_CFG2_G3 = 16'h0F80,
  parameter [15:0] QPLL0_CFG3 = 16'h0120,
  parameter [15:0] QPLL0_CFG4 = 16'h0002,
  parameter [9:0] QPLL0_CP = 10'b0000011111,
  parameter [9:0] QPLL0_CP_G3 = 10'b0000011111,
  parameter integer QPLL0_FBDIV = 66,
  parameter integer QPLL0_FBDIV_G3 = 80,
  parameter [15:0] QPLL0_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL0_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL0_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL0_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL0_LPF = 10'b1011111111,
  parameter [9:0] QPLL0_LPF_G3 = 10'b1111111111,
  parameter [0:0] QPLL0_PCI_EN = 1'b0,
  parameter [0:0] QPLL0_RATE_SW_USE_DRP = 1'b0,
  parameter integer QPLL0_REFCLK_DIV = 1,
  parameter [15:0] QPLL0_SDM_CFG0 = 16'h0040,
  parameter [15:0] QPLL0_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL0_SDM_CFG2 = 16'h0000,
  parameter QPLL1CLKOUT_RATE = "FULL",
  parameter [15:0] QPLL1_CFG0 = 16'h691C,
  parameter [15:0] QPLL1_CFG1 = 16'h0020,
  parameter [15:0] QPLL1_CFG1_G3 = 16'h0020,
  parameter [15:0] QPLL1_CFG2 = 16'h0F80,
  parameter [15:0] QPLL1_CFG2_G3 = 16'h0F80,
  parameter [15:0] QPLL1_CFG3 = 16'h0120,
  parameter [15:0] QPLL1_CFG4 = 16'h0002,
  parameter [9:0] QPLL1_CP = 10'b0000011111,
  parameter [9:0] QPLL1_CP_G3 = 10'b0000011111,
  parameter integer QPLL1_FBDIV = 66,
  parameter integer QPLL1_FBDIV_G3 = 80,
  parameter [15:0] QPLL1_INIT_CFG0 = 16'h0000,
  parameter [7:0] QPLL1_INIT_CFG1 = 8'h00,
  parameter [15:0] QPLL1_LOCK_CFG = 16'h01E8,
  parameter [15:0] QPLL1_LOCK_CFG_G3 = 16'h21E8,
  parameter [9:0] QPLL1_LPF = 10'b1011111111,
  parameter [9:0] QPLL1_LPF_G3 = 10'b1111111111,
  parameter [0:0] QPLL1_PCI_EN = 1'b0,
  parameter [0:0] QPLL1_RATE_SW_USE_DRP = 1'b0,
  parameter integer QPLL1_REFCLK_DIV = 1,
  parameter [15:0] QPLL1_SDM_CFG0 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG1 = 16'h0000,
  parameter [15:0] QPLL1_SDM_CFG2 = 16'h0000,
  parameter [15:0] RSVD_ATTR0 = 16'h0000,
  parameter [15:0] RSVD_ATTR1 = 16'h0000,
  parameter [15:0] RSVD_ATTR2 = 16'h0000,
  parameter [15:0] RSVD_ATTR3 = 16'h0000,
  parameter [1:0] RXRECCLKOUT0_SEL = 2'b00,
  parameter [1:0] RXRECCLKOUT1_SEL = 2'b00,
  parameter [0:0] SARC_ENB = 1'b0,
  parameter [0:0] SARC_SEL = 1'b0,
  parameter [15:0] SDM0INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM0INITSEED0_1 = 9'b000000000,
  parameter [15:0] SDM1INITSEED0_0 = 16'b0000000000000000,
  parameter [8:0] SDM1INITSEED0_1 = 9'b000000000,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter SIM_MODE = "FAST",
  parameter SIM_RESET_SPEEDUP = "TRUE",
  parameter [15:0] UB_CFG0 = 16'h0000,
  parameter [15:0] UB_CFG1 = 16'h0000,
  parameter [15:0] UB_CFG2 = 16'h0000,
  parameter [15:0] UB_CFG3 = 16'h0000,
  parameter [15:0] UB_CFG4 = 16'h0000,
  parameter [15:0] UB_CFG5 = 16'h0400,
  parameter [15:0] UB_CFG6 = 16'h0000
)(
  output [15:0] DRPDO,
  output DRPRDY,
  output [7:0] PMARSVDOUT0,
  output [7:0] PMARSVDOUT1,
  output QPLL0FBCLKLOST,
  output QPLL0LOCK,
  output QPLL0OUTCLK,
  output QPLL0OUTREFCLK,
  output QPLL0REFCLKLOST,
  output QPLL1FBCLKLOST,
  output QPLL1LOCK,
  output QPLL1OUTCLK,
  output QPLL1OUTREFCLK,
  output QPLL1REFCLKLOST,
  output [7:0] QPLLDMONITOR0,
  output [7:0] QPLLDMONITOR1,
  output REFCLKOUTMONITOR0,
  output REFCLKOUTMONITOR1,
  output [1:0] RXRECCLK0SEL,
  output [1:0] RXRECCLK1SEL,
  output [3:0] SDM0FINALOUT,
  output [14:0] SDM0TESTDATA,
  output [3:0] SDM1FINALOUT,
  output [14:0] SDM1TESTDATA,
  output [15:0] UBDADDR,
  output UBDEN,
  output [15:0] UBDI,
  output UBDWE,
  output UBMDMTDO,
  output UBRSVDOUT,
  output UBTXUART,

  input BGBYPASSB,
  input BGMONITORENB,
  input BGPDB,
  input [4:0] BGRCALOVRD,
  input BGRCALOVRDENB,
  input [15:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input GTGREFCLK0,
  input GTGREFCLK1,
  input GTNORTHREFCLK00,
  input GTNORTHREFCLK01,
  input GTNORTHREFCLK10,
  input GTNORTHREFCLK11,
  input GTREFCLK00,
  input GTREFCLK01,
  input GTREFCLK10,
  input GTREFCLK11,
  input GTSOUTHREFCLK00,
  input GTSOUTHREFCLK01,
  input GTSOUTHREFCLK10,
  input GTSOUTHREFCLK11,
  input [2:0] PCIERATEQPLL0,
  input [2:0] PCIERATEQPLL1,
  input [7:0] PMARSVD0,
  input [7:0] PMARSVD1,
  input QPLL0CLKRSVD0,
  input QPLL0CLKRSVD1,
  input [7:0] QPLL0FBDIV,
  input QPLL0LOCKDETCLK,
  input QPLL0LOCKEN,
  input QPLL0PD,
  input [2:0] QPLL0REFCLKSEL,
  input QPLL0RESET,
  input QPLL1CLKRSVD0,
  input QPLL1CLKRSVD1,
  input [7:0] QPLL1FBDIV,
  input QPLL1LOCKDETCLK,
  input QPLL1LOCKEN,
  input QPLL1PD,
  input [2:0] QPLL1REFCLKSEL,
  input QPLL1RESET,
  input [7:0] QPLLRSVD1,
  input [4:0] QPLLRSVD2,
  input [4:0] QPLLRSVD3,
  input [7:0] QPLLRSVD4,
  input RCALENB,
  input [24:0] SDM0DATA,
  input SDM0RESET,
  input SDM0TOGGLE,
  input [1:0] SDM0WIDTH,
  input [24:0] SDM1DATA,
  input SDM1RESET,
  input SDM1TOGGLE,
  input [1:0] SDM1WIDTH,
  input UBCFGSTREAMEN,
  input [15:0] UBDO,
  input UBDRDY,
  input UBENABLE,
  input [1:0] UBGPI,
  input [1:0] UBINTR,
  input UBIOLMBRST,
  input UBMBRST,
  input UBMDMCAPTURE,
  input UBMDMDBGRST,
  input UBMDMDBGUPDATE,
  input [3:0] UBMDMREGEN,
  input UBMDMSHIFT,
  input UBMDMSYSRST,
  input UBMDMTCK,
  input UBMDMTDI
);
endmodule


module HARD_SYNC #(
  parameter [0:0] INIT = 1'b0,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter integer LATENCY = 2
)(
  output DOUT,

  input CLK,
  input DIN
);
endmodule


module HBM_ONE_STACK_INTF #(
  parameter CLK_SEL_00 = "FALSE",
  parameter CLK_SEL_01 = "FALSE",
  parameter CLK_SEL_02 = "FALSE",
  parameter CLK_SEL_03 = "FALSE",
  parameter CLK_SEL_04 = "FALSE",
  parameter CLK_SEL_05 = "FALSE",
  parameter CLK_SEL_06 = "FALSE",
  parameter CLK_SEL_07 = "FALSE",
  parameter CLK_SEL_08 = "FALSE",
  parameter CLK_SEL_09 = "FALSE",
  parameter CLK_SEL_10 = "FALSE",
  parameter CLK_SEL_11 = "FALSE",
  parameter CLK_SEL_12 = "FALSE",
  parameter CLK_SEL_13 = "FALSE",
  parameter CLK_SEL_14 = "FALSE",
  parameter CLK_SEL_15 = "FALSE",
  parameter integer DATARATE_00 = 1800,
  parameter integer DATARATE_01 = 1800,
  parameter integer DATARATE_02 = 1800,
  parameter integer DATARATE_03 = 1800,
  parameter integer DATARATE_04 = 1800,
  parameter integer DATARATE_05 = 1800,
  parameter integer DATARATE_06 = 1800,
  parameter integer DATARATE_07 = 1800,
  parameter DA_LOCKOUT = "FALSE",
  parameter [0:0] IS_APB_0_PCLK_INVERTED = 1'b0,
  parameter [0:0] IS_APB_0_PRESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_00_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_00_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_01_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_01_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_02_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_02_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_03_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_03_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_04_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_04_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_05_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_05_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_06_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_06_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_07_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_07_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_08_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_08_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_09_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_09_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_10_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_10_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_11_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_11_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_12_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_12_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_13_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_13_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_14_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_14_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_15_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_15_ARESET_N_INVERTED = 1'b0,
  parameter MC_ENABLE_0 = "FALSE",
  parameter MC_ENABLE_1 = "FALSE",
  parameter MC_ENABLE_2 = "FALSE",
  parameter MC_ENABLE_3 = "FALSE",
  parameter MC_ENABLE_4 = "FALSE",
  parameter MC_ENABLE_5 = "FALSE",
  parameter MC_ENABLE_6 = "FALSE",
  parameter MC_ENABLE_7 = "FALSE",
  parameter MC_ENABLE_APB = "FALSE",
  parameter integer PAGEHIT_PERCENT_00 = 75,
  parameter PHY_ENABLE_00 = "FALSE",
  parameter PHY_ENABLE_01 = "FALSE",
  parameter PHY_ENABLE_02 = "FALSE",
  parameter PHY_ENABLE_03 = "FALSE",
  parameter PHY_ENABLE_04 = "FALSE",
  parameter PHY_ENABLE_05 = "FALSE",
  parameter PHY_ENABLE_06 = "FALSE",
  parameter PHY_ENABLE_07 = "FALSE",
  parameter PHY_ENABLE_08 = "FALSE",
  parameter PHY_ENABLE_09 = "FALSE",
  parameter PHY_ENABLE_10 = "FALSE",
  parameter PHY_ENABLE_11 = "FALSE",
  parameter PHY_ENABLE_12 = "FALSE",
  parameter PHY_ENABLE_13 = "FALSE",
  parameter PHY_ENABLE_14 = "FALSE",
  parameter PHY_ENABLE_15 = "FALSE",
  parameter PHY_ENABLE_APB = "FALSE",
  parameter PHY_PCLK_INVERT_01 = "FALSE",
  parameter integer READ_PERCENT_00 = 50,
  parameter integer READ_PERCENT_01 = 50,
  parameter integer READ_PERCENT_02 = 50,
  parameter integer READ_PERCENT_03 = 50,
  parameter integer READ_PERCENT_04 = 50,
  parameter integer READ_PERCENT_05 = 50,
  parameter integer READ_PERCENT_06 = 50,
  parameter integer READ_PERCENT_07 = 50,
  parameter integer READ_PERCENT_08 = 50,
  parameter integer READ_PERCENT_09 = 50,
  parameter integer READ_PERCENT_10 = 50,
  parameter integer READ_PERCENT_11 = 50,
  parameter integer READ_PERCENT_12 = 50,
  parameter integer READ_PERCENT_13 = 50,
  parameter integer READ_PERCENT_14 = 50,
  parameter integer READ_PERCENT_15 = 50,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter integer STACK_LOCATION = 0,
  parameter SWITCH_ENABLE = "FALSE",
  parameter integer WRITE_PERCENT_00 = 50,
  parameter integer WRITE_PERCENT_01 = 50,
  parameter integer WRITE_PERCENT_02 = 50,
  parameter integer WRITE_PERCENT_03 = 50,
  parameter integer WRITE_PERCENT_04 = 50,
  parameter integer WRITE_PERCENT_05 = 50,
  parameter integer WRITE_PERCENT_06 = 50,
  parameter integer WRITE_PERCENT_07 = 50,
  parameter integer WRITE_PERCENT_08 = 50,
  parameter integer WRITE_PERCENT_09 = 50,
  parameter integer WRITE_PERCENT_10 = 50,
  parameter integer WRITE_PERCENT_11 = 50,
  parameter integer WRITE_PERCENT_12 = 50,
  parameter integer WRITE_PERCENT_13 = 50,
  parameter integer WRITE_PERCENT_14 = 50,
  parameter integer WRITE_PERCENT_15 = 50
)(
  output [31:0] APB_0_PRDATA,
  output APB_0_PREADY,
  output APB_0_PSLVERR,
  output AXI_00_ARREADY,
  output AXI_00_AWREADY,
  output [5:0] AXI_00_BID,
  output [1:0] AXI_00_BRESP,
  output AXI_00_BVALID,
  output [1:0] AXI_00_DFI_AW_AERR_N,
  output AXI_00_DFI_CLK_BUF,
  output [7:0] AXI_00_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_00_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_00_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_00_DFI_DW_RDDATA_VALID,
  output AXI_00_DFI_INIT_COMPLETE,
  output AXI_00_DFI_PHYUPD_REQ,
  output AXI_00_DFI_PHY_LP_STATE,
  output AXI_00_DFI_RST_N_BUF,
  output [5:0] AXI_00_MC_STATUS,
  output [7:0] AXI_00_PHY_STATUS,
  output [255:0] AXI_00_RDATA,
  output [31:0] AXI_00_RDATA_PARITY,
  output [5:0] AXI_00_RID,
  output AXI_00_RLAST,
  output [1:0] AXI_00_RRESP,
  output AXI_00_RVALID,
  output AXI_00_WREADY,
  output AXI_01_ARREADY,
  output AXI_01_AWREADY,
  output [5:0] AXI_01_BID,
  output [1:0] AXI_01_BRESP,
  output AXI_01_BVALID,
  output [1:0] AXI_01_DFI_AW_AERR_N,
  output AXI_01_DFI_CLK_BUF,
  output [7:0] AXI_01_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_01_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_01_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_01_DFI_DW_RDDATA_VALID,
  output AXI_01_DFI_INIT_COMPLETE,
  output AXI_01_DFI_PHYUPD_REQ,
  output AXI_01_DFI_PHY_LP_STATE,
  output AXI_01_DFI_RST_N_BUF,
  output [255:0] AXI_01_RDATA,
  output [31:0] AXI_01_RDATA_PARITY,
  output [5:0] AXI_01_RID,
  output AXI_01_RLAST,
  output [1:0] AXI_01_RRESP,
  output AXI_01_RVALID,
  output AXI_01_WREADY,
  output AXI_02_ARREADY,
  output AXI_02_AWREADY,
  output [5:0] AXI_02_BID,
  output [1:0] AXI_02_BRESP,
  output AXI_02_BVALID,
  output [1:0] AXI_02_DFI_AW_AERR_N,
  output AXI_02_DFI_CLK_BUF,
  output [7:0] AXI_02_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_02_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_02_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_02_DFI_DW_RDDATA_VALID,
  output AXI_02_DFI_INIT_COMPLETE,
  output AXI_02_DFI_PHYUPD_REQ,
  output AXI_02_DFI_PHY_LP_STATE,
  output AXI_02_DFI_RST_N_BUF,
  output [5:0] AXI_02_MC_STATUS,
  output [7:0] AXI_02_PHY_STATUS,
  output [255:0] AXI_02_RDATA,
  output [31:0] AXI_02_RDATA_PARITY,
  output [5:0] AXI_02_RID,
  output AXI_02_RLAST,
  output [1:0] AXI_02_RRESP,
  output AXI_02_RVALID,
  output AXI_02_WREADY,
  output AXI_03_ARREADY,
  output AXI_03_AWREADY,
  output [5:0] AXI_03_BID,
  output [1:0] AXI_03_BRESP,
  output AXI_03_BVALID,
  output [1:0] AXI_03_DFI_AW_AERR_N,
  output AXI_03_DFI_CLK_BUF,
  output [7:0] AXI_03_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_03_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_03_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_03_DFI_DW_RDDATA_VALID,
  output AXI_03_DFI_INIT_COMPLETE,
  output AXI_03_DFI_PHYUPD_REQ,
  output AXI_03_DFI_PHY_LP_STATE,
  output AXI_03_DFI_RST_N_BUF,
  output [255:0] AXI_03_RDATA,
  output [31:0] AXI_03_RDATA_PARITY,
  output [5:0] AXI_03_RID,
  output AXI_03_RLAST,
  output [1:0] AXI_03_RRESP,
  output AXI_03_RVALID,
  output AXI_03_WREADY,
  output AXI_04_ARREADY,
  output AXI_04_AWREADY,
  output [5:0] AXI_04_BID,
  output [1:0] AXI_04_BRESP,
  output AXI_04_BVALID,
  output [1:0] AXI_04_DFI_AW_AERR_N,
  output AXI_04_DFI_CLK_BUF,
  output [7:0] AXI_04_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_04_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_04_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_04_DFI_DW_RDDATA_VALID,
  output AXI_04_DFI_INIT_COMPLETE,
  output AXI_04_DFI_PHYUPD_REQ,
  output AXI_04_DFI_PHY_LP_STATE,
  output AXI_04_DFI_RST_N_BUF,
  output [5:0] AXI_04_MC_STATUS,
  output [7:0] AXI_04_PHY_STATUS,
  output [255:0] AXI_04_RDATA,
  output [31:0] AXI_04_RDATA_PARITY,
  output [5:0] AXI_04_RID,
  output AXI_04_RLAST,
  output [1:0] AXI_04_RRESP,
  output AXI_04_RVALID,
  output AXI_04_WREADY,
  output AXI_05_ARREADY,
  output AXI_05_AWREADY,
  output [5:0] AXI_05_BID,
  output [1:0] AXI_05_BRESP,
  output AXI_05_BVALID,
  output [1:0] AXI_05_DFI_AW_AERR_N,
  output AXI_05_DFI_CLK_BUF,
  output [7:0] AXI_05_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_05_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_05_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_05_DFI_DW_RDDATA_VALID,
  output AXI_05_DFI_INIT_COMPLETE,
  output AXI_05_DFI_PHYUPD_REQ,
  output AXI_05_DFI_PHY_LP_STATE,
  output AXI_05_DFI_RST_N_BUF,
  output [255:0] AXI_05_RDATA,
  output [31:0] AXI_05_RDATA_PARITY,
  output [5:0] AXI_05_RID,
  output AXI_05_RLAST,
  output [1:0] AXI_05_RRESP,
  output AXI_05_RVALID,
  output AXI_05_WREADY,
  output AXI_06_ARREADY,
  output AXI_06_AWREADY,
  output [5:0] AXI_06_BID,
  output [1:0] AXI_06_BRESP,
  output AXI_06_BVALID,
  output [1:0] AXI_06_DFI_AW_AERR_N,
  output AXI_06_DFI_CLK_BUF,
  output [7:0] AXI_06_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_06_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_06_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_06_DFI_DW_RDDATA_VALID,
  output AXI_06_DFI_INIT_COMPLETE,
  output AXI_06_DFI_PHYUPD_REQ,
  output AXI_06_DFI_PHY_LP_STATE,
  output AXI_06_DFI_RST_N_BUF,
  output [5:0] AXI_06_MC_STATUS,
  output [7:0] AXI_06_PHY_STATUS,
  output [255:0] AXI_06_RDATA,
  output [31:0] AXI_06_RDATA_PARITY,
  output [5:0] AXI_06_RID,
  output AXI_06_RLAST,
  output [1:0] AXI_06_RRESP,
  output AXI_06_RVALID,
  output AXI_06_WREADY,
  output AXI_07_ARREADY,
  output AXI_07_AWREADY,
  output [5:0] AXI_07_BID,
  output [1:0] AXI_07_BRESP,
  output AXI_07_BVALID,
  output [1:0] AXI_07_DFI_AW_AERR_N,
  output AXI_07_DFI_CLK_BUF,
  output [7:0] AXI_07_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_07_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_07_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_07_DFI_DW_RDDATA_VALID,
  output AXI_07_DFI_INIT_COMPLETE,
  output AXI_07_DFI_PHYUPD_REQ,
  output AXI_07_DFI_PHY_LP_STATE,
  output AXI_07_DFI_RST_N_BUF,
  output [255:0] AXI_07_RDATA,
  output [31:0] AXI_07_RDATA_PARITY,
  output [5:0] AXI_07_RID,
  output AXI_07_RLAST,
  output [1:0] AXI_07_RRESP,
  output AXI_07_RVALID,
  output AXI_07_WREADY,
  output AXI_08_ARREADY,
  output AXI_08_AWREADY,
  output [5:0] AXI_08_BID,
  output [1:0] AXI_08_BRESP,
  output AXI_08_BVALID,
  output [1:0] AXI_08_DFI_AW_AERR_N,
  output AXI_08_DFI_CLK_BUF,
  output [7:0] AXI_08_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_08_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_08_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_08_DFI_DW_RDDATA_VALID,
  output AXI_08_DFI_INIT_COMPLETE,
  output AXI_08_DFI_PHYUPD_REQ,
  output AXI_08_DFI_PHY_LP_STATE,
  output AXI_08_DFI_RST_N_BUF,
  output [5:0] AXI_08_MC_STATUS,
  output [7:0] AXI_08_PHY_STATUS,
  output [255:0] AXI_08_RDATA,
  output [31:0] AXI_08_RDATA_PARITY,
  output [5:0] AXI_08_RID,
  output AXI_08_RLAST,
  output [1:0] AXI_08_RRESP,
  output AXI_08_RVALID,
  output AXI_08_WREADY,
  output AXI_09_ARREADY,
  output AXI_09_AWREADY,
  output [5:0] AXI_09_BID,
  output [1:0] AXI_09_BRESP,
  output AXI_09_BVALID,
  output [1:0] AXI_09_DFI_AW_AERR_N,
  output AXI_09_DFI_CLK_BUF,
  output [7:0] AXI_09_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_09_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_09_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_09_DFI_DW_RDDATA_VALID,
  output AXI_09_DFI_INIT_COMPLETE,
  output AXI_09_DFI_PHYUPD_REQ,
  output AXI_09_DFI_PHY_LP_STATE,
  output AXI_09_DFI_RST_N_BUF,
  output [255:0] AXI_09_RDATA,
  output [31:0] AXI_09_RDATA_PARITY,
  output [5:0] AXI_09_RID,
  output AXI_09_RLAST,
  output [1:0] AXI_09_RRESP,
  output AXI_09_RVALID,
  output AXI_09_WREADY,
  output AXI_10_ARREADY,
  output AXI_10_AWREADY,
  output [5:0] AXI_10_BID,
  output [1:0] AXI_10_BRESP,
  output AXI_10_BVALID,
  output [1:0] AXI_10_DFI_AW_AERR_N,
  output AXI_10_DFI_CLK_BUF,
  output [7:0] AXI_10_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_10_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_10_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_10_DFI_DW_RDDATA_VALID,
  output AXI_10_DFI_INIT_COMPLETE,
  output AXI_10_DFI_PHYUPD_REQ,
  output AXI_10_DFI_PHY_LP_STATE,
  output AXI_10_DFI_RST_N_BUF,
  output [5:0] AXI_10_MC_STATUS,
  output [7:0] AXI_10_PHY_STATUS,
  output [255:0] AXI_10_RDATA,
  output [31:0] AXI_10_RDATA_PARITY,
  output [5:0] AXI_10_RID,
  output AXI_10_RLAST,
  output [1:0] AXI_10_RRESP,
  output AXI_10_RVALID,
  output AXI_10_WREADY,
  output AXI_11_ARREADY,
  output AXI_11_AWREADY,
  output [5:0] AXI_11_BID,
  output [1:0] AXI_11_BRESP,
  output AXI_11_BVALID,
  output [1:0] AXI_11_DFI_AW_AERR_N,
  output AXI_11_DFI_CLK_BUF,
  output [7:0] AXI_11_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_11_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_11_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_11_DFI_DW_RDDATA_VALID,
  output AXI_11_DFI_INIT_COMPLETE,
  output AXI_11_DFI_PHYUPD_REQ,
  output AXI_11_DFI_PHY_LP_STATE,
  output AXI_11_DFI_RST_N_BUF,
  output [255:0] AXI_11_RDATA,
  output [31:0] AXI_11_RDATA_PARITY,
  output [5:0] AXI_11_RID,
  output AXI_11_RLAST,
  output [1:0] AXI_11_RRESP,
  output AXI_11_RVALID,
  output AXI_11_WREADY,
  output AXI_12_ARREADY,
  output AXI_12_AWREADY,
  output [5:0] AXI_12_BID,
  output [1:0] AXI_12_BRESP,
  output AXI_12_BVALID,
  output [1:0] AXI_12_DFI_AW_AERR_N,
  output AXI_12_DFI_CLK_BUF,
  output [7:0] AXI_12_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_12_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_12_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_12_DFI_DW_RDDATA_VALID,
  output AXI_12_DFI_INIT_COMPLETE,
  output AXI_12_DFI_PHYUPD_REQ,
  output AXI_12_DFI_PHY_LP_STATE,
  output AXI_12_DFI_RST_N_BUF,
  output [5:0] AXI_12_MC_STATUS,
  output [7:0] AXI_12_PHY_STATUS,
  output [255:0] AXI_12_RDATA,
  output [31:0] AXI_12_RDATA_PARITY,
  output [5:0] AXI_12_RID,
  output AXI_12_RLAST,
  output [1:0] AXI_12_RRESP,
  output AXI_12_RVALID,
  output AXI_12_WREADY,
  output AXI_13_ARREADY,
  output AXI_13_AWREADY,
  output [5:0] AXI_13_BID,
  output [1:0] AXI_13_BRESP,
  output AXI_13_BVALID,
  output [1:0] AXI_13_DFI_AW_AERR_N,
  output AXI_13_DFI_CLK_BUF,
  output [7:0] AXI_13_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_13_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_13_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_13_DFI_DW_RDDATA_VALID,
  output AXI_13_DFI_INIT_COMPLETE,
  output AXI_13_DFI_PHYUPD_REQ,
  output AXI_13_DFI_PHY_LP_STATE,
  output AXI_13_DFI_RST_N_BUF,
  output [255:0] AXI_13_RDATA,
  output [31:0] AXI_13_RDATA_PARITY,
  output [5:0] AXI_13_RID,
  output AXI_13_RLAST,
  output [1:0] AXI_13_RRESP,
  output AXI_13_RVALID,
  output AXI_13_WREADY,
  output AXI_14_ARREADY,
  output AXI_14_AWREADY,
  output [5:0] AXI_14_BID,
  output [1:0] AXI_14_BRESP,
  output AXI_14_BVALID,
  output [1:0] AXI_14_DFI_AW_AERR_N,
  output AXI_14_DFI_CLK_BUF,
  output [7:0] AXI_14_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_14_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_14_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_14_DFI_DW_RDDATA_VALID,
  output AXI_14_DFI_INIT_COMPLETE,
  output AXI_14_DFI_PHYUPD_REQ,
  output AXI_14_DFI_PHY_LP_STATE,
  output AXI_14_DFI_RST_N_BUF,
  output [5:0] AXI_14_MC_STATUS,
  output [7:0] AXI_14_PHY_STATUS,
  output [255:0] AXI_14_RDATA,
  output [31:0] AXI_14_RDATA_PARITY,
  output [5:0] AXI_14_RID,
  output AXI_14_RLAST,
  output [1:0] AXI_14_RRESP,
  output AXI_14_RVALID,
  output AXI_14_WREADY,
  output AXI_15_ARREADY,
  output AXI_15_AWREADY,
  output [5:0] AXI_15_BID,
  output [1:0] AXI_15_BRESP,
  output AXI_15_BVALID,
  output [1:0] AXI_15_DFI_AW_AERR_N,
  output AXI_15_DFI_CLK_BUF,
  output [7:0] AXI_15_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_15_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_15_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_15_DFI_DW_RDDATA_VALID,
  output AXI_15_DFI_INIT_COMPLETE,
  output AXI_15_DFI_PHYUPD_REQ,
  output AXI_15_DFI_PHY_LP_STATE,
  output AXI_15_DFI_RST_N_BUF,
  output [255:0] AXI_15_RDATA,
  output [31:0] AXI_15_RDATA_PARITY,
  output [5:0] AXI_15_RID,
  output AXI_15_RLAST,
  output [1:0] AXI_15_RRESP,
  output AXI_15_RVALID,
  output AXI_15_WREADY,
  output DRAM_0_STAT_CATTRIP,
  output [2:0] DRAM_0_STAT_TEMP,

  input [21:0] APB_0_PADDR,
  input APB_0_PCLK,
  input APB_0_PENABLE,
  input APB_0_PRESET_N,
  input APB_0_PSEL,
  input [31:0] APB_0_PWDATA,
  input APB_0_PWRITE,
  input AXI_00_ACLK,
  input [36:0] AXI_00_ARADDR,
  input [1:0] AXI_00_ARBURST,
  input AXI_00_ARESET_N,
  input [5:0] AXI_00_ARID,
  input [3:0] AXI_00_ARLEN,
  input [2:0] AXI_00_ARSIZE,
  input AXI_00_ARVALID,
  input [36:0] AXI_00_AWADDR,
  input [1:0] AXI_00_AWBURST,
  input [5:0] AXI_00_AWID,
  input [3:0] AXI_00_AWLEN,
  input [2:0] AXI_00_AWSIZE,
  input AXI_00_AWVALID,
  input AXI_00_BREADY,
  input AXI_00_DFI_LP_PWR_X_REQ,
  input AXI_00_RREADY,
  input [255:0] AXI_00_WDATA,
  input [31:0] AXI_00_WDATA_PARITY,
  input AXI_00_WLAST,
  input [31:0] AXI_00_WSTRB,
  input AXI_00_WVALID,
  input AXI_01_ACLK,
  input [36:0] AXI_01_ARADDR,
  input [1:0] AXI_01_ARBURST,
  input AXI_01_ARESET_N,
  input [5:0] AXI_01_ARID,
  input [3:0] AXI_01_ARLEN,
  input [2:0] AXI_01_ARSIZE,
  input AXI_01_ARVALID,
  input [36:0] AXI_01_AWADDR,
  input [1:0] AXI_01_AWBURST,
  input [5:0] AXI_01_AWID,
  input [3:0] AXI_01_AWLEN,
  input [2:0] AXI_01_AWSIZE,
  input AXI_01_AWVALID,
  input AXI_01_BREADY,
  input AXI_01_DFI_LP_PWR_X_REQ,
  input AXI_01_RREADY,
  input [255:0] AXI_01_WDATA,
  input [31:0] AXI_01_WDATA_PARITY,
  input AXI_01_WLAST,
  input [31:0] AXI_01_WSTRB,
  input AXI_01_WVALID,
  input AXI_02_ACLK,
  input [36:0] AXI_02_ARADDR,
  input [1:0] AXI_02_ARBURST,
  input AXI_02_ARESET_N,
  input [5:0] AXI_02_ARID,
  input [3:0] AXI_02_ARLEN,
  input [2:0] AXI_02_ARSIZE,
  input AXI_02_ARVALID,
  input [36:0] AXI_02_AWADDR,
  input [1:0] AXI_02_AWBURST,
  input [5:0] AXI_02_AWID,
  input [3:0] AXI_02_AWLEN,
  input [2:0] AXI_02_AWSIZE,
  input AXI_02_AWVALID,
  input AXI_02_BREADY,
  input AXI_02_DFI_LP_PWR_X_REQ,
  input AXI_02_RREADY,
  input [255:0] AXI_02_WDATA,
  input [31:0] AXI_02_WDATA_PARITY,
  input AXI_02_WLAST,
  input [31:0] AXI_02_WSTRB,
  input AXI_02_WVALID,
  input AXI_03_ACLK,
  input [36:0] AXI_03_ARADDR,
  input [1:0] AXI_03_ARBURST,
  input AXI_03_ARESET_N,
  input [5:0] AXI_03_ARID,
  input [3:0] AXI_03_ARLEN,
  input [2:0] AXI_03_ARSIZE,
  input AXI_03_ARVALID,
  input [36:0] AXI_03_AWADDR,
  input [1:0] AXI_03_AWBURST,
  input [5:0] AXI_03_AWID,
  input [3:0] AXI_03_AWLEN,
  input [2:0] AXI_03_AWSIZE,
  input AXI_03_AWVALID,
  input AXI_03_BREADY,
  input AXI_03_DFI_LP_PWR_X_REQ,
  input AXI_03_RREADY,
  input [255:0] AXI_03_WDATA,
  input [31:0] AXI_03_WDATA_PARITY,
  input AXI_03_WLAST,
  input [31:0] AXI_03_WSTRB,
  input AXI_03_WVALID,
  input AXI_04_ACLK,
  input [36:0] AXI_04_ARADDR,
  input [1:0] AXI_04_ARBURST,
  input AXI_04_ARESET_N,
  input [5:0] AXI_04_ARID,
  input [3:0] AXI_04_ARLEN,
  input [2:0] AXI_04_ARSIZE,
  input AXI_04_ARVALID,
  input [36:0] AXI_04_AWADDR,
  input [1:0] AXI_04_AWBURST,
  input [5:0] AXI_04_AWID,
  input [3:0] AXI_04_AWLEN,
  input [2:0] AXI_04_AWSIZE,
  input AXI_04_AWVALID,
  input AXI_04_BREADY,
  input AXI_04_DFI_LP_PWR_X_REQ,
  input AXI_04_RREADY,
  input [255:0] AXI_04_WDATA,
  input [31:0] AXI_04_WDATA_PARITY,
  input AXI_04_WLAST,
  input [31:0] AXI_04_WSTRB,
  input AXI_04_WVALID,
  input AXI_05_ACLK,
  input [36:0] AXI_05_ARADDR,
  input [1:0] AXI_05_ARBURST,
  input AXI_05_ARESET_N,
  input [5:0] AXI_05_ARID,
  input [3:0] AXI_05_ARLEN,
  input [2:0] AXI_05_ARSIZE,
  input AXI_05_ARVALID,
  input [36:0] AXI_05_AWADDR,
  input [1:0] AXI_05_AWBURST,
  input [5:0] AXI_05_AWID,
  input [3:0] AXI_05_AWLEN,
  input [2:0] AXI_05_AWSIZE,
  input AXI_05_AWVALID,
  input AXI_05_BREADY,
  input AXI_05_DFI_LP_PWR_X_REQ,
  input AXI_05_RREADY,
  input [255:0] AXI_05_WDATA,
  input [31:0] AXI_05_WDATA_PARITY,
  input AXI_05_WLAST,
  input [31:0] AXI_05_WSTRB,
  input AXI_05_WVALID,
  input AXI_06_ACLK,
  input [36:0] AXI_06_ARADDR,
  input [1:0] AXI_06_ARBURST,
  input AXI_06_ARESET_N,
  input [5:0] AXI_06_ARID,
  input [3:0] AXI_06_ARLEN,
  input [2:0] AXI_06_ARSIZE,
  input AXI_06_ARVALID,
  input [36:0] AXI_06_AWADDR,
  input [1:0] AXI_06_AWBURST,
  input [5:0] AXI_06_AWID,
  input [3:0] AXI_06_AWLEN,
  input [2:0] AXI_06_AWSIZE,
  input AXI_06_AWVALID,
  input AXI_06_BREADY,
  input AXI_06_DFI_LP_PWR_X_REQ,
  input AXI_06_RREADY,
  input [255:0] AXI_06_WDATA,
  input [31:0] AXI_06_WDATA_PARITY,
  input AXI_06_WLAST,
  input [31:0] AXI_06_WSTRB,
  input AXI_06_WVALID,
  input AXI_07_ACLK,
  input [36:0] AXI_07_ARADDR,
  input [1:0] AXI_07_ARBURST,
  input AXI_07_ARESET_N,
  input [5:0] AXI_07_ARID,
  input [3:0] AXI_07_ARLEN,
  input [2:0] AXI_07_ARSIZE,
  input AXI_07_ARVALID,
  input [36:0] AXI_07_AWADDR,
  input [1:0] AXI_07_AWBURST,
  input [5:0] AXI_07_AWID,
  input [3:0] AXI_07_AWLEN,
  input [2:0] AXI_07_AWSIZE,
  input AXI_07_AWVALID,
  input AXI_07_BREADY,
  input AXI_07_DFI_LP_PWR_X_REQ,
  input AXI_07_RREADY,
  input [255:0] AXI_07_WDATA,
  input [31:0] AXI_07_WDATA_PARITY,
  input AXI_07_WLAST,
  input [31:0] AXI_07_WSTRB,
  input AXI_07_WVALID,
  input AXI_08_ACLK,
  input [36:0] AXI_08_ARADDR,
  input [1:0] AXI_08_ARBURST,
  input AXI_08_ARESET_N,
  input [5:0] AXI_08_ARID,
  input [3:0] AXI_08_ARLEN,
  input [2:0] AXI_08_ARSIZE,
  input AXI_08_ARVALID,
  input [36:0] AXI_08_AWADDR,
  input [1:0] AXI_08_AWBURST,
  input [5:0] AXI_08_AWID,
  input [3:0] AXI_08_AWLEN,
  input [2:0] AXI_08_AWSIZE,
  input AXI_08_AWVALID,
  input AXI_08_BREADY,
  input AXI_08_DFI_LP_PWR_X_REQ,
  input AXI_08_RREADY,
  input [255:0] AXI_08_WDATA,
  input [31:0] AXI_08_WDATA_PARITY,
  input AXI_08_WLAST,
  input [31:0] AXI_08_WSTRB,
  input AXI_08_WVALID,
  input AXI_09_ACLK,
  input [36:0] AXI_09_ARADDR,
  input [1:0] AXI_09_ARBURST,
  input AXI_09_ARESET_N,
  input [5:0] AXI_09_ARID,
  input [3:0] AXI_09_ARLEN,
  input [2:0] AXI_09_ARSIZE,
  input AXI_09_ARVALID,
  input [36:0] AXI_09_AWADDR,
  input [1:0] AXI_09_AWBURST,
  input [5:0] AXI_09_AWID,
  input [3:0] AXI_09_AWLEN,
  input [2:0] AXI_09_AWSIZE,
  input AXI_09_AWVALID,
  input AXI_09_BREADY,
  input AXI_09_DFI_LP_PWR_X_REQ,
  input AXI_09_RREADY,
  input [255:0] AXI_09_WDATA,
  input [31:0] AXI_09_WDATA_PARITY,
  input AXI_09_WLAST,
  input [31:0] AXI_09_WSTRB,
  input AXI_09_WVALID,
  input AXI_10_ACLK,
  input [36:0] AXI_10_ARADDR,
  input [1:0] AXI_10_ARBURST,
  input AXI_10_ARESET_N,
  input [5:0] AXI_10_ARID,
  input [3:0] AXI_10_ARLEN,
  input [2:0] AXI_10_ARSIZE,
  input AXI_10_ARVALID,
  input [36:0] AXI_10_AWADDR,
  input [1:0] AXI_10_AWBURST,
  input [5:0] AXI_10_AWID,
  input [3:0] AXI_10_AWLEN,
  input [2:0] AXI_10_AWSIZE,
  input AXI_10_AWVALID,
  input AXI_10_BREADY,
  input AXI_10_DFI_LP_PWR_X_REQ,
  input AXI_10_RREADY,
  input [255:0] AXI_10_WDATA,
  input [31:0] AXI_10_WDATA_PARITY,
  input AXI_10_WLAST,
  input [31:0] AXI_10_WSTRB,
  input AXI_10_WVALID,
  input AXI_11_ACLK,
  input [36:0] AXI_11_ARADDR,
  input [1:0] AXI_11_ARBURST,
  input AXI_11_ARESET_N,
  input [5:0] AXI_11_ARID,
  input [3:0] AXI_11_ARLEN,
  input [2:0] AXI_11_ARSIZE,
  input AXI_11_ARVALID,
  input [36:0] AXI_11_AWADDR,
  input [1:0] AXI_11_AWBURST,
  input [5:0] AXI_11_AWID,
  input [3:0] AXI_11_AWLEN,
  input [2:0] AXI_11_AWSIZE,
  input AXI_11_AWVALID,
  input AXI_11_BREADY,
  input AXI_11_DFI_LP_PWR_X_REQ,
  input AXI_11_RREADY,
  input [255:0] AXI_11_WDATA,
  input [31:0] AXI_11_WDATA_PARITY,
  input AXI_11_WLAST,
  input [31:0] AXI_11_WSTRB,
  input AXI_11_WVALID,
  input AXI_12_ACLK,
  input [36:0] AXI_12_ARADDR,
  input [1:0] AXI_12_ARBURST,
  input AXI_12_ARESET_N,
  input [5:0] AXI_12_ARID,
  input [3:0] AXI_12_ARLEN,
  input [2:0] AXI_12_ARSIZE,
  input AXI_12_ARVALID,
  input [36:0] AXI_12_AWADDR,
  input [1:0] AXI_12_AWBURST,
  input [5:0] AXI_12_AWID,
  input [3:0] AXI_12_AWLEN,
  input [2:0] AXI_12_AWSIZE,
  input AXI_12_AWVALID,
  input AXI_12_BREADY,
  input AXI_12_DFI_LP_PWR_X_REQ,
  input AXI_12_RREADY,
  input [255:0] AXI_12_WDATA,
  input [31:0] AXI_12_WDATA_PARITY,
  input AXI_12_WLAST,
  input [31:0] AXI_12_WSTRB,
  input AXI_12_WVALID,
  input AXI_13_ACLK,
  input [36:0] AXI_13_ARADDR,
  input [1:0] AXI_13_ARBURST,
  input AXI_13_ARESET_N,
  input [5:0] AXI_13_ARID,
  input [3:0] AXI_13_ARLEN,
  input [2:0] AXI_13_ARSIZE,
  input AXI_13_ARVALID,
  input [36:0] AXI_13_AWADDR,
  input [1:0] AXI_13_AWBURST,
  input [5:0] AXI_13_AWID,
  input [3:0] AXI_13_AWLEN,
  input [2:0] AXI_13_AWSIZE,
  input AXI_13_AWVALID,
  input AXI_13_BREADY,
  input AXI_13_DFI_LP_PWR_X_REQ,
  input AXI_13_RREADY,
  input [255:0] AXI_13_WDATA,
  input [31:0] AXI_13_WDATA_PARITY,
  input AXI_13_WLAST,
  input [31:0] AXI_13_WSTRB,
  input AXI_13_WVALID,
  input AXI_14_ACLK,
  input [36:0] AXI_14_ARADDR,
  input [1:0] AXI_14_ARBURST,
  input AXI_14_ARESET_N,
  input [5:0] AXI_14_ARID,
  input [3:0] AXI_14_ARLEN,
  input [2:0] AXI_14_ARSIZE,
  input AXI_14_ARVALID,
  input [36:0] AXI_14_AWADDR,
  input [1:0] AXI_14_AWBURST,
  input [5:0] AXI_14_AWID,
  input [3:0] AXI_14_AWLEN,
  input [2:0] AXI_14_AWSIZE,
  input AXI_14_AWVALID,
  input AXI_14_BREADY,
  input AXI_14_DFI_LP_PWR_X_REQ,
  input AXI_14_RREADY,
  input [255:0] AXI_14_WDATA,
  input [31:0] AXI_14_WDATA_PARITY,
  input AXI_14_WLAST,
  input [31:0] AXI_14_WSTRB,
  input AXI_14_WVALID,
  input AXI_15_ACLK,
  input [36:0] AXI_15_ARADDR,
  input [1:0] AXI_15_ARBURST,
  input AXI_15_ARESET_N,
  input [5:0] AXI_15_ARID,
  input [3:0] AXI_15_ARLEN,
  input [2:0] AXI_15_ARSIZE,
  input AXI_15_ARVALID,
  input [36:0] AXI_15_AWADDR,
  input [1:0] AXI_15_AWBURST,
  input [5:0] AXI_15_AWID,
  input [3:0] AXI_15_AWLEN,
  input [2:0] AXI_15_AWSIZE,
  input AXI_15_AWVALID,
  input AXI_15_BREADY,
  input AXI_15_DFI_LP_PWR_X_REQ,
  input AXI_15_RREADY,
  input [255:0] AXI_15_WDATA,
  input [31:0] AXI_15_WDATA_PARITY,
  input AXI_15_WLAST,
  input [31:0] AXI_15_WSTRB,
  input AXI_15_WVALID,
  input BSCAN_DRCK,
  input BSCAN_TCK,
  input HBM_REF_CLK,
  input MBIST_EN_00,
  input MBIST_EN_01,
  input MBIST_EN_02,
  input MBIST_EN_03,
  input MBIST_EN_04,
  input MBIST_EN_05,
  input MBIST_EN_06,
  input MBIST_EN_07
);
endmodule


module HBM_REF_CLK
(
  input REF_CLK
);
endmodule


module HBM_SNGLBLI_INTF_APB #(
  parameter CLK_SEL = "FALSE",
  parameter [0:0] IS_PCLK_INVERTED = 1'b0,
  parameter [0:0] IS_PRESET_N_INVERTED = 1'b0,
  parameter MC_ENABLE = "FALSE",
  parameter PHY_ENABLE = "FALSE",
  parameter PHY_PCLK_INVERT = "FALSE",
  parameter SWITCH_ENABLE = "FALSE"
)(
  output CATTRIP_PIPE,
  output [31:0] PRDATA_PIPE,
  output PREADY_PIPE,
  output PSLVERR_PIPE,
  output [2:0] TEMP_PIPE,

  input [21:0] PADDR,
  input PCLK,
  input PENABLE,
  input PRESET_N,
  input PSEL,
  input [31:0] PWDATA,
  input PWRITE
);
endmodule


module HBM_SNGLBLI_INTF_AXI #(
  parameter CLK_SEL = "FALSE",
  parameter integer DATARATE = 1800,
  parameter [0:0] IS_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_ARESET_N_INVERTED = 1'b0,
  parameter MC_ENABLE = "FALSE",
  parameter integer PAGEHIT_PERCENT = 75,
  parameter PHY_ENABLE = "FALSE",
  parameter integer READ_PERCENT = 50,
  parameter SWITCH_ENABLE = "FALSE",
  parameter integer WRITE_PERCENT = 50
)(
  output ARREADY_PIPE,
  output AWREADY_PIPE,
  output [5:0] BID_PIPE,
  output [1:0] BRESP_PIPE,
  output BVALID_PIPE,
  output [1:0] DFI_AW_AERR_N_PIPE,
  output DFI_CLK_BUF,
  output DFI_CTRLUPD_ACK_PIPE,
  output [7:0] DFI_DBI_BYTE_DISABLE_PIPE,
  output [20:0] DFI_DW_RDDATA_DBI_PIPE,
  output [7:0] DFI_DW_RDDATA_DERR_PIPE,
  output [1:0] DFI_DW_RDDATA_PAR_VALID_PIPE,
  output [1:0] DFI_DW_RDDATA_VALID_PIPE,
  output DFI_INIT_COMPLETE_PIPE,
  output DFI_PHYUPD_REQ_PIPE,
  output DFI_PHYUPD_TYPE_PIPE,
  output DFI_PHY_LP_STATE_PIPE,
  output DFI_RST_N_BUF,
  output [5:0] MC_STATUS,
  output [7:0] PHY_STATUS,
  output [31:0] RDATA_PARITY_PIPE,
  output [255:0] RDATA_PIPE,
  output [5:0] RID_PIPE,
  output RLAST_PIPE,
  output [1:0] RRESP_PIPE,
  output RVALID_PIPE,
  output [5:0] STATUS,
  output WREADY_PIPE,

  input ACLK,
  input [36:0] ARADDR,
  input [1:0] ARBURST,
  input ARESET_N,
  input [5:0] ARID,
  input [3:0] ARLEN,
  input [2:0] ARSIZE,
  input ARVALID,
  input [36:0] AWADDR,
  input [1:0] AWBURST,
  input [5:0] AWID,
  input [3:0] AWLEN,
  input [2:0] AWSIZE,
  input AWVALID,
  input BREADY,
  input BSCAN_CK,
  input DFI_LP_PWR_X_REQ,
  input MBIST_EN,
  input RREADY,
  input [255:0] WDATA,
  input [31:0] WDATA_PARITY,
  input WLAST,
  input [31:0] WSTRB,
  input WVALID
);
endmodule


module HBM_TWO_STACK_INTF #(
  parameter CLK_SEL_00 = "FALSE",
  parameter CLK_SEL_01 = "FALSE",
  parameter CLK_SEL_02 = "FALSE",
  parameter CLK_SEL_03 = "FALSE",
  parameter CLK_SEL_04 = "FALSE",
  parameter CLK_SEL_05 = "FALSE",
  parameter CLK_SEL_06 = "FALSE",
  parameter CLK_SEL_07 = "FALSE",
  parameter CLK_SEL_08 = "FALSE",
  parameter CLK_SEL_09 = "FALSE",
  parameter CLK_SEL_10 = "FALSE",
  parameter CLK_SEL_11 = "FALSE",
  parameter CLK_SEL_12 = "FALSE",
  parameter CLK_SEL_13 = "FALSE",
  parameter CLK_SEL_14 = "FALSE",
  parameter CLK_SEL_15 = "FALSE",
  parameter CLK_SEL_16 = "FALSE",
  parameter CLK_SEL_17 = "FALSE",
  parameter CLK_SEL_18 = "FALSE",
  parameter CLK_SEL_19 = "FALSE",
  parameter CLK_SEL_20 = "FALSE",
  parameter CLK_SEL_21 = "FALSE",
  parameter CLK_SEL_22 = "FALSE",
  parameter CLK_SEL_23 = "FALSE",
  parameter CLK_SEL_24 = "FALSE",
  parameter CLK_SEL_25 = "FALSE",
  parameter CLK_SEL_26 = "FALSE",
  parameter CLK_SEL_27 = "FALSE",
  parameter CLK_SEL_28 = "FALSE",
  parameter CLK_SEL_29 = "FALSE",
  parameter CLK_SEL_30 = "FALSE",
  parameter CLK_SEL_31 = "FALSE",
  parameter integer DATARATE_00 = 1800,
  parameter integer DATARATE_01 = 1800,
  parameter integer DATARATE_02 = 1800,
  parameter integer DATARATE_03 = 1800,
  parameter integer DATARATE_04 = 1800,
  parameter integer DATARATE_05 = 1800,
  parameter integer DATARATE_06 = 1800,
  parameter integer DATARATE_07 = 1800,
  parameter integer DATARATE_08 = 1800,
  parameter integer DATARATE_09 = 1800,
  parameter integer DATARATE_10 = 1800,
  parameter integer DATARATE_11 = 1800,
  parameter integer DATARATE_12 = 1800,
  parameter integer DATARATE_13 = 1800,
  parameter integer DATARATE_14 = 1800,
  parameter integer DATARATE_15 = 1800,
  parameter DA_LOCKOUT_0 = "FALSE",
  parameter DA_LOCKOUT_1 = "FALSE",
  parameter [0:0] IS_APB_0_PCLK_INVERTED = 1'b0,
  parameter [0:0] IS_APB_0_PRESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_APB_1_PCLK_INVERTED = 1'b0,
  parameter [0:0] IS_APB_1_PRESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_00_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_00_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_01_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_01_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_02_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_02_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_03_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_03_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_04_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_04_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_05_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_05_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_06_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_06_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_07_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_07_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_08_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_08_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_09_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_09_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_10_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_10_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_11_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_11_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_12_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_12_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_13_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_13_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_14_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_14_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_15_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_15_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_16_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_16_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_17_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_17_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_18_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_18_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_19_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_19_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_20_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_20_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_21_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_21_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_22_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_22_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_23_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_23_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_24_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_24_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_25_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_25_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_26_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_26_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_27_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_27_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_28_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_28_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_29_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_29_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_30_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_30_ARESET_N_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_31_ACLK_INVERTED = 1'b0,
  parameter [0:0] IS_AXI_31_ARESET_N_INVERTED = 1'b0,
  parameter MC_ENABLE_00 = "FALSE",
  parameter MC_ENABLE_01 = "FALSE",
  parameter MC_ENABLE_02 = "FALSE",
  parameter MC_ENABLE_03 = "FALSE",
  parameter MC_ENABLE_04 = "FALSE",
  parameter MC_ENABLE_05 = "FALSE",
  parameter MC_ENABLE_06 = "FALSE",
  parameter MC_ENABLE_07 = "FALSE",
  parameter MC_ENABLE_08 = "FALSE",
  parameter MC_ENABLE_09 = "FALSE",
  parameter MC_ENABLE_10 = "FALSE",
  parameter MC_ENABLE_11 = "FALSE",
  parameter MC_ENABLE_12 = "FALSE",
  parameter MC_ENABLE_13 = "FALSE",
  parameter MC_ENABLE_14 = "FALSE",
  parameter MC_ENABLE_15 = "FALSE",
  parameter MC_ENABLE_APB_00 = "FALSE",
  parameter MC_ENABLE_APB_01 = "FALSE",
  parameter integer PAGEHIT_PERCENT_00 = 75,
  parameter integer PAGEHIT_PERCENT_01 = 75,
  parameter PHY_ENABLE_00 = "FALSE",
  parameter PHY_ENABLE_01 = "FALSE",
  parameter PHY_ENABLE_02 = "FALSE",
  parameter PHY_ENABLE_03 = "FALSE",
  parameter PHY_ENABLE_04 = "FALSE",
  parameter PHY_ENABLE_05 = "FALSE",
  parameter PHY_ENABLE_06 = "FALSE",
  parameter PHY_ENABLE_07 = "FALSE",
  parameter PHY_ENABLE_08 = "FALSE",
  parameter PHY_ENABLE_09 = "FALSE",
  parameter PHY_ENABLE_10 = "FALSE",
  parameter PHY_ENABLE_11 = "FALSE",
  parameter PHY_ENABLE_12 = "FALSE",
  parameter PHY_ENABLE_13 = "FALSE",
  parameter PHY_ENABLE_14 = "FALSE",
  parameter PHY_ENABLE_15 = "FALSE",
  parameter PHY_ENABLE_16 = "FALSE",
  parameter PHY_ENABLE_17 = "FALSE",
  parameter PHY_ENABLE_18 = "FALSE",
  parameter PHY_ENABLE_19 = "FALSE",
  parameter PHY_ENABLE_20 = "FALSE",
  parameter PHY_ENABLE_21 = "FALSE",
  parameter PHY_ENABLE_22 = "FALSE",
  parameter PHY_ENABLE_23 = "FALSE",
  parameter PHY_ENABLE_24 = "FALSE",
  parameter PHY_ENABLE_25 = "FALSE",
  parameter PHY_ENABLE_26 = "FALSE",
  parameter PHY_ENABLE_27 = "FALSE",
  parameter PHY_ENABLE_28 = "FALSE",
  parameter PHY_ENABLE_29 = "FALSE",
  parameter PHY_ENABLE_30 = "FALSE",
  parameter PHY_ENABLE_31 = "FALSE",
  parameter PHY_ENABLE_APB_00 = "FALSE",
  parameter PHY_ENABLE_APB_01 = "FALSE",
  parameter PHY_PCLK_INVERT_01 = "FALSE",
  parameter PHY_PCLK_INVERT_02 = "FALSE",
  parameter integer READ_PERCENT_00 = 50,
  parameter integer READ_PERCENT_01 = 50,
  parameter integer READ_PERCENT_02 = 50,
  parameter integer READ_PERCENT_03 = 50,
  parameter integer READ_PERCENT_04 = 50,
  parameter integer READ_PERCENT_05 = 50,
  parameter integer READ_PERCENT_06 = 50,
  parameter integer READ_PERCENT_07 = 50,
  parameter integer READ_PERCENT_08 = 50,
  parameter integer READ_PERCENT_09 = 50,
  parameter integer READ_PERCENT_10 = 50,
  parameter integer READ_PERCENT_11 = 50,
  parameter integer READ_PERCENT_12 = 50,
  parameter integer READ_PERCENT_13 = 50,
  parameter integer READ_PERCENT_14 = 50,
  parameter integer READ_PERCENT_15 = 50,
  parameter integer READ_PERCENT_16 = 50,
  parameter integer READ_PERCENT_17 = 50,
  parameter integer READ_PERCENT_18 = 50,
  parameter integer READ_PERCENT_19 = 50,
  parameter integer READ_PERCENT_20 = 50,
  parameter integer READ_PERCENT_21 = 50,
  parameter integer READ_PERCENT_22 = 50,
  parameter integer READ_PERCENT_23 = 50,
  parameter integer READ_PERCENT_24 = 50,
  parameter integer READ_PERCENT_25 = 50,
  parameter integer READ_PERCENT_26 = 50,
  parameter integer READ_PERCENT_27 = 50,
  parameter integer READ_PERCENT_28 = 50,
  parameter integer READ_PERCENT_29 = 50,
  parameter integer READ_PERCENT_30 = 50,
  parameter integer READ_PERCENT_31 = 50,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter SWITCH_ENABLE_00 = "FALSE",
  parameter SWITCH_ENABLE_01 = "FALSE",
  parameter integer WRITE_PERCENT_00 = 50,
  parameter integer WRITE_PERCENT_01 = 50,
  parameter integer WRITE_PERCENT_02 = 50,
  parameter integer WRITE_PERCENT_03 = 50,
  parameter integer WRITE_PERCENT_04 = 50,
  parameter integer WRITE_PERCENT_05 = 50,
  parameter integer WRITE_PERCENT_06 = 50,
  parameter integer WRITE_PERCENT_07 = 50,
  parameter integer WRITE_PERCENT_08 = 50,
  parameter integer WRITE_PERCENT_09 = 50,
  parameter integer WRITE_PERCENT_10 = 50,
  parameter integer WRITE_PERCENT_11 = 50,
  parameter integer WRITE_PERCENT_12 = 50,
  parameter integer WRITE_PERCENT_13 = 50,
  parameter integer WRITE_PERCENT_14 = 50,
  parameter integer WRITE_PERCENT_15 = 50,
  parameter integer WRITE_PERCENT_16 = 50,
  parameter integer WRITE_PERCENT_17 = 50,
  parameter integer WRITE_PERCENT_18 = 50,
  parameter integer WRITE_PERCENT_19 = 50,
  parameter integer WRITE_PERCENT_20 = 50,
  parameter integer WRITE_PERCENT_21 = 50,
  parameter integer WRITE_PERCENT_22 = 50,
  parameter integer WRITE_PERCENT_23 = 50,
  parameter integer WRITE_PERCENT_24 = 50,
  parameter integer WRITE_PERCENT_25 = 50,
  parameter integer WRITE_PERCENT_26 = 50,
  parameter integer WRITE_PERCENT_27 = 50,
  parameter integer WRITE_PERCENT_28 = 50,
  parameter integer WRITE_PERCENT_29 = 50,
  parameter integer WRITE_PERCENT_30 = 50,
  parameter integer WRITE_PERCENT_31 = 50
)(
  output [31:0] APB_0_PRDATA,
  output APB_0_PREADY,
  output APB_0_PSLVERR,
  output [31:0] APB_1_PRDATA,
  output APB_1_PREADY,
  output APB_1_PSLVERR,
  output AXI_00_ARREADY,
  output AXI_00_AWREADY,
  output [5:0] AXI_00_BID,
  output [1:0] AXI_00_BRESP,
  output AXI_00_BVALID,
  output [1:0] AXI_00_DFI_AW_AERR_N,
  output AXI_00_DFI_CLK_BUF,
  output [7:0] AXI_00_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_00_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_00_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_00_DFI_DW_RDDATA_VALID,
  output AXI_00_DFI_INIT_COMPLETE,
  output AXI_00_DFI_PHYUPD_REQ,
  output AXI_00_DFI_PHY_LP_STATE,
  output AXI_00_DFI_RST_N_BUF,
  output [5:0] AXI_00_MC_STATUS,
  output [7:0] AXI_00_PHY_STATUS,
  output [255:0] AXI_00_RDATA,
  output [31:0] AXI_00_RDATA_PARITY,
  output [5:0] AXI_00_RID,
  output AXI_00_RLAST,
  output [1:0] AXI_00_RRESP,
  output AXI_00_RVALID,
  output AXI_00_WREADY,
  output AXI_01_ARREADY,
  output AXI_01_AWREADY,
  output [5:0] AXI_01_BID,
  output [1:0] AXI_01_BRESP,
  output AXI_01_BVALID,
  output [1:0] AXI_01_DFI_AW_AERR_N,
  output AXI_01_DFI_CLK_BUF,
  output [7:0] AXI_01_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_01_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_01_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_01_DFI_DW_RDDATA_VALID,
  output AXI_01_DFI_INIT_COMPLETE,
  output AXI_01_DFI_PHYUPD_REQ,
  output AXI_01_DFI_PHY_LP_STATE,
  output AXI_01_DFI_RST_N_BUF,
  output [255:0] AXI_01_RDATA,
  output [31:0] AXI_01_RDATA_PARITY,
  output [5:0] AXI_01_RID,
  output AXI_01_RLAST,
  output [1:0] AXI_01_RRESP,
  output AXI_01_RVALID,
  output AXI_01_WREADY,
  output AXI_02_ARREADY,
  output AXI_02_AWREADY,
  output [5:0] AXI_02_BID,
  output [1:0] AXI_02_BRESP,
  output AXI_02_BVALID,
  output [1:0] AXI_02_DFI_AW_AERR_N,
  output AXI_02_DFI_CLK_BUF,
  output [7:0] AXI_02_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_02_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_02_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_02_DFI_DW_RDDATA_VALID,
  output AXI_02_DFI_INIT_COMPLETE,
  output AXI_02_DFI_PHYUPD_REQ,
  output AXI_02_DFI_PHY_LP_STATE,
  output AXI_02_DFI_RST_N_BUF,
  output [5:0] AXI_02_MC_STATUS,
  output [7:0] AXI_02_PHY_STATUS,
  output [255:0] AXI_02_RDATA,
  output [31:0] AXI_02_RDATA_PARITY,
  output [5:0] AXI_02_RID,
  output AXI_02_RLAST,
  output [1:0] AXI_02_RRESP,
  output AXI_02_RVALID,
  output AXI_02_WREADY,
  output AXI_03_ARREADY,
  output AXI_03_AWREADY,
  output [5:0] AXI_03_BID,
  output [1:0] AXI_03_BRESP,
  output AXI_03_BVALID,
  output [1:0] AXI_03_DFI_AW_AERR_N,
  output AXI_03_DFI_CLK_BUF,
  output [7:0] AXI_03_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_03_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_03_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_03_DFI_DW_RDDATA_VALID,
  output AXI_03_DFI_INIT_COMPLETE,
  output AXI_03_DFI_PHYUPD_REQ,
  output AXI_03_DFI_PHY_LP_STATE,
  output AXI_03_DFI_RST_N_BUF,
  output [255:0] AXI_03_RDATA,
  output [31:0] AXI_03_RDATA_PARITY,
  output [5:0] AXI_03_RID,
  output AXI_03_RLAST,
  output [1:0] AXI_03_RRESP,
  output AXI_03_RVALID,
  output AXI_03_WREADY,
  output AXI_04_ARREADY,
  output AXI_04_AWREADY,
  output [5:0] AXI_04_BID,
  output [1:0] AXI_04_BRESP,
  output AXI_04_BVALID,
  output [1:0] AXI_04_DFI_AW_AERR_N,
  output AXI_04_DFI_CLK_BUF,
  output [7:0] AXI_04_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_04_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_04_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_04_DFI_DW_RDDATA_VALID,
  output AXI_04_DFI_INIT_COMPLETE,
  output AXI_04_DFI_PHYUPD_REQ,
  output AXI_04_DFI_PHY_LP_STATE,
  output AXI_04_DFI_RST_N_BUF,
  output [5:0] AXI_04_MC_STATUS,
  output [7:0] AXI_04_PHY_STATUS,
  output [255:0] AXI_04_RDATA,
  output [31:0] AXI_04_RDATA_PARITY,
  output [5:0] AXI_04_RID,
  output AXI_04_RLAST,
  output [1:0] AXI_04_RRESP,
  output AXI_04_RVALID,
  output AXI_04_WREADY,
  output AXI_05_ARREADY,
  output AXI_05_AWREADY,
  output [5:0] AXI_05_BID,
  output [1:0] AXI_05_BRESP,
  output AXI_05_BVALID,
  output [1:0] AXI_05_DFI_AW_AERR_N,
  output AXI_05_DFI_CLK_BUF,
  output [7:0] AXI_05_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_05_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_05_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_05_DFI_DW_RDDATA_VALID,
  output AXI_05_DFI_INIT_COMPLETE,
  output AXI_05_DFI_PHYUPD_REQ,
  output AXI_05_DFI_PHY_LP_STATE,
  output AXI_05_DFI_RST_N_BUF,
  output [255:0] AXI_05_RDATA,
  output [31:0] AXI_05_RDATA_PARITY,
  output [5:0] AXI_05_RID,
  output AXI_05_RLAST,
  output [1:0] AXI_05_RRESP,
  output AXI_05_RVALID,
  output AXI_05_WREADY,
  output AXI_06_ARREADY,
  output AXI_06_AWREADY,
  output [5:0] AXI_06_BID,
  output [1:0] AXI_06_BRESP,
  output AXI_06_BVALID,
  output [1:0] AXI_06_DFI_AW_AERR_N,
  output AXI_06_DFI_CLK_BUF,
  output [7:0] AXI_06_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_06_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_06_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_06_DFI_DW_RDDATA_VALID,
  output AXI_06_DFI_INIT_COMPLETE,
  output AXI_06_DFI_PHYUPD_REQ,
  output AXI_06_DFI_PHY_LP_STATE,
  output AXI_06_DFI_RST_N_BUF,
  output [5:0] AXI_06_MC_STATUS,
  output [7:0] AXI_06_PHY_STATUS,
  output [255:0] AXI_06_RDATA,
  output [31:0] AXI_06_RDATA_PARITY,
  output [5:0] AXI_06_RID,
  output AXI_06_RLAST,
  output [1:0] AXI_06_RRESP,
  output AXI_06_RVALID,
  output AXI_06_WREADY,
  output AXI_07_ARREADY,
  output AXI_07_AWREADY,
  output [5:0] AXI_07_BID,
  output [1:0] AXI_07_BRESP,
  output AXI_07_BVALID,
  output [1:0] AXI_07_DFI_AW_AERR_N,
  output AXI_07_DFI_CLK_BUF,
  output [7:0] AXI_07_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_07_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_07_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_07_DFI_DW_RDDATA_VALID,
  output AXI_07_DFI_INIT_COMPLETE,
  output AXI_07_DFI_PHYUPD_REQ,
  output AXI_07_DFI_PHY_LP_STATE,
  output AXI_07_DFI_RST_N_BUF,
  output [255:0] AXI_07_RDATA,
  output [31:0] AXI_07_RDATA_PARITY,
  output [5:0] AXI_07_RID,
  output AXI_07_RLAST,
  output [1:0] AXI_07_RRESP,
  output AXI_07_RVALID,
  output AXI_07_WREADY,
  output AXI_08_ARREADY,
  output AXI_08_AWREADY,
  output [5:0] AXI_08_BID,
  output [1:0] AXI_08_BRESP,
  output AXI_08_BVALID,
  output [1:0] AXI_08_DFI_AW_AERR_N,
  output AXI_08_DFI_CLK_BUF,
  output [7:0] AXI_08_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_08_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_08_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_08_DFI_DW_RDDATA_VALID,
  output AXI_08_DFI_INIT_COMPLETE,
  output AXI_08_DFI_PHYUPD_REQ,
  output AXI_08_DFI_PHY_LP_STATE,
  output AXI_08_DFI_RST_N_BUF,
  output [5:0] AXI_08_MC_STATUS,
  output [7:0] AXI_08_PHY_STATUS,
  output [255:0] AXI_08_RDATA,
  output [31:0] AXI_08_RDATA_PARITY,
  output [5:0] AXI_08_RID,
  output AXI_08_RLAST,
  output [1:0] AXI_08_RRESP,
  output AXI_08_RVALID,
  output AXI_08_WREADY,
  output AXI_09_ARREADY,
  output AXI_09_AWREADY,
  output [5:0] AXI_09_BID,
  output [1:0] AXI_09_BRESP,
  output AXI_09_BVALID,
  output [1:0] AXI_09_DFI_AW_AERR_N,
  output AXI_09_DFI_CLK_BUF,
  output [7:0] AXI_09_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_09_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_09_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_09_DFI_DW_RDDATA_VALID,
  output AXI_09_DFI_INIT_COMPLETE,
  output AXI_09_DFI_PHYUPD_REQ,
  output AXI_09_DFI_PHY_LP_STATE,
  output AXI_09_DFI_RST_N_BUF,
  output [255:0] AXI_09_RDATA,
  output [31:0] AXI_09_RDATA_PARITY,
  output [5:0] AXI_09_RID,
  output AXI_09_RLAST,
  output [1:0] AXI_09_RRESP,
  output AXI_09_RVALID,
  output AXI_09_WREADY,
  output AXI_10_ARREADY,
  output AXI_10_AWREADY,
  output [5:0] AXI_10_BID,
  output [1:0] AXI_10_BRESP,
  output AXI_10_BVALID,
  output [1:0] AXI_10_DFI_AW_AERR_N,
  output AXI_10_DFI_CLK_BUF,
  output [7:0] AXI_10_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_10_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_10_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_10_DFI_DW_RDDATA_VALID,
  output AXI_10_DFI_INIT_COMPLETE,
  output AXI_10_DFI_PHYUPD_REQ,
  output AXI_10_DFI_PHY_LP_STATE,
  output AXI_10_DFI_RST_N_BUF,
  output [5:0] AXI_10_MC_STATUS,
  output [7:0] AXI_10_PHY_STATUS,
  output [255:0] AXI_10_RDATA,
  output [31:0] AXI_10_RDATA_PARITY,
  output [5:0] AXI_10_RID,
  output AXI_10_RLAST,
  output [1:0] AXI_10_RRESP,
  output AXI_10_RVALID,
  output AXI_10_WREADY,
  output AXI_11_ARREADY,
  output AXI_11_AWREADY,
  output [5:0] AXI_11_BID,
  output [1:0] AXI_11_BRESP,
  output AXI_11_BVALID,
  output [1:0] AXI_11_DFI_AW_AERR_N,
  output AXI_11_DFI_CLK_BUF,
  output [7:0] AXI_11_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_11_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_11_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_11_DFI_DW_RDDATA_VALID,
  output AXI_11_DFI_INIT_COMPLETE,
  output AXI_11_DFI_PHYUPD_REQ,
  output AXI_11_DFI_PHY_LP_STATE,
  output AXI_11_DFI_RST_N_BUF,
  output [255:0] AXI_11_RDATA,
  output [31:0] AXI_11_RDATA_PARITY,
  output [5:0] AXI_11_RID,
  output AXI_11_RLAST,
  output [1:0] AXI_11_RRESP,
  output AXI_11_RVALID,
  output AXI_11_WREADY,
  output AXI_12_ARREADY,
  output AXI_12_AWREADY,
  output [5:0] AXI_12_BID,
  output [1:0] AXI_12_BRESP,
  output AXI_12_BVALID,
  output [1:0] AXI_12_DFI_AW_AERR_N,
  output AXI_12_DFI_CLK_BUF,
  output [7:0] AXI_12_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_12_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_12_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_12_DFI_DW_RDDATA_VALID,
  output AXI_12_DFI_INIT_COMPLETE,
  output AXI_12_DFI_PHYUPD_REQ,
  output AXI_12_DFI_PHY_LP_STATE,
  output AXI_12_DFI_RST_N_BUF,
  output [5:0] AXI_12_MC_STATUS,
  output [7:0] AXI_12_PHY_STATUS,
  output [255:0] AXI_12_RDATA,
  output [31:0] AXI_12_RDATA_PARITY,
  output [5:0] AXI_12_RID,
  output AXI_12_RLAST,
  output [1:0] AXI_12_RRESP,
  output AXI_12_RVALID,
  output AXI_12_WREADY,
  output AXI_13_ARREADY,
  output AXI_13_AWREADY,
  output [5:0] AXI_13_BID,
  output [1:0] AXI_13_BRESP,
  output AXI_13_BVALID,
  output [1:0] AXI_13_DFI_AW_AERR_N,
  output AXI_13_DFI_CLK_BUF,
  output [7:0] AXI_13_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_13_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_13_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_13_DFI_DW_RDDATA_VALID,
  output AXI_13_DFI_INIT_COMPLETE,
  output AXI_13_DFI_PHYUPD_REQ,
  output AXI_13_DFI_PHY_LP_STATE,
  output AXI_13_DFI_RST_N_BUF,
  output [255:0] AXI_13_RDATA,
  output [31:0] AXI_13_RDATA_PARITY,
  output [5:0] AXI_13_RID,
  output AXI_13_RLAST,
  output [1:0] AXI_13_RRESP,
  output AXI_13_RVALID,
  output AXI_13_WREADY,
  output AXI_14_ARREADY,
  output AXI_14_AWREADY,
  output [5:0] AXI_14_BID,
  output [1:0] AXI_14_BRESP,
  output AXI_14_BVALID,
  output [1:0] AXI_14_DFI_AW_AERR_N,
  output AXI_14_DFI_CLK_BUF,
  output [7:0] AXI_14_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_14_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_14_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_14_DFI_DW_RDDATA_VALID,
  output AXI_14_DFI_INIT_COMPLETE,
  output AXI_14_DFI_PHYUPD_REQ,
  output AXI_14_DFI_PHY_LP_STATE,
  output AXI_14_DFI_RST_N_BUF,
  output [5:0] AXI_14_MC_STATUS,
  output [7:0] AXI_14_PHY_STATUS,
  output [255:0] AXI_14_RDATA,
  output [31:0] AXI_14_RDATA_PARITY,
  output [5:0] AXI_14_RID,
  output AXI_14_RLAST,
  output [1:0] AXI_14_RRESP,
  output AXI_14_RVALID,
  output AXI_14_WREADY,
  output AXI_15_ARREADY,
  output AXI_15_AWREADY,
  output [5:0] AXI_15_BID,
  output [1:0] AXI_15_BRESP,
  output AXI_15_BVALID,
  output [1:0] AXI_15_DFI_AW_AERR_N,
  output AXI_15_DFI_CLK_BUF,
  output [7:0] AXI_15_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_15_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_15_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_15_DFI_DW_RDDATA_VALID,
  output AXI_15_DFI_INIT_COMPLETE,
  output AXI_15_DFI_PHYUPD_REQ,
  output AXI_15_DFI_PHY_LP_STATE,
  output AXI_15_DFI_RST_N_BUF,
  output [255:0] AXI_15_RDATA,
  output [31:0] AXI_15_RDATA_PARITY,
  output [5:0] AXI_15_RID,
  output AXI_15_RLAST,
  output [1:0] AXI_15_RRESP,
  output AXI_15_RVALID,
  output AXI_15_WREADY,
  output AXI_16_ARREADY,
  output AXI_16_AWREADY,
  output [5:0] AXI_16_BID,
  output [1:0] AXI_16_BRESP,
  output AXI_16_BVALID,
  output [1:0] AXI_16_DFI_AW_AERR_N,
  output AXI_16_DFI_CLK_BUF,
  output [7:0] AXI_16_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_16_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_16_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_16_DFI_DW_RDDATA_VALID,
  output AXI_16_DFI_INIT_COMPLETE,
  output AXI_16_DFI_PHYUPD_REQ,
  output AXI_16_DFI_PHY_LP_STATE,
  output AXI_16_DFI_RST_N_BUF,
  output [5:0] AXI_16_MC_STATUS,
  output [7:0] AXI_16_PHY_STATUS,
  output [255:0] AXI_16_RDATA,
  output [31:0] AXI_16_RDATA_PARITY,
  output [5:0] AXI_16_RID,
  output AXI_16_RLAST,
  output [1:0] AXI_16_RRESP,
  output AXI_16_RVALID,
  output AXI_16_WREADY,
  output AXI_17_ARREADY,
  output AXI_17_AWREADY,
  output [5:0] AXI_17_BID,
  output [1:0] AXI_17_BRESP,
  output AXI_17_BVALID,
  output [1:0] AXI_17_DFI_AW_AERR_N,
  output AXI_17_DFI_CLK_BUF,
  output [7:0] AXI_17_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_17_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_17_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_17_DFI_DW_RDDATA_VALID,
  output AXI_17_DFI_INIT_COMPLETE,
  output AXI_17_DFI_PHYUPD_REQ,
  output AXI_17_DFI_PHY_LP_STATE,
  output AXI_17_DFI_RST_N_BUF,
  output [255:0] AXI_17_RDATA,
  output [31:0] AXI_17_RDATA_PARITY,
  output [5:0] AXI_17_RID,
  output AXI_17_RLAST,
  output [1:0] AXI_17_RRESP,
  output AXI_17_RVALID,
  output AXI_17_WREADY,
  output AXI_18_ARREADY,
  output AXI_18_AWREADY,
  output [5:0] AXI_18_BID,
  output [1:0] AXI_18_BRESP,
  output AXI_18_BVALID,
  output [1:0] AXI_18_DFI_AW_AERR_N,
  output AXI_18_DFI_CLK_BUF,
  output [7:0] AXI_18_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_18_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_18_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_18_DFI_DW_RDDATA_VALID,
  output AXI_18_DFI_INIT_COMPLETE,
  output AXI_18_DFI_PHYUPD_REQ,
  output AXI_18_DFI_PHY_LP_STATE,
  output AXI_18_DFI_RST_N_BUF,
  output [5:0] AXI_18_MC_STATUS,
  output [7:0] AXI_18_PHY_STATUS,
  output [255:0] AXI_18_RDATA,
  output [31:0] AXI_18_RDATA_PARITY,
  output [5:0] AXI_18_RID,
  output AXI_18_RLAST,
  output [1:0] AXI_18_RRESP,
  output AXI_18_RVALID,
  output AXI_18_WREADY,
  output AXI_19_ARREADY,
  output AXI_19_AWREADY,
  output [5:0] AXI_19_BID,
  output [1:0] AXI_19_BRESP,
  output AXI_19_BVALID,
  output [1:0] AXI_19_DFI_AW_AERR_N,
  output AXI_19_DFI_CLK_BUF,
  output [7:0] AXI_19_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_19_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_19_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_19_DFI_DW_RDDATA_VALID,
  output AXI_19_DFI_INIT_COMPLETE,
  output AXI_19_DFI_PHYUPD_REQ,
  output AXI_19_DFI_PHY_LP_STATE,
  output AXI_19_DFI_RST_N_BUF,
  output [255:0] AXI_19_RDATA,
  output [31:0] AXI_19_RDATA_PARITY,
  output [5:0] AXI_19_RID,
  output AXI_19_RLAST,
  output [1:0] AXI_19_RRESP,
  output AXI_19_RVALID,
  output AXI_19_WREADY,
  output AXI_20_ARREADY,
  output AXI_20_AWREADY,
  output [5:0] AXI_20_BID,
  output [1:0] AXI_20_BRESP,
  output AXI_20_BVALID,
  output [1:0] AXI_20_DFI_AW_AERR_N,
  output AXI_20_DFI_CLK_BUF,
  output [7:0] AXI_20_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_20_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_20_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_20_DFI_DW_RDDATA_VALID,
  output AXI_20_DFI_INIT_COMPLETE,
  output AXI_20_DFI_PHYUPD_REQ,
  output AXI_20_DFI_PHY_LP_STATE,
  output AXI_20_DFI_RST_N_BUF,
  output [5:0] AXI_20_MC_STATUS,
  output [7:0] AXI_20_PHY_STATUS,
  output [255:0] AXI_20_RDATA,
  output [31:0] AXI_20_RDATA_PARITY,
  output [5:0] AXI_20_RID,
  output AXI_20_RLAST,
  output [1:0] AXI_20_RRESP,
  output AXI_20_RVALID,
  output AXI_20_WREADY,
  output AXI_21_ARREADY,
  output AXI_21_AWREADY,
  output [5:0] AXI_21_BID,
  output [1:0] AXI_21_BRESP,
  output AXI_21_BVALID,
  output [1:0] AXI_21_DFI_AW_AERR_N,
  output AXI_21_DFI_CLK_BUF,
  output [7:0] AXI_21_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_21_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_21_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_21_DFI_DW_RDDATA_VALID,
  output AXI_21_DFI_INIT_COMPLETE,
  output AXI_21_DFI_PHYUPD_REQ,
  output AXI_21_DFI_PHY_LP_STATE,
  output AXI_21_DFI_RST_N_BUF,
  output [255:0] AXI_21_RDATA,
  output [31:0] AXI_21_RDATA_PARITY,
  output [5:0] AXI_21_RID,
  output AXI_21_RLAST,
  output [1:0] AXI_21_RRESP,
  output AXI_21_RVALID,
  output AXI_21_WREADY,
  output AXI_22_ARREADY,
  output AXI_22_AWREADY,
  output [5:0] AXI_22_BID,
  output [1:0] AXI_22_BRESP,
  output AXI_22_BVALID,
  output [1:0] AXI_22_DFI_AW_AERR_N,
  output AXI_22_DFI_CLK_BUF,
  output [7:0] AXI_22_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_22_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_22_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_22_DFI_DW_RDDATA_VALID,
  output AXI_22_DFI_INIT_COMPLETE,
  output AXI_22_DFI_PHYUPD_REQ,
  output AXI_22_DFI_PHY_LP_STATE,
  output AXI_22_DFI_RST_N_BUF,
  output [5:0] AXI_22_MC_STATUS,
  output [7:0] AXI_22_PHY_STATUS,
  output [255:0] AXI_22_RDATA,
  output [31:0] AXI_22_RDATA_PARITY,
  output [5:0] AXI_22_RID,
  output AXI_22_RLAST,
  output [1:0] AXI_22_RRESP,
  output AXI_22_RVALID,
  output AXI_22_WREADY,
  output AXI_23_ARREADY,
  output AXI_23_AWREADY,
  output [5:0] AXI_23_BID,
  output [1:0] AXI_23_BRESP,
  output AXI_23_BVALID,
  output [1:0] AXI_23_DFI_AW_AERR_N,
  output AXI_23_DFI_CLK_BUF,
  output [7:0] AXI_23_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_23_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_23_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_23_DFI_DW_RDDATA_VALID,
  output AXI_23_DFI_INIT_COMPLETE,
  output AXI_23_DFI_PHYUPD_REQ,
  output AXI_23_DFI_PHY_LP_STATE,
  output AXI_23_DFI_RST_N_BUF,
  output [255:0] AXI_23_RDATA,
  output [31:0] AXI_23_RDATA_PARITY,
  output [5:0] AXI_23_RID,
  output AXI_23_RLAST,
  output [1:0] AXI_23_RRESP,
  output AXI_23_RVALID,
  output AXI_23_WREADY,
  output AXI_24_ARREADY,
  output AXI_24_AWREADY,
  output [5:0] AXI_24_BID,
  output [1:0] AXI_24_BRESP,
  output AXI_24_BVALID,
  output [1:0] AXI_24_DFI_AW_AERR_N,
  output AXI_24_DFI_CLK_BUF,
  output [7:0] AXI_24_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_24_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_24_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_24_DFI_DW_RDDATA_VALID,
  output AXI_24_DFI_INIT_COMPLETE,
  output AXI_24_DFI_PHYUPD_REQ,
  output AXI_24_DFI_PHY_LP_STATE,
  output AXI_24_DFI_RST_N_BUF,
  output [5:0] AXI_24_MC_STATUS,
  output [7:0] AXI_24_PHY_STATUS,
  output [255:0] AXI_24_RDATA,
  output [31:0] AXI_24_RDATA_PARITY,
  output [5:0] AXI_24_RID,
  output AXI_24_RLAST,
  output [1:0] AXI_24_RRESP,
  output AXI_24_RVALID,
  output AXI_24_WREADY,
  output AXI_25_ARREADY,
  output AXI_25_AWREADY,
  output [5:0] AXI_25_BID,
  output [1:0] AXI_25_BRESP,
  output AXI_25_BVALID,
  output [1:0] AXI_25_DFI_AW_AERR_N,
  output AXI_25_DFI_CLK_BUF,
  output [7:0] AXI_25_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_25_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_25_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_25_DFI_DW_RDDATA_VALID,
  output AXI_25_DFI_INIT_COMPLETE,
  output AXI_25_DFI_PHYUPD_REQ,
  output AXI_25_DFI_PHY_LP_STATE,
  output AXI_25_DFI_RST_N_BUF,
  output [255:0] AXI_25_RDATA,
  output [31:0] AXI_25_RDATA_PARITY,
  output [5:0] AXI_25_RID,
  output AXI_25_RLAST,
  output [1:0] AXI_25_RRESP,
  output AXI_25_RVALID,
  output AXI_25_WREADY,
  output AXI_26_ARREADY,
  output AXI_26_AWREADY,
  output [5:0] AXI_26_BID,
  output [1:0] AXI_26_BRESP,
  output AXI_26_BVALID,
  output [1:0] AXI_26_DFI_AW_AERR_N,
  output AXI_26_DFI_CLK_BUF,
  output [7:0] AXI_26_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_26_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_26_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_26_DFI_DW_RDDATA_VALID,
  output AXI_26_DFI_INIT_COMPLETE,
  output AXI_26_DFI_PHYUPD_REQ,
  output AXI_26_DFI_PHY_LP_STATE,
  output AXI_26_DFI_RST_N_BUF,
  output [5:0] AXI_26_MC_STATUS,
  output [7:0] AXI_26_PHY_STATUS,
  output [255:0] AXI_26_RDATA,
  output [31:0] AXI_26_RDATA_PARITY,
  output [5:0] AXI_26_RID,
  output AXI_26_RLAST,
  output [1:0] AXI_26_RRESP,
  output AXI_26_RVALID,
  output AXI_26_WREADY,
  output AXI_27_ARREADY,
  output AXI_27_AWREADY,
  output [5:0] AXI_27_BID,
  output [1:0] AXI_27_BRESP,
  output AXI_27_BVALID,
  output [1:0] AXI_27_DFI_AW_AERR_N,
  output AXI_27_DFI_CLK_BUF,
  output [7:0] AXI_27_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_27_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_27_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_27_DFI_DW_RDDATA_VALID,
  output AXI_27_DFI_INIT_COMPLETE,
  output AXI_27_DFI_PHYUPD_REQ,
  output AXI_27_DFI_PHY_LP_STATE,
  output AXI_27_DFI_RST_N_BUF,
  output [255:0] AXI_27_RDATA,
  output [31:0] AXI_27_RDATA_PARITY,
  output [5:0] AXI_27_RID,
  output AXI_27_RLAST,
  output [1:0] AXI_27_RRESP,
  output AXI_27_RVALID,
  output AXI_27_WREADY,
  output AXI_28_ARREADY,
  output AXI_28_AWREADY,
  output [5:0] AXI_28_BID,
  output [1:0] AXI_28_BRESP,
  output AXI_28_BVALID,
  output [1:0] AXI_28_DFI_AW_AERR_N,
  output AXI_28_DFI_CLK_BUF,
  output [7:0] AXI_28_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_28_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_28_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_28_DFI_DW_RDDATA_VALID,
  output AXI_28_DFI_INIT_COMPLETE,
  output AXI_28_DFI_PHYUPD_REQ,
  output AXI_28_DFI_PHY_LP_STATE,
  output AXI_28_DFI_RST_N_BUF,
  output [5:0] AXI_28_MC_STATUS,
  output [7:0] AXI_28_PHY_STATUS,
  output [255:0] AXI_28_RDATA,
  output [31:0] AXI_28_RDATA_PARITY,
  output [5:0] AXI_28_RID,
  output AXI_28_RLAST,
  output [1:0] AXI_28_RRESP,
  output AXI_28_RVALID,
  output AXI_28_WREADY,
  output AXI_29_ARREADY,
  output AXI_29_AWREADY,
  output [5:0] AXI_29_BID,
  output [1:0] AXI_29_BRESP,
  output AXI_29_BVALID,
  output [1:0] AXI_29_DFI_AW_AERR_N,
  output AXI_29_DFI_CLK_BUF,
  output [7:0] AXI_29_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_29_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_29_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_29_DFI_DW_RDDATA_VALID,
  output AXI_29_DFI_INIT_COMPLETE,
  output AXI_29_DFI_PHYUPD_REQ,
  output AXI_29_DFI_PHY_LP_STATE,
  output AXI_29_DFI_RST_N_BUF,
  output [255:0] AXI_29_RDATA,
  output [31:0] AXI_29_RDATA_PARITY,
  output [5:0] AXI_29_RID,
  output AXI_29_RLAST,
  output [1:0] AXI_29_RRESP,
  output AXI_29_RVALID,
  output AXI_29_WREADY,
  output AXI_30_ARREADY,
  output AXI_30_AWREADY,
  output [5:0] AXI_30_BID,
  output [1:0] AXI_30_BRESP,
  output AXI_30_BVALID,
  output [1:0] AXI_30_DFI_AW_AERR_N,
  output AXI_30_DFI_CLK_BUF,
  output [7:0] AXI_30_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_30_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_30_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_30_DFI_DW_RDDATA_VALID,
  output AXI_30_DFI_INIT_COMPLETE,
  output AXI_30_DFI_PHYUPD_REQ,
  output AXI_30_DFI_PHY_LP_STATE,
  output AXI_30_DFI_RST_N_BUF,
  output [5:0] AXI_30_MC_STATUS,
  output [7:0] AXI_30_PHY_STATUS,
  output [255:0] AXI_30_RDATA,
  output [31:0] AXI_30_RDATA_PARITY,
  output [5:0] AXI_30_RID,
  output AXI_30_RLAST,
  output [1:0] AXI_30_RRESP,
  output AXI_30_RVALID,
  output AXI_30_WREADY,
  output AXI_31_ARREADY,
  output AXI_31_AWREADY,
  output [5:0] AXI_31_BID,
  output [1:0] AXI_31_BRESP,
  output AXI_31_BVALID,
  output [1:0] AXI_31_DFI_AW_AERR_N,
  output AXI_31_DFI_CLK_BUF,
  output [7:0] AXI_31_DFI_DBI_BYTE_DISABLE,
  output [20:0] AXI_31_DFI_DW_RDDATA_DBI,
  output [7:0] AXI_31_DFI_DW_RDDATA_DERR,
  output [1:0] AXI_31_DFI_DW_RDDATA_VALID,
  output AXI_31_DFI_INIT_COMPLETE,
  output AXI_31_DFI_PHYUPD_REQ,
  output AXI_31_DFI_PHY_LP_STATE,
  output AXI_31_DFI_RST_N_BUF,
  output [255:0] AXI_31_RDATA,
  output [31:0] AXI_31_RDATA_PARITY,
  output [5:0] AXI_31_RID,
  output AXI_31_RLAST,
  output [1:0] AXI_31_RRESP,
  output AXI_31_RVALID,
  output AXI_31_WREADY,
  output DRAM_0_STAT_CATTRIP,
  output [2:0] DRAM_0_STAT_TEMP,
  output DRAM_1_STAT_CATTRIP,
  output [2:0] DRAM_1_STAT_TEMP,

  input [21:0] APB_0_PADDR,
  input APB_0_PCLK,
  input APB_0_PENABLE,
  input APB_0_PRESET_N,
  input APB_0_PSEL,
  input [31:0] APB_0_PWDATA,
  input APB_0_PWRITE,
  input [21:0] APB_1_PADDR,
  input APB_1_PCLK,
  input APB_1_PENABLE,
  input APB_1_PRESET_N,
  input APB_1_PSEL,
  input [31:0] APB_1_PWDATA,
  input APB_1_PWRITE,
  input AXI_00_ACLK,
  input [36:0] AXI_00_ARADDR,
  input [1:0] AXI_00_ARBURST,
  input AXI_00_ARESET_N,
  input [5:0] AXI_00_ARID,
  input [3:0] AXI_00_ARLEN,
  input [2:0] AXI_00_ARSIZE,
  input AXI_00_ARVALID,
  input [36:0] AXI_00_AWADDR,
  input [1:0] AXI_00_AWBURST,
  input [5:0] AXI_00_AWID,
  input [3:0] AXI_00_AWLEN,
  input [2:0] AXI_00_AWSIZE,
  input AXI_00_AWVALID,
  input AXI_00_BREADY,
  input AXI_00_DFI_LP_PWR_X_REQ,
  input AXI_00_RREADY,
  input [255:0] AXI_00_WDATA,
  input [31:0] AXI_00_WDATA_PARITY,
  input AXI_00_WLAST,
  input [31:0] AXI_00_WSTRB,
  input AXI_00_WVALID,
  input AXI_01_ACLK,
  input [36:0] AXI_01_ARADDR,
  input [1:0] AXI_01_ARBURST,
  input AXI_01_ARESET_N,
  input [5:0] AXI_01_ARID,
  input [3:0] AXI_01_ARLEN,
  input [2:0] AXI_01_ARSIZE,
  input AXI_01_ARVALID,
  input [36:0] AXI_01_AWADDR,
  input [1:0] AXI_01_AWBURST,
  input [5:0] AXI_01_AWID,
  input [3:0] AXI_01_AWLEN,
  input [2:0] AXI_01_AWSIZE,
  input AXI_01_AWVALID,
  input AXI_01_BREADY,
  input AXI_01_DFI_LP_PWR_X_REQ,
  input AXI_01_RREADY,
  input [255:0] AXI_01_WDATA,
  input [31:0] AXI_01_WDATA_PARITY,
  input AXI_01_WLAST,
  input [31:0] AXI_01_WSTRB,
  input AXI_01_WVALID,
  input AXI_02_ACLK,
  input [36:0] AXI_02_ARADDR,
  input [1:0] AXI_02_ARBURST,
  input AXI_02_ARESET_N,
  input [5:0] AXI_02_ARID,
  input [3:0] AXI_02_ARLEN,
  input [2:0] AXI_02_ARSIZE,
  input AXI_02_ARVALID,
  input [36:0] AXI_02_AWADDR,
  input [1:0] AXI_02_AWBURST,
  input [5:0] AXI_02_AWID,
  input [3:0] AXI_02_AWLEN,
  input [2:0] AXI_02_AWSIZE,
  input AXI_02_AWVALID,
  input AXI_02_BREADY,
  input AXI_02_DFI_LP_PWR_X_REQ,
  input AXI_02_RREADY,
  input [255:0] AXI_02_WDATA,
  input [31:0] AXI_02_WDATA_PARITY,
  input AXI_02_WLAST,
  input [31:0] AXI_02_WSTRB,
  input AXI_02_WVALID,
  input AXI_03_ACLK,
  input [36:0] AXI_03_ARADDR,
  input [1:0] AXI_03_ARBURST,
  input AXI_03_ARESET_N,
  input [5:0] AXI_03_ARID,
  input [3:0] AXI_03_ARLEN,
  input [2:0] AXI_03_ARSIZE,
  input AXI_03_ARVALID,
  input [36:0] AXI_03_AWADDR,
  input [1:0] AXI_03_AWBURST,
  input [5:0] AXI_03_AWID,
  input [3:0] AXI_03_AWLEN,
  input [2:0] AXI_03_AWSIZE,
  input AXI_03_AWVALID,
  input AXI_03_BREADY,
  input AXI_03_DFI_LP_PWR_X_REQ,
  input AXI_03_RREADY,
  input [255:0] AXI_03_WDATA,
  input [31:0] AXI_03_WDATA_PARITY,
  input AXI_03_WLAST,
  input [31:0] AXI_03_WSTRB,
  input AXI_03_WVALID,
  input AXI_04_ACLK,
  input [36:0] AXI_04_ARADDR,
  input [1:0] AXI_04_ARBURST,
  input AXI_04_ARESET_N,
  input [5:0] AXI_04_ARID,
  input [3:0] AXI_04_ARLEN,
  input [2:0] AXI_04_ARSIZE,
  input AXI_04_ARVALID,
  input [36:0] AXI_04_AWADDR,
  input [1:0] AXI_04_AWBURST,
  input [5:0] AXI_04_AWID,
  input [3:0] AXI_04_AWLEN,
  input [2:0] AXI_04_AWSIZE,
  input AXI_04_AWVALID,
  input AXI_04_BREADY,
  input AXI_04_DFI_LP_PWR_X_REQ,
  input AXI_04_RREADY,
  input [255:0] AXI_04_WDATA,
  input [31:0] AXI_04_WDATA_PARITY,
  input AXI_04_WLAST,
  input [31:0] AXI_04_WSTRB,
  input AXI_04_WVALID,
  input AXI_05_ACLK,
  input [36:0] AXI_05_ARADDR,
  input [1:0] AXI_05_ARBURST,
  input AXI_05_ARESET_N,
  input [5:0] AXI_05_ARID,
  input [3:0] AXI_05_ARLEN,
  input [2:0] AXI_05_ARSIZE,
  input AXI_05_ARVALID,
  input [36:0] AXI_05_AWADDR,
  input [1:0] AXI_05_AWBURST,
  input [5:0] AXI_05_AWID,
  input [3:0] AXI_05_AWLEN,
  input [2:0] AXI_05_AWSIZE,
  input AXI_05_AWVALID,
  input AXI_05_BREADY,
  input AXI_05_DFI_LP_PWR_X_REQ,
  input AXI_05_RREADY,
  input [255:0] AXI_05_WDATA,
  input [31:0] AXI_05_WDATA_PARITY,
  input AXI_05_WLAST,
  input [31:0] AXI_05_WSTRB,
  input AXI_05_WVALID,
  input AXI_06_ACLK,
  input [36:0] AXI_06_ARADDR,
  input [1:0] AXI_06_ARBURST,
  input AXI_06_ARESET_N,
  input [5:0] AXI_06_ARID,
  input [3:0] AXI_06_ARLEN,
  input [2:0] AXI_06_ARSIZE,
  input AXI_06_ARVALID,
  input [36:0] AXI_06_AWADDR,
  input [1:0] AXI_06_AWBURST,
  input [5:0] AXI_06_AWID,
  input [3:0] AXI_06_AWLEN,
  input [2:0] AXI_06_AWSIZE,
  input AXI_06_AWVALID,
  input AXI_06_BREADY,
  input AXI_06_DFI_LP_PWR_X_REQ,
  input AXI_06_RREADY,
  input [255:0] AXI_06_WDATA,
  input [31:0] AXI_06_WDATA_PARITY,
  input AXI_06_WLAST,
  input [31:0] AXI_06_WSTRB,
  input AXI_06_WVALID,
  input AXI_07_ACLK,
  input [36:0] AXI_07_ARADDR,
  input [1:0] AXI_07_ARBURST,
  input AXI_07_ARESET_N,
  input [5:0] AXI_07_ARID,
  input [3:0] AXI_07_ARLEN,
  input [2:0] AXI_07_ARSIZE,
  input AXI_07_ARVALID,
  input [36:0] AXI_07_AWADDR,
  input [1:0] AXI_07_AWBURST,
  input [5:0] AXI_07_AWID,
  input [3:0] AXI_07_AWLEN,
  input [2:0] AXI_07_AWSIZE,
  input AXI_07_AWVALID,
  input AXI_07_BREADY,
  input AXI_07_DFI_LP_PWR_X_REQ,
  input AXI_07_RREADY,
  input [255:0] AXI_07_WDATA,
  input [31:0] AXI_07_WDATA_PARITY,
  input AXI_07_WLAST,
  input [31:0] AXI_07_WSTRB,
  input AXI_07_WVALID,
  input AXI_08_ACLK,
  input [36:0] AXI_08_ARADDR,
  input [1:0] AXI_08_ARBURST,
  input AXI_08_ARESET_N,
  input [5:0] AXI_08_ARID,
  input [3:0] AXI_08_ARLEN,
  input [2:0] AXI_08_ARSIZE,
  input AXI_08_ARVALID,
  input [36:0] AXI_08_AWADDR,
  input [1:0] AXI_08_AWBURST,
  input [5:0] AXI_08_AWID,
  input [3:0] AXI_08_AWLEN,
  input [2:0] AXI_08_AWSIZE,
  input AXI_08_AWVALID,
  input AXI_08_BREADY,
  input AXI_08_DFI_LP_PWR_X_REQ,
  input AXI_08_RREADY,
  input [255:0] AXI_08_WDATA,
  input [31:0] AXI_08_WDATA_PARITY,
  input AXI_08_WLAST,
  input [31:0] AXI_08_WSTRB,
  input AXI_08_WVALID,
  input AXI_09_ACLK,
  input [36:0] AXI_09_ARADDR,
  input [1:0] AXI_09_ARBURST,
  input AXI_09_ARESET_N,
  input [5:0] AXI_09_ARID,
  input [3:0] AXI_09_ARLEN,
  input [2:0] AXI_09_ARSIZE,
  input AXI_09_ARVALID,
  input [36:0] AXI_09_AWADDR,
  input [1:0] AXI_09_AWBURST,
  input [5:0] AXI_09_AWID,
  input [3:0] AXI_09_AWLEN,
  input [2:0] AXI_09_AWSIZE,
  input AXI_09_AWVALID,
  input AXI_09_BREADY,
  input AXI_09_DFI_LP_PWR_X_REQ,
  input AXI_09_RREADY,
  input [255:0] AXI_09_WDATA,
  input [31:0] AXI_09_WDATA_PARITY,
  input AXI_09_WLAST,
  input [31:0] AXI_09_WSTRB,
  input AXI_09_WVALID,
  input AXI_10_ACLK,
  input [36:0] AXI_10_ARADDR,
  input [1:0] AXI_10_ARBURST,
  input AXI_10_ARESET_N,
  input [5:0] AXI_10_ARID,
  input [3:0] AXI_10_ARLEN,
  input [2:0] AXI_10_ARSIZE,
  input AXI_10_ARVALID,
  input [36:0] AXI_10_AWADDR,
  input [1:0] AXI_10_AWBURST,
  input [5:0] AXI_10_AWID,
  input [3:0] AXI_10_AWLEN,
  input [2:0] AXI_10_AWSIZE,
  input AXI_10_AWVALID,
  input AXI_10_BREADY,
  input AXI_10_DFI_LP_PWR_X_REQ,
  input AXI_10_RREADY,
  input [255:0] AXI_10_WDATA,
  input [31:0] AXI_10_WDATA_PARITY,
  input AXI_10_WLAST,
  input [31:0] AXI_10_WSTRB,
  input AXI_10_WVALID,
  input AXI_11_ACLK,
  input [36:0] AXI_11_ARADDR,
  input [1:0] AXI_11_ARBURST,
  input AXI_11_ARESET_N,
  input [5:0] AXI_11_ARID,
  input [3:0] AXI_11_ARLEN,
  input [2:0] AXI_11_ARSIZE,
  input AXI_11_ARVALID,
  input [36:0] AXI_11_AWADDR,
  input [1:0] AXI_11_AWBURST,
  input [5:0] AXI_11_AWID,
  input [3:0] AXI_11_AWLEN,
  input [2:0] AXI_11_AWSIZE,
  input AXI_11_AWVALID,
  input AXI_11_BREADY,
  input AXI_11_DFI_LP_PWR_X_REQ,
  input AXI_11_RREADY,
  input [255:0] AXI_11_WDATA,
  input [31:0] AXI_11_WDATA_PARITY,
  input AXI_11_WLAST,
  input [31:0] AXI_11_WSTRB,
  input AXI_11_WVALID,
  input AXI_12_ACLK,
  input [36:0] AXI_12_ARADDR,
  input [1:0] AXI_12_ARBURST,
  input AXI_12_ARESET_N,
  input [5:0] AXI_12_ARID,
  input [3:0] AXI_12_ARLEN,
  input [2:0] AXI_12_ARSIZE,
  input AXI_12_ARVALID,
  input [36:0] AXI_12_AWADDR,
  input [1:0] AXI_12_AWBURST,
  input [5:0] AXI_12_AWID,
  input [3:0] AXI_12_AWLEN,
  input [2:0] AXI_12_AWSIZE,
  input AXI_12_AWVALID,
  input AXI_12_BREADY,
  input AXI_12_DFI_LP_PWR_X_REQ,
  input AXI_12_RREADY,
  input [255:0] AXI_12_WDATA,
  input [31:0] AXI_12_WDATA_PARITY,
  input AXI_12_WLAST,
  input [31:0] AXI_12_WSTRB,
  input AXI_12_WVALID,
  input AXI_13_ACLK,
  input [36:0] AXI_13_ARADDR,
  input [1:0] AXI_13_ARBURST,
  input AXI_13_ARESET_N,
  input [5:0] AXI_13_ARID,
  input [3:0] AXI_13_ARLEN,
  input [2:0] AXI_13_ARSIZE,
  input AXI_13_ARVALID,
  input [36:0] AXI_13_AWADDR,
  input [1:0] AXI_13_AWBURST,
  input [5:0] AXI_13_AWID,
  input [3:0] AXI_13_AWLEN,
  input [2:0] AXI_13_AWSIZE,
  input AXI_13_AWVALID,
  input AXI_13_BREADY,
  input AXI_13_DFI_LP_PWR_X_REQ,
  input AXI_13_RREADY,
  input [255:0] AXI_13_WDATA,
  input [31:0] AXI_13_WDATA_PARITY,
  input AXI_13_WLAST,
  input [31:0] AXI_13_WSTRB,
  input AXI_13_WVALID,
  input AXI_14_ACLK,
  input [36:0] AXI_14_ARADDR,
  input [1:0] AXI_14_ARBURST,
  input AXI_14_ARESET_N,
  input [5:0] AXI_14_ARID,
  input [3:0] AXI_14_ARLEN,
  input [2:0] AXI_14_ARSIZE,
  input AXI_14_ARVALID,
  input [36:0] AXI_14_AWADDR,
  input [1:0] AXI_14_AWBURST,
  input [5:0] AXI_14_AWID,
  input [3:0] AXI_14_AWLEN,
  input [2:0] AXI_14_AWSIZE,
  input AXI_14_AWVALID,
  input AXI_14_BREADY,
  input AXI_14_DFI_LP_PWR_X_REQ,
  input AXI_14_RREADY,
  input [255:0] AXI_14_WDATA,
  input [31:0] AXI_14_WDATA_PARITY,
  input AXI_14_WLAST,
  input [31:0] AXI_14_WSTRB,
  input AXI_14_WVALID,
  input AXI_15_ACLK,
  input [36:0] AXI_15_ARADDR,
  input [1:0] AXI_15_ARBURST,
  input AXI_15_ARESET_N,
  input [5:0] AXI_15_ARID,
  input [3:0] AXI_15_ARLEN,
  input [2:0] AXI_15_ARSIZE,
  input AXI_15_ARVALID,
  input [36:0] AXI_15_AWADDR,
  input [1:0] AXI_15_AWBURST,
  input [5:0] AXI_15_AWID,
  input [3:0] AXI_15_AWLEN,
  input [2:0] AXI_15_AWSIZE,
  input AXI_15_AWVALID,
  input AXI_15_BREADY,
  input AXI_15_DFI_LP_PWR_X_REQ,
  input AXI_15_RREADY,
  input [255:0] AXI_15_WDATA,
  input [31:0] AXI_15_WDATA_PARITY,
  input AXI_15_WLAST,
  input [31:0] AXI_15_WSTRB,
  input AXI_15_WVALID,
  input AXI_16_ACLK,
  input [36:0] AXI_16_ARADDR,
  input [1:0] AXI_16_ARBURST,
  input AXI_16_ARESET_N,
  input [5:0] AXI_16_ARID,
  input [3:0] AXI_16_ARLEN,
  input [2:0] AXI_16_ARSIZE,
  input AXI_16_ARVALID,
  input [36:0] AXI_16_AWADDR,
  input [1:0] AXI_16_AWBURST,
  input [5:0] AXI_16_AWID,
  input [3:0] AXI_16_AWLEN,
  input [2:0] AXI_16_AWSIZE,
  input AXI_16_AWVALID,
  input AXI_16_BREADY,
  input AXI_16_DFI_LP_PWR_X_REQ,
  input AXI_16_RREADY,
  input [255:0] AXI_16_WDATA,
  input [31:0] AXI_16_WDATA_PARITY,
  input AXI_16_WLAST,
  input [31:0] AXI_16_WSTRB,
  input AXI_16_WVALID,
  input AXI_17_ACLK,
  input [36:0] AXI_17_ARADDR,
  input [1:0] AXI_17_ARBURST,
  input AXI_17_ARESET_N,
  input [5:0] AXI_17_ARID,
  input [3:0] AXI_17_ARLEN,
  input [2:0] AXI_17_ARSIZE,
  input AXI_17_ARVALID,
  input [36:0] AXI_17_AWADDR,
  input [1:0] AXI_17_AWBURST,
  input [5:0] AXI_17_AWID,
  input [3:0] AXI_17_AWLEN,
  input [2:0] AXI_17_AWSIZE,
  input AXI_17_AWVALID,
  input AXI_17_BREADY,
  input AXI_17_DFI_LP_PWR_X_REQ,
  input AXI_17_RREADY,
  input [255:0] AXI_17_WDATA,
  input [31:0] AXI_17_WDATA_PARITY,
  input AXI_17_WLAST,
  input [31:0] AXI_17_WSTRB,
  input AXI_17_WVALID,
  input AXI_18_ACLK,
  input [36:0] AXI_18_ARADDR,
  input [1:0] AXI_18_ARBURST,
  input AXI_18_ARESET_N,
  input [5:0] AXI_18_ARID,
  input [3:0] AXI_18_ARLEN,
  input [2:0] AXI_18_ARSIZE,
  input AXI_18_ARVALID,
  input [36:0] AXI_18_AWADDR,
  input [1:0] AXI_18_AWBURST,
  input [5:0] AXI_18_AWID,
  input [3:0] AXI_18_AWLEN,
  input [2:0] AXI_18_AWSIZE,
  input AXI_18_AWVALID,
  input AXI_18_BREADY,
  input AXI_18_DFI_LP_PWR_X_REQ,
  input AXI_18_RREADY,
  input [255:0] AXI_18_WDATA,
  input [31:0] AXI_18_WDATA_PARITY,
  input AXI_18_WLAST,
  input [31:0] AXI_18_WSTRB,
  input AXI_18_WVALID,
  input AXI_19_ACLK,
  input [36:0] AXI_19_ARADDR,
  input [1:0] AXI_19_ARBURST,
  input AXI_19_ARESET_N,
  input [5:0] AXI_19_ARID,
  input [3:0] AXI_19_ARLEN,
  input [2:0] AXI_19_ARSIZE,
  input AXI_19_ARVALID,
  input [36:0] AXI_19_AWADDR,
  input [1:0] AXI_19_AWBURST,
  input [5:0] AXI_19_AWID,
  input [3:0] AXI_19_AWLEN,
  input [2:0] AXI_19_AWSIZE,
  input AXI_19_AWVALID,
  input AXI_19_BREADY,
  input AXI_19_DFI_LP_PWR_X_REQ,
  input AXI_19_RREADY,
  input [255:0] AXI_19_WDATA,
  input [31:0] AXI_19_WDATA_PARITY,
  input AXI_19_WLAST,
  input [31:0] AXI_19_WSTRB,
  input AXI_19_WVALID,
  input AXI_20_ACLK,
  input [36:0] AXI_20_ARADDR,
  input [1:0] AXI_20_ARBURST,
  input AXI_20_ARESET_N,
  input [5:0] AXI_20_ARID,
  input [3:0] AXI_20_ARLEN,
  input [2:0] AXI_20_ARSIZE,
  input AXI_20_ARVALID,
  input [36:0] AXI_20_AWADDR,
  input [1:0] AXI_20_AWBURST,
  input [5:0] AXI_20_AWID,
  input [3:0] AXI_20_AWLEN,
  input [2:0] AXI_20_AWSIZE,
  input AXI_20_AWVALID,
  input AXI_20_BREADY,
  input AXI_20_DFI_LP_PWR_X_REQ,
  input AXI_20_RREADY,
  input [255:0] AXI_20_WDATA,
  input [31:0] AXI_20_WDATA_PARITY,
  input AXI_20_WLAST,
  input [31:0] AXI_20_WSTRB,
  input AXI_20_WVALID,
  input AXI_21_ACLK,
  input [36:0] AXI_21_ARADDR,
  input [1:0] AXI_21_ARBURST,
  input AXI_21_ARESET_N,
  input [5:0] AXI_21_ARID,
  input [3:0] AXI_21_ARLEN,
  input [2:0] AXI_21_ARSIZE,
  input AXI_21_ARVALID,
  input [36:0] AXI_21_AWADDR,
  input [1:0] AXI_21_AWBURST,
  input [5:0] AXI_21_AWID,
  input [3:0] AXI_21_AWLEN,
  input [2:0] AXI_21_AWSIZE,
  input AXI_21_AWVALID,
  input AXI_21_BREADY,
  input AXI_21_DFI_LP_PWR_X_REQ,
  input AXI_21_RREADY,
  input [255:0] AXI_21_WDATA,
  input [31:0] AXI_21_WDATA_PARITY,
  input AXI_21_WLAST,
  input [31:0] AXI_21_WSTRB,
  input AXI_21_WVALID,
  input AXI_22_ACLK,
  input [36:0] AXI_22_ARADDR,
  input [1:0] AXI_22_ARBURST,
  input AXI_22_ARESET_N,
  input [5:0] AXI_22_ARID,
  input [3:0] AXI_22_ARLEN,
  input [2:0] AXI_22_ARSIZE,
  input AXI_22_ARVALID,
  input [36:0] AXI_22_AWADDR,
  input [1:0] AXI_22_AWBURST,
  input [5:0] AXI_22_AWID,
  input [3:0] AXI_22_AWLEN,
  input [2:0] AXI_22_AWSIZE,
  input AXI_22_AWVALID,
  input AXI_22_BREADY,
  input AXI_22_DFI_LP_PWR_X_REQ,
  input AXI_22_RREADY,
  input [255:0] AXI_22_WDATA,
  input [31:0] AXI_22_WDATA_PARITY,
  input AXI_22_WLAST,
  input [31:0] AXI_22_WSTRB,
  input AXI_22_WVALID,
  input AXI_23_ACLK,
  input [36:0] AXI_23_ARADDR,
  input [1:0] AXI_23_ARBURST,
  input AXI_23_ARESET_N,
  input [5:0] AXI_23_ARID,
  input [3:0] AXI_23_ARLEN,
  input [2:0] AXI_23_ARSIZE,
  input AXI_23_ARVALID,
  input [36:0] AXI_23_AWADDR,
  input [1:0] AXI_23_AWBURST,
  input [5:0] AXI_23_AWID,
  input [3:0] AXI_23_AWLEN,
  input [2:0] AXI_23_AWSIZE,
  input AXI_23_AWVALID,
  input AXI_23_BREADY,
  input AXI_23_DFI_LP_PWR_X_REQ,
  input AXI_23_RREADY,
  input [255:0] AXI_23_WDATA,
  input [31:0] AXI_23_WDATA_PARITY,
  input AXI_23_WLAST,
  input [31:0] AXI_23_WSTRB,
  input AXI_23_WVALID,
  input AXI_24_ACLK,
  input [36:0] AXI_24_ARADDR,
  input [1:0] AXI_24_ARBURST,
  input AXI_24_ARESET_N,
  input [5:0] AXI_24_ARID,
  input [3:0] AXI_24_ARLEN,
  input [2:0] AXI_24_ARSIZE,
  input AXI_24_ARVALID,
  input [36:0] AXI_24_AWADDR,
  input [1:0] AXI_24_AWBURST,
  input [5:0] AXI_24_AWID,
  input [3:0] AXI_24_AWLEN,
  input [2:0] AXI_24_AWSIZE,
  input AXI_24_AWVALID,
  input AXI_24_BREADY,
  input AXI_24_DFI_LP_PWR_X_REQ,
  input AXI_24_RREADY,
  input [255:0] AXI_24_WDATA,
  input [31:0] AXI_24_WDATA_PARITY,
  input AXI_24_WLAST,
  input [31:0] AXI_24_WSTRB,
  input AXI_24_WVALID,
  input AXI_25_ACLK,
  input [36:0] AXI_25_ARADDR,
  input [1:0] AXI_25_ARBURST,
  input AXI_25_ARESET_N,
  input [5:0] AXI_25_ARID,
  input [3:0] AXI_25_ARLEN,
  input [2:0] AXI_25_ARSIZE,
  input AXI_25_ARVALID,
  input [36:0] AXI_25_AWADDR,
  input [1:0] AXI_25_AWBURST,
  input [5:0] AXI_25_AWID,
  input [3:0] AXI_25_AWLEN,
  input [2:0] AXI_25_AWSIZE,
  input AXI_25_AWVALID,
  input AXI_25_BREADY,
  input AXI_25_DFI_LP_PWR_X_REQ,
  input AXI_25_RREADY,
  input [255:0] AXI_25_WDATA,
  input [31:0] AXI_25_WDATA_PARITY,
  input AXI_25_WLAST,
  input [31:0] AXI_25_WSTRB,
  input AXI_25_WVALID,
  input AXI_26_ACLK,
  input [36:0] AXI_26_ARADDR,
  input [1:0] AXI_26_ARBURST,
  input AXI_26_ARESET_N,
  input [5:0] AXI_26_ARID,
  input [3:0] AXI_26_ARLEN,
  input [2:0] AXI_26_ARSIZE,
  input AXI_26_ARVALID,
  input [36:0] AXI_26_AWADDR,
  input [1:0] AXI_26_AWBURST,
  input [5:0] AXI_26_AWID,
  input [3:0] AXI_26_AWLEN,
  input [2:0] AXI_26_AWSIZE,
  input AXI_26_AWVALID,
  input AXI_26_BREADY,
  input AXI_26_DFI_LP_PWR_X_REQ,
  input AXI_26_RREADY,
  input [255:0] AXI_26_WDATA,
  input [31:0] AXI_26_WDATA_PARITY,
  input AXI_26_WLAST,
  input [31:0] AXI_26_WSTRB,
  input AXI_26_WVALID,
  input AXI_27_ACLK,
  input [36:0] AXI_27_ARADDR,
  input [1:0] AXI_27_ARBURST,
  input AXI_27_ARESET_N,
  input [5:0] AXI_27_ARID,
  input [3:0] AXI_27_ARLEN,
  input [2:0] AXI_27_ARSIZE,
  input AXI_27_ARVALID,
  input [36:0] AXI_27_AWADDR,
  input [1:0] AXI_27_AWBURST,
  input [5:0] AXI_27_AWID,
  input [3:0] AXI_27_AWLEN,
  input [2:0] AXI_27_AWSIZE,
  input AXI_27_AWVALID,
  input AXI_27_BREADY,
  input AXI_27_DFI_LP_PWR_X_REQ,
  input AXI_27_RREADY,
  input [255:0] AXI_27_WDATA,
  input [31:0] AXI_27_WDATA_PARITY,
  input AXI_27_WLAST,
  input [31:0] AXI_27_WSTRB,
  input AXI_27_WVALID,
  input AXI_28_ACLK,
  input [36:0] AXI_28_ARADDR,
  input [1:0] AXI_28_ARBURST,
  input AXI_28_ARESET_N,
  input [5:0] AXI_28_ARID,
  input [3:0] AXI_28_ARLEN,
  input [2:0] AXI_28_ARSIZE,
  input AXI_28_ARVALID,
  input [36:0] AXI_28_AWADDR,
  input [1:0] AXI_28_AWBURST,
  input [5:0] AXI_28_AWID,
  input [3:0] AXI_28_AWLEN,
  input [2:0] AXI_28_AWSIZE,
  input AXI_28_AWVALID,
  input AXI_28_BREADY,
  input AXI_28_DFI_LP_PWR_X_REQ,
  input AXI_28_RREADY,
  input [255:0] AXI_28_WDATA,
  input [31:0] AXI_28_WDATA_PARITY,
  input AXI_28_WLAST,
  input [31:0] AXI_28_WSTRB,
  input AXI_28_WVALID,
  input AXI_29_ACLK,
  input [36:0] AXI_29_ARADDR,
  input [1:0] AXI_29_ARBURST,
  input AXI_29_ARESET_N,
  input [5:0] AXI_29_ARID,
  input [3:0] AXI_29_ARLEN,
  input [2:0] AXI_29_ARSIZE,
  input AXI_29_ARVALID,
  input [36:0] AXI_29_AWADDR,
  input [1:0] AXI_29_AWBURST,
  input [5:0] AXI_29_AWID,
  input [3:0] AXI_29_AWLEN,
  input [2:0] AXI_29_AWSIZE,
  input AXI_29_AWVALID,
  input AXI_29_BREADY,
  input AXI_29_DFI_LP_PWR_X_REQ,
  input AXI_29_RREADY,
  input [255:0] AXI_29_WDATA,
  input [31:0] AXI_29_WDATA_PARITY,
  input AXI_29_WLAST,
  input [31:0] AXI_29_WSTRB,
  input AXI_29_WVALID,
  input AXI_30_ACLK,
  input [36:0] AXI_30_ARADDR,
  input [1:0] AXI_30_ARBURST,
  input AXI_30_ARESET_N,
  input [5:0] AXI_30_ARID,
  input [3:0] AXI_30_ARLEN,
  input [2:0] AXI_30_ARSIZE,
  input AXI_30_ARVALID,
  input [36:0] AXI_30_AWADDR,
  input [1:0] AXI_30_AWBURST,
  input [5:0] AXI_30_AWID,
  input [3:0] AXI_30_AWLEN,
  input [2:0] AXI_30_AWSIZE,
  input AXI_30_AWVALID,
  input AXI_30_BREADY,
  input AXI_30_DFI_LP_PWR_X_REQ,
  input AXI_30_RREADY,
  input [255:0] AXI_30_WDATA,
  input [31:0] AXI_30_WDATA_PARITY,
  input AXI_30_WLAST,
  input [31:0] AXI_30_WSTRB,
  input AXI_30_WVALID,
  input AXI_31_ACLK,
  input [36:0] AXI_31_ARADDR,
  input [1:0] AXI_31_ARBURST,
  input AXI_31_ARESET_N,
  input [5:0] AXI_31_ARID,
  input [3:0] AXI_31_ARLEN,
  input [2:0] AXI_31_ARSIZE,
  input AXI_31_ARVALID,
  input [36:0] AXI_31_AWADDR,
  input [1:0] AXI_31_AWBURST,
  input [5:0] AXI_31_AWID,
  input [3:0] AXI_31_AWLEN,
  input [2:0] AXI_31_AWSIZE,
  input AXI_31_AWVALID,
  input AXI_31_BREADY,
  input AXI_31_DFI_LP_PWR_X_REQ,
  input AXI_31_RREADY,
  input [255:0] AXI_31_WDATA,
  input [31:0] AXI_31_WDATA_PARITY,
  input AXI_31_WLAST,
  input [31:0] AXI_31_WSTRB,
  input AXI_31_WVALID,
  input BSCAN_DRCK_0,
  input BSCAN_DRCK_1,
  input BSCAN_TCK_0,
  input BSCAN_TCK_1,
  input HBM_REF_CLK_0,
  input HBM_REF_CLK_1,
  input MBIST_EN_00,
  input MBIST_EN_01,
  input MBIST_EN_02,
  input MBIST_EN_03,
  input MBIST_EN_04,
  input MBIST_EN_05,
  input MBIST_EN_06,
  input MBIST_EN_07,
  input MBIST_EN_08,
  input MBIST_EN_09,
  input MBIST_EN_10,
  input MBIST_EN_11,
  input MBIST_EN_12,
  input MBIST_EN_13,
  input MBIST_EN_14,
  input MBIST_EN_15
);
endmodule

module HPIO_VREF #(
  parameter VREF_CNTR = "OFF"
)(
  output VREF,

  input [6:0] FABRIC_VREF_TUNE
);
  endmodule


module HSADC #(
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter integer XPA_CFG0 = 0,
  parameter integer XPA_CFG1 = 0,
  parameter XPA_NUM_ADCS = "0",
  parameter integer XPA_NUM_DDCS = 0,
  parameter XPA_PLL_USED = "No",
  parameter integer XPA_SAMPLE_RATE_MSPS = 0
)(
  output CLK_ADC,
  output [127:0] DATA_ADC0,
  output [127:0] DATA_ADC1,
  output [127:0] DATA_ADC2,
  output [127:0] DATA_ADC3,
  output [15:0] DOUT,
  output DRDY,
  output PLL_DMON_OUT,
  output PLL_REFCLK_OUT,
  output [15:0] STATUS_ADC0,
  output [15:0] STATUS_ADC1,
  output [15:0] STATUS_ADC2,
  output [15:0] STATUS_ADC3,
  output [15:0] STATUS_COMMON,
  output SYSREF_OUT_NORTH,
  output SYSREF_OUT_SOUTH,

  input ADC_CLK_N,
  input ADC_CLK_P,
  input CLK_FIFO_LM,
  input [15:0] CONTROL_ADC0,
  input [15:0] CONTROL_ADC1,
  input [15:0] CONTROL_ADC2,
  input [15:0] CONTROL_ADC3,
  input [15:0] CONTROL_COMMON,
  input [11:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input FABRIC_CLK,
  input PLL_MONCLK,
  input PLL_REFCLK_IN,
  input SYSREF_IN_NORTH,
  input SYSREF_IN_SOUTH,
  input SYSREF_N,
  input SYSREF_P,
  input VIN0_N,
  input VIN0_P,
  input VIN1_N,
  input VIN1_P,
  input VIN2_N,
  input VIN2_P,
  input VIN3_N,
  input VIN3_P,
  input VIN_I01_N,
  input VIN_I01_P,
  input VIN_I23_N,
  input VIN_I23_P
);
endmodule


module HSDAC #(
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter integer XPA_CFG0 = 0,
  parameter integer XPA_CFG1 = 0,
  parameter integer XPA_NUM_DACS = 0,
  parameter integer XPA_NUM_DUCS = 0,
  parameter XPA_PLL_USED = "No",
  parameter integer XPA_SAMPLE_RATE_MSPS = 0
)(
  output CLK_DAC,
  output [15:0] DOUT,
  output DRDY,
  output PLL_DMON_OUT,
  output PLL_REFCLK_OUT,
  output [15:0] STATUS_COMMON,
  output [15:0] STATUS_DAC0,
  output [15:0] STATUS_DAC1,
  output [15:0] STATUS_DAC2,
  output [15:0] STATUS_DAC3,
  output SYSREF_OUT_NORTH,
  output SYSREF_OUT_SOUTH,
  output VOUT0_N,
  output VOUT0_P,
  output VOUT1_N,
  output VOUT1_P,
  output VOUT2_N,
  output VOUT2_P,
  output VOUT3_N,
  output VOUT3_P,

  input CLK_FIFO_LM,
  input [15:0] CONTROL_COMMON,
  input [15:0] CONTROL_DAC0,
  input [15:0] CONTROL_DAC1,
  input [15:0] CONTROL_DAC2,
  input [15:0] CONTROL_DAC3,
  input DAC_CLK_N,
  input DAC_CLK_P,
  input [11:0] DADDR,
  input [255:0] DATA_DAC0,
  input [255:0] DATA_DAC1,
  input [255:0] DATA_DAC2,
  input [255:0] DATA_DAC3,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input FABRIC_CLK,
  input PLL_MONCLK,
  input PLL_REFCLK_IN,
  input SYSREF_IN_NORTH,
  input SYSREF_IN_SOUTH,
  input SYSREF_N,
  input SYSREF_P
);
endmodule


module IBUF (O, I);
    parameter CAPACITANCE = "DONT_CARE";
    parameter IBUF_DELAY_VALUE = "0";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IFD_DELAY_VALUE = "AUTO";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    output O;
    input  I;
endmodule


module IBUFCTRL #(
  parameter ISTANDARD = "UNUSED",
  parameter USE_IBUFDISABLE = "FALSE"
)(
  output O,

  input I,
  input IBUFDISABLE,
  input INTERMDISABLE,
  input T
);
endmodule



module IBUFDS (O, I, IB);
  parameter LOC = "UNPLACED";
  parameter CAPACITANCE = "DONT_CARE";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_DELAY_VALUE = "0";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IFD_DELAY_VALUE = "AUTO";
  parameter IOSTANDARD = "DEFAULT";
    output O;
    input  I, IB;
endmodule


module IBUFDSE3 #(
  parameter DIFF_TERM = "FALSE",
  parameter DQS_BIAS = "FALSE",
  parameter IBUF_LOW_PWR = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0,
  parameter USE_IBUFDISABLE = "FALSE"
)(
  output O,

  input I,
  input IB,
  input IBUFDISABLE,
  input [3:0] OSC,
  input [1:0] OSC_EN
);
endmodule


module IBUFDS_DIFF_OUT (O, OB, I, IB);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    output O, OB;
    input  I, IB;
endmodule


module IBUFDS_DIFF_OUT_IBUFDISABLE (O, OB, I, IB, IBUFDISABLE);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O; 
    output OB;
    input I;
    input IB;
    input IBUFDISABLE;
endmodule


module IBUFDS_DIFF_OUT_INTERMDISABLE (O, OB, I, IB, IBUFDISABLE, INTERMDISABLE);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O; 
    output OB;
    input I;
    input IB;
    input IBUFDISABLE;
    input INTERMDISABLE;
endmodule


module IBUFDS_DPHY #(
  parameter DIFF_TERM = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SIM_DEVICE = "ULTRASCALE_PLUS"
)(
  output HSRX_O,
  output LPRX_O_N,
  output LPRX_O_P,

  input HSRX_DISABLE,
  input I,
  input IB,
  input LPRX_DISABLE
);
endmodule


module IBUFDS_GTE2 (
    O,
    ODIV2,

    CEB,
    I,
    IB
    );
    parameter LOC = "UNPLACED";
    parameter CLKCM_CFG = "TRUE";
    parameter CLKRCV_TRST = "TRUE";
    parameter [1:0] CLKSWING_CFG = 2'b11;
    output O;
    output ODIV2;
    input CEB;
    input I;
    input IB;
endmodule

module IBUFDS_GTE3 #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [1:0] REFCLK_HROW_CK_SEL = 2'b00,
  parameter [1:0] REFCLK_ICNTL_RX = 2'b00
)(
  output O,
  output ODIV2,

  input CEB,
  input I,
  input IB
);
endmodule


module IBUFDS_GTE4 #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [1:0] REFCLK_HROW_CK_SEL = 2'b00,
  parameter [1:0] REFCLK_ICNTL_RX = 2'b00
)(
  output O,
  output ODIV2,

  input CEB,
  input I,
  input IB
);
endmodule


module IBUFDS_GTM #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter integer REFCLK_HROW_CK_SEL = 0,
  parameter integer REFCLK_ICNTL_RX = 0
)(
  output O,
  output ODIV2,

  input CEB,
  input I,
  input IB
);
endmodule


module IBUFDS_IBUFDISABLE (O, I, IB, IBUFDISABLE);
  parameter LOC = "UNPLACED";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  parameter SIM_DEVICE = "7SERIES";
  parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  I;
    input  IB;
    input  IBUFDISABLE;
endmodule


module IBUFDS_IBUFDISABLE_INT (O, I, IB, IBUFDISABLE);
  parameter LOC = "UNPLACED";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  I;
    input  IB;
    input  IBUFDISABLE;
endmodule


module IBUFDS_INTERMDISABLE (O, I, IB, IBUFDISABLE, INTERMDISABLE);
  parameter LOC = "UNPLACED";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  parameter SIM_DEVICE = "7SERIES";
  parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  I;
    input  IB;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
endmodule


module IBUFDS_INTERMDISABLE_INT (O, I, IB, IBUFDISABLE, INTERMDISABLE);
  parameter LOC = "UNPLACED";
  parameter DIFF_TERM = "FALSE";
  parameter DQS_BIAS = "FALSE";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  I;
    input  IB;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
endmodule


module IBUFE3 #(
  parameter IBUF_LOW_PWR = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0,
  parameter USE_IBUFDISABLE = "FALSE"
)(
  output O,

  input I,
  input IBUFDISABLE,
  input [3:0] OSC,
  input OSC_EN,
  input VREF
);
endmodule


module IBUF_ANALOG
(
  output O,

  input I
);
endmodule


module IBUF_IBUFDISABLE (O, I, IBUFDISABLE);
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    input  I;
    input  IBUFDISABLE;
endmodule


module IBUF_INTERMDISABLE (O, I, IBUFDISABLE, INTERMDISABLE);
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
endmodule


module ICAPE2 (
  O,
  CLK,
  CSIB,
  I,
  RDWRB
);
  parameter [31:0] DEVICE_ID = 32'h03651093;
  parameter ICAP_WIDTH = "X32";
  parameter SIM_CFG_FILE_NAME = "NONE";
  parameter LOC = "UNPLACED";
  output [31:0] O;
  input CLK;
  input CSIB;
  input RDWRB;
  input [31:0] I;
endmodule


module ICAPE3 #(
  parameter [31:0] DEVICE_ID = 32'h03628093,
  parameter ICAP_AUTO_SWITCH = "DISABLE",
  parameter SIM_CFG_FILE_NAME = "NONE"
)(
  output AVAIL,
  output [31:0] O,
  output PRDONE,
  output PRERROR,

  input CLK,
  input CSIB,
  input [31:0] I,
  input RDWRB
);
endmodule


module IDDR (Q1, Q2, C, CE, D, R, S);
    output Q1;
    output Q2;
    input C;
    input CE;
    input D;
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_D_INVERTED = 1'b0;
    parameter SRTYPE = "SYNC";
    parameter LOC = "UNPLACED";
    parameter MSGON = "TRUE";
    parameter XON = "TRUE";
endmodule // IDDR


module IDDRE1 #(
  parameter DDR_CLK_EDGE = "OPPOSITE_EDGE",
  parameter [0:0] IS_CB_INVERTED = 1'b0,
  parameter [0:0] IS_C_INVERTED = 1'b0
)(
  output Q1,
  output Q2,

  input C,
  input CB,
  input D,
  input R
);
endmodule


module IDDR_2CLK (Q1, Q2, C, CB, CE, D, R, S);
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter [0:0] IS_CB_INVERTED = 1'b0;
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_D_INVERTED = 1'b0;
    parameter SRTYPE = "SYNC";
     parameter LOC = "UNPLACED";
    output Q1;
    output Q2;
    input C;
    input CB;
    input CE;
    input D;
    input R;
    input S;
endmodule // IDDR_2CLK


module IDELAYCTRL #(
  parameter SIM_DEVICE = "7SERIES"
)(
  output RDY,

  input REFCLK,
  input RST
);
endmodule


module IDELAYE2 (CNTVALUEOUT, DATAOUT, C, CE, CINVCTRL, CNTVALUEIN, DATAIN, IDATAIN, INC, LD, LDPIPEEN, REGRST);
    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "IDATAIN";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter IDELAY_TYPE  = "FIXED";
    parameter integer IDELAY_VALUE = 0;
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_DATAIN_INVERTED = 1'b0;
    parameter [0:0] IS_IDATAIN_INVERTED = 1'b0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    output [4:0] CNTVALUEOUT;
    output DATAOUT;
    input C;
    input CE;
    input CINVCTRL;
    input [4:0] CNTVALUEIN;
    input DATAIN;
    input IDATAIN;
    input INC;
    input LD;
    input LDPIPEEN;
    input REGRST;
endmodule // IDELAYE2


module IDELAYE2_FINEDELAY (
  CNTVALUEOUT,
  DATAOUT,

  C,
  CE,
  CINVCTRL,
  CNTVALUEIN,
  DATAIN,
  IDATAIN,
  IFDLY,
  INC,
  LD,
  LDPIPEEN,
  REGRST
);
    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "IDATAIN";
    parameter FINEDELAY = "BYPASS";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter IDELAY_TYPE  = "FIXED";
    parameter integer IDELAY_VALUE = 0;
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_DATAIN_INVERTED = 1'b0;
    parameter [0:0] IS_IDATAIN_INVERTED = 1'b0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    output [4:0] CNTVALUEOUT;
    output DATAOUT;
    input C;
    input CE;
    input CINVCTRL;
    input [4:0] CNTVALUEIN;
    input DATAIN;
    input IDATAIN;
    input [2:0] IFDLY;
    input INC;
    input LD;
    input LDPIPEEN;
    input REGRST;
endmodule // IDELAYE2_FINEDELAY


module IDELAYE3 #(
  parameter CASCADE = "NONE",
  parameter DELAY_FORMAT = "TIME",
  parameter DELAY_SRC = "IDATAIN",
  parameter DELAY_TYPE = "FIXED",
  parameter integer DELAY_VALUE = 0,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter LOOPBACK = "FALSE",
  parameter real REFCLK_FREQUENCY = 300.0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter real SIM_VERSION = 2.0,
  parameter UPDATE_MODE = "ASYNC"
)(
  output CASC_OUT,
  output [8:0] CNTVALUEOUT,
  output DATAOUT,

  input CASC_IN,
  input CASC_RETURN,
  input CE,
  input CLK,
  input [8:0] CNTVALUEIN,
  input DATAIN,
  input EN_VTC,
  input IDATAIN,
  input INC,
  input LOAD,
  input RST
);
endmodule


module ILKN #(
  parameter BYPASS = "FALSE",
  parameter [1:0] CTL_RX_BURSTMAX = 2'h3,
  parameter [1:0] CTL_RX_CHAN_EXT = 2'h0,
  parameter [3:0] CTL_RX_LAST_LANE = 4'hB,
  parameter [15:0] CTL_RX_MFRAMELEN_MINUS1 = 16'h07FF,
  parameter CTL_RX_PACKET_MODE = "TRUE",
  parameter [2:0] CTL_RX_RETRANS_MULT = 3'h0,
  parameter [3:0] CTL_RX_RETRANS_RETRY = 4'h2,
  parameter [15:0] CTL_RX_RETRANS_TIMER1 = 16'h0000,
  parameter [15:0] CTL_RX_RETRANS_TIMER2 = 16'h0008,
  parameter [11:0] CTL_RX_RETRANS_WDOG = 12'h000,
  parameter [7:0] CTL_RX_RETRANS_WRAP_TIMER = 8'h00,
  parameter CTL_TEST_MODE_PIN_CHAR = "FALSE",
  parameter [1:0] CTL_TX_BURSTMAX = 2'h3,
  parameter [2:0] CTL_TX_BURSTSHORT = 3'h1,
  parameter [1:0] CTL_TX_CHAN_EXT = 2'h0,
  parameter CTL_TX_DISABLE_SKIPWORD = "TRUE",
  parameter [6:0] CTL_TX_FC_CALLEN = 7'h00,
  parameter [3:0] CTL_TX_LAST_LANE = 4'hB,
  parameter [15:0] CTL_TX_MFRAMELEN_MINUS1 = 16'h07FF,
  parameter [13:0] CTL_TX_RETRANS_DEPTH = 14'h0800,
  parameter [2:0] CTL_TX_RETRANS_MULT = 3'h0,
  parameter [1:0] CTL_TX_RETRANS_RAM_BANKS = 2'h3,
  parameter MODE = "TRUE",
  parameter SIM_VERSION = "2.0",
  parameter TEST_MODE_PIN_CHAR = "FALSE"
)(
  output [15:0] DRP_DO,
  output DRP_RDY,
  output [65:0] RX_BYPASS_DATAOUT00,
  output [65:0] RX_BYPASS_DATAOUT01,
  output [65:0] RX_BYPASS_DATAOUT02,
  output [65:0] RX_BYPASS_DATAOUT03,
  output [65:0] RX_BYPASS_DATAOUT04,
  output [65:0] RX_BYPASS_DATAOUT05,
  output [65:0] RX_BYPASS_DATAOUT06,
  output [65:0] RX_BYPASS_DATAOUT07,
  output [65:0] RX_BYPASS_DATAOUT08,
  output [65:0] RX_BYPASS_DATAOUT09,
  output [65:0] RX_BYPASS_DATAOUT10,
  output [65:0] RX_BYPASS_DATAOUT11,
  output [11:0] RX_BYPASS_ENAOUT,
  output [11:0] RX_BYPASS_IS_AVAILOUT,
  output [11:0] RX_BYPASS_IS_BADLYFRAMEDOUT,
  output [11:0] RX_BYPASS_IS_OVERFLOWOUT,
  output [11:0] RX_BYPASS_IS_SYNCEDOUT,
  output [11:0] RX_BYPASS_IS_SYNCWORDOUT,
  output [10:0] RX_CHANOUT0,
  output [10:0] RX_CHANOUT1,
  output [10:0] RX_CHANOUT2,
  output [10:0] RX_CHANOUT3,
  output [127:0] RX_DATAOUT0,
  output [127:0] RX_DATAOUT1,
  output [127:0] RX_DATAOUT2,
  output [127:0] RX_DATAOUT3,
  output RX_ENAOUT0,
  output RX_ENAOUT1,
  output RX_ENAOUT2,
  output RX_ENAOUT3,
  output RX_EOPOUT0,
  output RX_EOPOUT1,
  output RX_EOPOUT2,
  output RX_EOPOUT3,
  output RX_ERROUT0,
  output RX_ERROUT1,
  output RX_ERROUT2,
  output RX_ERROUT3,
  output [3:0] RX_MTYOUT0,
  output [3:0] RX_MTYOUT1,
  output [3:0] RX_MTYOUT2,
  output [3:0] RX_MTYOUT3,
  output RX_OVFOUT,
  output RX_SOPOUT0,
  output RX_SOPOUT1,
  output RX_SOPOUT2,
  output RX_SOPOUT3,
  output STAT_RX_ALIGNED,
  output STAT_RX_ALIGNED_ERR,
  output [11:0] STAT_RX_BAD_TYPE_ERR,
  output STAT_RX_BURSTMAX_ERR,
  output STAT_RX_BURST_ERR,
  output STAT_RX_CRC24_ERR,
  output [11:0] STAT_RX_CRC32_ERR,
  output [11:0] STAT_RX_CRC32_VALID,
  output [11:0] STAT_RX_DESCRAM_ERR,
  output [11:0] STAT_RX_DIAGWORD_INTFSTAT,
  output [11:0] STAT_RX_DIAGWORD_LANESTAT,
  output [255:0] STAT_RX_FC_STAT,
  output [11:0] STAT_RX_FRAMING_ERR,
  output STAT_RX_MEOP_ERR,
  output [11:0] STAT_RX_MF_ERR,
  output [11:0] STAT_RX_MF_LEN_ERR,
  output [11:0] STAT_RX_MF_REPEAT_ERR,
  output STAT_RX_MISALIGNED,
  output STAT_RX_MSOP_ERR,
  output [7:0] STAT_RX_MUBITS,
  output STAT_RX_MUBITS_UPDATED,
  output STAT_RX_OVERFLOW_ERR,
  output STAT_RX_RETRANS_CRC24_ERR,
  output STAT_RX_RETRANS_DISC,
  output [15:0] STAT_RX_RETRANS_LATENCY,
  output STAT_RX_RETRANS_REQ,
  output STAT_RX_RETRANS_RETRY_ERR,
  output [7:0] STAT_RX_RETRANS_SEQ,
  output STAT_RX_RETRANS_SEQ_UPDATED,
  output [2:0] STAT_RX_RETRANS_STATE,
  output [4:0] STAT_RX_RETRANS_SUBSEQ,
  output STAT_RX_RETRANS_WDOG_ERR,
  output STAT_RX_RETRANS_WRAP_ERR,
  output [11:0] STAT_RX_SYNCED,
  output [11:0] STAT_RX_SYNCED_ERR,
  output [11:0] STAT_RX_WORD_SYNC,
  output STAT_TX_BURST_ERR,
  output STAT_TX_ERRINJ_BITERR_DONE,
  output STAT_TX_OVERFLOW_ERR,
  output STAT_TX_RETRANS_BURST_ERR,
  output STAT_TX_RETRANS_BUSY,
  output STAT_TX_RETRANS_RAM_PERROUT,
  output [8:0] STAT_TX_RETRANS_RAM_RADDR,
  output STAT_TX_RETRANS_RAM_RD_B0,
  output STAT_TX_RETRANS_RAM_RD_B1,
  output STAT_TX_RETRANS_RAM_RD_B2,
  output STAT_TX_RETRANS_RAM_RD_B3,
  output [1:0] STAT_TX_RETRANS_RAM_RSEL,
  output [8:0] STAT_TX_RETRANS_RAM_WADDR,
  output [643:0] STAT_TX_RETRANS_RAM_WDATA,
  output STAT_TX_RETRANS_RAM_WE_B0,
  output STAT_TX_RETRANS_RAM_WE_B1,
  output STAT_TX_RETRANS_RAM_WE_B2,
  output STAT_TX_RETRANS_RAM_WE_B3,
  output STAT_TX_UNDERFLOW_ERR,
  output TX_OVFOUT,
  output TX_RDYOUT,
  output [63:0] TX_SERDES_DATA00,
  output [63:0] TX_SERDES_DATA01,
  output [63:0] TX_SERDES_DATA02,
  output [63:0] TX_SERDES_DATA03,
  output [63:0] TX_SERDES_DATA04,
  output [63:0] TX_SERDES_DATA05,
  output [63:0] TX_SERDES_DATA06,
  output [63:0] TX_SERDES_DATA07,
  output [63:0] TX_SERDES_DATA08,
  output [63:0] TX_SERDES_DATA09,
  output [63:0] TX_SERDES_DATA10,
  output [63:0] TX_SERDES_DATA11,

  input CORE_CLK,
  input CTL_RX_FORCE_RESYNC,
  input CTL_RX_RETRANS_ACK,
  input CTL_RX_RETRANS_ENABLE,
  input CTL_RX_RETRANS_ERRIN,
  input CTL_RX_RETRANS_FORCE_REQ,
  input CTL_RX_RETRANS_RESET,
  input CTL_RX_RETRANS_RESET_MODE,
  input CTL_TX_DIAGWORD_INTFSTAT,
  input [11:0] CTL_TX_DIAGWORD_LANESTAT,
  input CTL_TX_ENABLE,
  input CTL_TX_ERRINJ_BITERR_GO,
  input [3:0] CTL_TX_ERRINJ_BITERR_LANE,
  input [255:0] CTL_TX_FC_STAT,
  input [7:0] CTL_TX_MUBITS,
  input CTL_TX_RETRANS_ENABLE,
  input CTL_TX_RETRANS_RAM_PERRIN,
  input [643:0] CTL_TX_RETRANS_RAM_RDATA,
  input CTL_TX_RETRANS_REQ,
  input CTL_TX_RETRANS_REQ_VALID,
  input [11:0] CTL_TX_RLIM_DELTA,
  input CTL_TX_RLIM_ENABLE,
  input [7:0] CTL_TX_RLIM_INTV,
  input [11:0] CTL_TX_RLIM_MAX,
  input [9:0] DRP_ADDR,
  input DRP_CLK,
  input [15:0] DRP_DI,
  input DRP_EN,
  input DRP_WE,
  input LBUS_CLK,
  input RX_BYPASS_FORCE_REALIGNIN,
  input RX_BYPASS_RDIN,
  input RX_RESET,
  input [11:0] RX_SERDES_CLK,
  input [63:0] RX_SERDES_DATA00,
  input [63:0] RX_SERDES_DATA01,
  input [63:0] RX_SERDES_DATA02,
  input [63:0] RX_SERDES_DATA03,
  input [63:0] RX_SERDES_DATA04,
  input [63:0] RX_SERDES_DATA05,
  input [63:0] RX_SERDES_DATA06,
  input [63:0] RX_SERDES_DATA07,
  input [63:0] RX_SERDES_DATA08,
  input [63:0] RX_SERDES_DATA09,
  input [63:0] RX_SERDES_DATA10,
  input [63:0] RX_SERDES_DATA11,
  input [11:0] RX_SERDES_RESET,
  input TX_BCTLIN0,
  input TX_BCTLIN1,
  input TX_BCTLIN2,
  input TX_BCTLIN3,
  input [11:0] TX_BYPASS_CTRLIN,
  input [63:0] TX_BYPASS_DATAIN00,
  input [63:0] TX_BYPASS_DATAIN01,
  input [63:0] TX_BYPASS_DATAIN02,
  input [63:0] TX_BYPASS_DATAIN03,
  input [63:0] TX_BYPASS_DATAIN04,
  input [63:0] TX_BYPASS_DATAIN05,
  input [63:0] TX_BYPASS_DATAIN06,
  input [63:0] TX_BYPASS_DATAIN07,
  input [63:0] TX_BYPASS_DATAIN08,
  input [63:0] TX_BYPASS_DATAIN09,
  input [63:0] TX_BYPASS_DATAIN10,
  input [63:0] TX_BYPASS_DATAIN11,
  input TX_BYPASS_ENAIN,
  input [7:0] TX_BYPASS_GEARBOX_SEQIN,
  input [3:0] TX_BYPASS_MFRAMER_STATEIN,
  input [10:0] TX_CHANIN0,
  input [10:0] TX_CHANIN1,
  input [10:0] TX_CHANIN2,
  input [10:0] TX_CHANIN3,
  input [127:0] TX_DATAIN0,
  input [127:0] TX_DATAIN1,
  input [127:0] TX_DATAIN2,
  input [127:0] TX_DATAIN3,
  input TX_ENAIN0,
  input TX_ENAIN1,
  input TX_ENAIN2,
  input TX_ENAIN3,
  input TX_EOPIN0,
  input TX_EOPIN1,
  input TX_EOPIN2,
  input TX_EOPIN3,
  input TX_ERRIN0,
  input TX_ERRIN1,
  input TX_ERRIN2,
  input TX_ERRIN3,
  input [3:0] TX_MTYIN0,
  input [3:0] TX_MTYIN1,
  input [3:0] TX_MTYIN2,
  input [3:0] TX_MTYIN3,
  input TX_RESET,
  input TX_SERDES_REFCLK,
  input TX_SERDES_REFCLK_RESET,
  input TX_SOPIN0,
  input TX_SOPIN1,
  input TX_SOPIN2,
  input TX_SOPIN3
);
endmodule


module ILKNE4 #(
  parameter BYPASS = "FALSE",
  parameter [1:0] CTL_RX_BURSTMAX = 2'h3,
  parameter [1:0] CTL_RX_CHAN_EXT = 2'h0,
  parameter [3:0] CTL_RX_LAST_LANE = 4'hB,
  parameter [15:0] CTL_RX_MFRAMELEN_MINUS1 = 16'h07FF,
  parameter CTL_RX_PACKET_MODE = "FALSE",
  parameter [2:0] CTL_RX_RETRANS_MULT = 3'h0,
  parameter [3:0] CTL_RX_RETRANS_RETRY = 4'h2,
  parameter [15:0] CTL_RX_RETRANS_TIMER1 = 16'h0009,
  parameter [15:0] CTL_RX_RETRANS_TIMER2 = 16'h0000,
  parameter [11:0] CTL_RX_RETRANS_WDOG = 12'h000,
  parameter [7:0] CTL_RX_RETRANS_WRAP_TIMER = 8'h00,
  parameter CTL_TEST_MODE_PIN_CHAR = "FALSE",
  parameter [1:0] CTL_TX_BURSTMAX = 2'h3,
  parameter [2:0] CTL_TX_BURSTSHORT = 3'h1,
  parameter [1:0] CTL_TX_CHAN_EXT = 2'h0,
  parameter CTL_TX_DISABLE_SKIPWORD = "FALSE",
  parameter [3:0] CTL_TX_FC_CALLEN = 4'hF,
  parameter [3:0] CTL_TX_LAST_LANE = 4'hB,
  parameter [15:0] CTL_TX_MFRAMELEN_MINUS1 = 16'h07FF,
  parameter [13:0] CTL_TX_RETRANS_DEPTH = 14'h0800,
  parameter [2:0] CTL_TX_RETRANS_MULT = 3'h0,
  parameter [1:0] CTL_TX_RETRANS_RAM_BANKS = 2'h3,
  parameter MODE = "TRUE",
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter TEST_MODE_PIN_CHAR = "FALSE"
)(
  output [15:0] DRP_DO,
  output DRP_RDY,
  output [65:0] RX_BYPASS_DATAOUT00,
  output [65:0] RX_BYPASS_DATAOUT01,
  output [65:0] RX_BYPASS_DATAOUT02,
  output [65:0] RX_BYPASS_DATAOUT03,
  output [65:0] RX_BYPASS_DATAOUT04,
  output [65:0] RX_BYPASS_DATAOUT05,
  output [65:0] RX_BYPASS_DATAOUT06,
  output [65:0] RX_BYPASS_DATAOUT07,
  output [65:0] RX_BYPASS_DATAOUT08,
  output [65:0] RX_BYPASS_DATAOUT09,
  output [65:0] RX_BYPASS_DATAOUT10,
  output [65:0] RX_BYPASS_DATAOUT11,
  output [11:0] RX_BYPASS_ENAOUT,
  output [11:0] RX_BYPASS_IS_AVAILOUT,
  output [11:0] RX_BYPASS_IS_BADLYFRAMEDOUT,
  output [11:0] RX_BYPASS_IS_OVERFLOWOUT,
  output [11:0] RX_BYPASS_IS_SYNCEDOUT,
  output [11:0] RX_BYPASS_IS_SYNCWORDOUT,
  output [10:0] RX_CHANOUT0,
  output [10:0] RX_CHANOUT1,
  output [10:0] RX_CHANOUT2,
  output [10:0] RX_CHANOUT3,
  output [127:0] RX_DATAOUT0,
  output [127:0] RX_DATAOUT1,
  output [127:0] RX_DATAOUT2,
  output [127:0] RX_DATAOUT3,
  output RX_ENAOUT0,
  output RX_ENAOUT1,
  output RX_ENAOUT2,
  output RX_ENAOUT3,
  output RX_EOPOUT0,
  output RX_EOPOUT1,
  output RX_EOPOUT2,
  output RX_EOPOUT3,
  output RX_ERROUT0,
  output RX_ERROUT1,
  output RX_ERROUT2,
  output RX_ERROUT3,
  output [3:0] RX_MTYOUT0,
  output [3:0] RX_MTYOUT1,
  output [3:0] RX_MTYOUT2,
  output [3:0] RX_MTYOUT3,
  output RX_OVFOUT,
  output RX_SOPOUT0,
  output RX_SOPOUT1,
  output RX_SOPOUT2,
  output RX_SOPOUT3,
  output STAT_RX_ALIGNED,
  output STAT_RX_ALIGNED_ERR,
  output [11:0] STAT_RX_BAD_TYPE_ERR,
  output STAT_RX_BURSTMAX_ERR,
  output STAT_RX_BURST_ERR,
  output STAT_RX_CRC24_ERR,
  output [11:0] STAT_RX_CRC32_ERR,
  output [11:0] STAT_RX_CRC32_VALID,
  output [11:0] STAT_RX_DESCRAM_ERR,
  output [11:0] STAT_RX_DIAGWORD_INTFSTAT,
  output [11:0] STAT_RX_DIAGWORD_LANESTAT,
  output [255:0] STAT_RX_FC_STAT,
  output [11:0] STAT_RX_FRAMING_ERR,
  output STAT_RX_MEOP_ERR,
  output [11:0] STAT_RX_MF_ERR,
  output [11:0] STAT_RX_MF_LEN_ERR,
  output [11:0] STAT_RX_MF_REPEAT_ERR,
  output STAT_RX_MISALIGNED,
  output STAT_RX_MSOP_ERR,
  output [7:0] STAT_RX_MUBITS,
  output STAT_RX_MUBITS_UPDATED,
  output STAT_RX_OVERFLOW_ERR,
  output STAT_RX_RETRANS_CRC24_ERR,
  output STAT_RX_RETRANS_DISC,
  output [15:0] STAT_RX_RETRANS_LATENCY,
  output STAT_RX_RETRANS_REQ,
  output STAT_RX_RETRANS_RETRY_ERR,
  output [7:0] STAT_RX_RETRANS_SEQ,
  output STAT_RX_RETRANS_SEQ_UPDATED,
  output [2:0] STAT_RX_RETRANS_STATE,
  output [4:0] STAT_RX_RETRANS_SUBSEQ,
  output STAT_RX_RETRANS_WDOG_ERR,
  output STAT_RX_RETRANS_WRAP_ERR,
  output [11:0] STAT_RX_SYNCED,
  output [11:0] STAT_RX_SYNCED_ERR,
  output [11:0] STAT_RX_WORD_SYNC,
  output STAT_TX_BURST_ERR,
  output STAT_TX_ERRINJ_BITERR_DONE,
  output STAT_TX_OVERFLOW_ERR,
  output STAT_TX_RETRANS_BURST_ERR,
  output STAT_TX_RETRANS_BUSY,
  output STAT_TX_RETRANS_RAM_PERROUT,
  output [8:0] STAT_TX_RETRANS_RAM_RADDR,
  output STAT_TX_RETRANS_RAM_RD_B0,
  output STAT_TX_RETRANS_RAM_RD_B1,
  output STAT_TX_RETRANS_RAM_RD_B2,
  output STAT_TX_RETRANS_RAM_RD_B3,
  output [1:0] STAT_TX_RETRANS_RAM_RSEL,
  output [8:0] STAT_TX_RETRANS_RAM_WADDR,
  output [643:0] STAT_TX_RETRANS_RAM_WDATA,
  output STAT_TX_RETRANS_RAM_WE_B0,
  output STAT_TX_RETRANS_RAM_WE_B1,
  output STAT_TX_RETRANS_RAM_WE_B2,
  output STAT_TX_RETRANS_RAM_WE_B3,
  output STAT_TX_UNDERFLOW_ERR,
  output TX_OVFOUT,
  output TX_RDYOUT,
  output [63:0] TX_SERDES_DATA00,
  output [63:0] TX_SERDES_DATA01,
  output [63:0] TX_SERDES_DATA02,
  output [63:0] TX_SERDES_DATA03,
  output [63:0] TX_SERDES_DATA04,
  output [63:0] TX_SERDES_DATA05,
  output [63:0] TX_SERDES_DATA06,
  output [63:0] TX_SERDES_DATA07,
  output [63:0] TX_SERDES_DATA08,
  output [63:0] TX_SERDES_DATA09,
  output [63:0] TX_SERDES_DATA10,
  output [63:0] TX_SERDES_DATA11,

  input CORE_CLK,
  input CTL_RX_FORCE_RESYNC,
  input CTL_RX_RETRANS_ACK,
  input CTL_RX_RETRANS_ENABLE,
  input CTL_RX_RETRANS_ERRIN,
  input CTL_RX_RETRANS_FORCE_REQ,
  input CTL_RX_RETRANS_RESET,
  input CTL_RX_RETRANS_RESET_MODE,
  input CTL_TX_DIAGWORD_INTFSTAT,
  input [11:0] CTL_TX_DIAGWORD_LANESTAT,
  input CTL_TX_ENABLE,
  input CTL_TX_ERRINJ_BITERR_GO,
  input [3:0] CTL_TX_ERRINJ_BITERR_LANE,
  input [255:0] CTL_TX_FC_STAT,
  input [7:0] CTL_TX_MUBITS,
  input CTL_TX_RETRANS_ENABLE,
  input CTL_TX_RETRANS_RAM_PERRIN,
  input [643:0] CTL_TX_RETRANS_RAM_RDATA,
  input CTL_TX_RETRANS_REQ,
  input CTL_TX_RETRANS_REQ_VALID,
  input [11:0] CTL_TX_RLIM_DELTA,
  input CTL_TX_RLIM_ENABLE,
  input [7:0] CTL_TX_RLIM_INTV,
  input [11:0] CTL_TX_RLIM_MAX,
  input [9:0] DRP_ADDR,
  input DRP_CLK,
  input [15:0] DRP_DI,
  input DRP_EN,
  input DRP_WE,
  input LBUS_CLK,
  input RX_BYPASS_FORCE_REALIGNIN,
  input RX_BYPASS_RDIN,
  input RX_RESET,
  input [11:0] RX_SERDES_CLK,
  input [63:0] RX_SERDES_DATA00,
  input [63:0] RX_SERDES_DATA01,
  input [63:0] RX_SERDES_DATA02,
  input [63:0] RX_SERDES_DATA03,
  input [63:0] RX_SERDES_DATA04,
  input [63:0] RX_SERDES_DATA05,
  input [63:0] RX_SERDES_DATA06,
  input [63:0] RX_SERDES_DATA07,
  input [63:0] RX_SERDES_DATA08,
  input [63:0] RX_SERDES_DATA09,
  input [63:0] RX_SERDES_DATA10,
  input [63:0] RX_SERDES_DATA11,
  input [11:0] RX_SERDES_RESET,
  input TX_BCTLIN0,
  input TX_BCTLIN1,
  input TX_BCTLIN2,
  input TX_BCTLIN3,
  input [11:0] TX_BYPASS_CTRLIN,
  input [63:0] TX_BYPASS_DATAIN00,
  input [63:0] TX_BYPASS_DATAIN01,
  input [63:0] TX_BYPASS_DATAIN02,
  input [63:0] TX_BYPASS_DATAIN03,
  input [63:0] TX_BYPASS_DATAIN04,
  input [63:0] TX_BYPASS_DATAIN05,
  input [63:0] TX_BYPASS_DATAIN06,
  input [63:0] TX_BYPASS_DATAIN07,
  input [63:0] TX_BYPASS_DATAIN08,
  input [63:0] TX_BYPASS_DATAIN09,
  input [63:0] TX_BYPASS_DATAIN10,
  input [63:0] TX_BYPASS_DATAIN11,
  input TX_BYPASS_ENAIN,
  input [7:0] TX_BYPASS_GEARBOX_SEQIN,
  input [3:0] TX_BYPASS_MFRAMER_STATEIN,
  input [10:0] TX_CHANIN0,
  input [10:0] TX_CHANIN1,
  input [10:0] TX_CHANIN2,
  input [10:0] TX_CHANIN3,
  input [127:0] TX_DATAIN0,
  input [127:0] TX_DATAIN1,
  input [127:0] TX_DATAIN2,
  input [127:0] TX_DATAIN3,
  input TX_ENAIN0,
  input TX_ENAIN1,
  input TX_ENAIN2,
  input TX_ENAIN3,
  input TX_EOPIN0,
  input TX_EOPIN1,
  input TX_EOPIN2,
  input TX_EOPIN3,
  input TX_ERRIN0,
  input TX_ERRIN1,
  input TX_ERRIN2,
  input TX_ERRIN3,
  input [3:0] TX_MTYIN0,
  input [3:0] TX_MTYIN1,
  input [3:0] TX_MTYIN2,
  input [3:0] TX_MTYIN3,
  input TX_RESET,
  input TX_SERDES_REFCLK,
  input TX_SERDES_REFCLK_RESET,
  input TX_SOPIN0,
  input TX_SOPIN1,
  input TX_SOPIN2,
  input TX_SOPIN3
);
endmodule


module INBUF #(
  parameter IBUF_LOW_PWR = "TRUE",
  parameter ISTANDARD = "UNUSED",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0
)(
  output O,

  input [3:0] OSC,
  input OSC_EN,
  input PAD,
  input VREF
);
endmodule


module INV (O, I);
  parameter LOC = "UNPLACED";
  output O;
  input I;
endmodule


module IN_FIFO (
  ALMOSTEMPTY,
  ALMOSTFULL,
  EMPTY,
  FULL,
  Q0,
  Q1,
  Q2,
  Q3,
  Q4,
  Q5,
  Q6,
  Q7,
  Q8,
  Q9,

  D0,
  D1,
  D2,
  D3,
  D4,
  D5,
  D6,
  D7,
  D8,
  D9,
  RDCLK,
  RDEN,
  RESET,
  WRCLK,
  WREN
);
  parameter LOC = "UNPLACED";
  parameter integer ALMOST_EMPTY_VALUE = 1;
  parameter integer ALMOST_FULL_VALUE = 1;
  parameter ARRAY_MODE = "ARRAY_MODE_4_X_8";
  parameter SYNCHRONOUS_MODE = "FALSE";
  output ALMOSTEMPTY;
  output ALMOSTFULL;
  output EMPTY;
  output FULL;
  output [7:0] Q0;
  output [7:0] Q1;
  output [7:0] Q2;
  output [7:0] Q3;
  output [7:0] Q4;
  output [7:0] Q5;
  output [7:0] Q6;
  output [7:0] Q7;
  output [7:0] Q8;
  output [7:0] Q9;
  input RDCLK;
  input RDEN;
  input RESET;
  input WRCLK;
  input WREN;
  input [3:0] D0;
  input [3:0] D1;
  input [3:0] D2;
  input [3:0] D3;
  input [3:0] D4;
  input [3:0] D7;
  input [3:0] D8;
  input [3:0] D9;
  input [7:0] D5;
  input [7:0] D6;
endmodule // IN_FIFO


module IOBUF (O, IO, I, T);
    parameter integer DRIVE = 12;
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    parameter SLEW = "SLOW";
    output O;
    input  I, T;
endmodule


module IOBUFDS (O, IO, IOB, I, T);
    parameter LOC = "UNPLACED";
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    output O;
    input  I, T;
endmodule


module IOBUFDSE3 #(
  parameter DIFF_TERM = "FALSE",
  parameter DQS_BIAS = "FALSE",
  parameter IBUF_LOW_PWR = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0,
  parameter USE_IBUFDISABLE = "FALSE"
)(
  output O,

  inout IO,
  inout IOB,

  input DCITERMDISABLE,
  input I,
  input IBUFDISABLE,
  input [3:0] OSC,
  input [1:0] OSC_EN,
  input T
);
endmodule


module IOBUFDS_DCIEN (O, IO, IOB, DCITERMDISABLE, I, IBUFDISABLE, T);
    parameter LOC = "UNPLACED";
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  DCITERMDISABLE;
    input  I;
    input  IBUFDISABLE;
    input  T;
endmodule


module IOBUFDS_DIFF_OUT (O, OB, IO, IOB, I, TM, TS);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    output O;
    output OB;
    input  I;
    input  TM;
    input  TS;
endmodule


module IOBUFDS_DIFF_OUT_DCIEN (O, OB, IO, IOB, DCITERMDISABLE, I, IBUFDISABLE, TM, TS);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    output OB;
    input  DCITERMDISABLE;
    input  I;
    input  IBUFDISABLE;
    input  TM;
    input  TS;
endmodule


module IOBUFDS_DIFF_OUT_INTERMDISABLE (O, OB, IO, IOB, I, IBUFDISABLE, INTERMDISABLE, TM, TS);
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    output OB;
    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
    input  TM;
    input  TS;
endmodule


module IOBUFDS_INTERMDISABLE (O, IO, IOB, I, IBUFDISABLE, INTERMDISABLE, T);
    parameter LOC = "UNPLACED";
    parameter DIFF_TERM = "FALSE";
    parameter DQS_BIAS = "FALSE";
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";
    output O;
    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
    input  T;
endmodule


module IOBUFE3 #(
  parameter integer DRIVE = 12,
  parameter IBUF_LOW_PWR = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter integer SIM_INPUT_BUFFER_OFFSET = 0,
  parameter USE_IBUFDISABLE = "FALSE"
)(
  output O,

  inout IO,

  input DCITERMDISABLE,
  input I,
  input IBUFDISABLE,
  input [3:0] OSC,
  input OSC_EN,
  input T,
  input VREF
);
endmodule


module IOBUF_ANALOG #(
  parameter integer DRIVE = 12,
  parameter IBUF_LOW_PWR = "TRUE",
  parameter IOSTANDARD = "DEFAULT",
  parameter SLEW = "SLOW"
)(
  output O,

  inout IO,

  input I,
  input T
);
endmodule


module IOBUF_DCIEN (O, IO, DCITERMDISABLE, I, IBUFDISABLE, T);
    parameter integer DRIVE = 12;
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    input  DCITERMDISABLE;
    input  I;
    input  IBUFDISABLE;
    input  T;
endmodule


module IOBUF_INTERMDISABLE (O, IO, I, IBUFDISABLE, INTERMDISABLE, T);
    parameter integer DRIVE = 12;
    parameter IBUF_LOW_PWR = "TRUE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SIM_DEVICE = "7SERIES";
    parameter SLEW = "SLOW";
    parameter USE_IBUFDISABLE = "TRUE";
    parameter LOC = "UNPLACED";
    output O;
    input  I;
    input  IBUFDISABLE;
    input  INTERMDISABLE;
    input  T;
endmodule


module ISERDES (O, Q1, Q2, Q3, Q4, Q5, Q6, SHIFTOUT1, SHIFTOUT2,
		BITSLIP, CE1, CE2, CLK, CLKDIV, D, DLYCE, DLYINC, DLYRST, OCLK, REV, SHIFTIN1, SHIFTIN2, SR);
    output O;
    output Q1;
    output Q2;
    output Q3;
    output Q4;
    output Q5;
    output Q6;
    output SHIFTOUT1;
    output SHIFTOUT2;
    input BITSLIP;
    input CE1;
    input CE2;
    input CLK;
    input CLKDIV;
    input D;
    input DLYCE;
    input DLYINC;
    input DLYRST;
    input OCLK;
    input REV;
    input SHIFTIN1;
    input SHIFTIN2;
    input SR;
    parameter BITSLIP_ENABLE = "FALSE";
    parameter DATA_RATE = "DDR";
    parameter integer DATA_WIDTH = 4;
    parameter [0:0] INIT_Q1 = 1'b0;
    parameter [0:0] INIT_Q2 = 1'b0;
    parameter [0:0] INIT_Q3 = 1'b0;
    parameter [0:0] INIT_Q4 = 1'b0;
    parameter INTERFACE_TYPE = "MEMORY";
    parameter IOBDELAY = "NONE";
    parameter IOBDELAY_TYPE = "DEFAULT";
    parameter integer IOBDELAY_VALUE = 0;
    parameter integer NUM_CE = 2;
    parameter SERDES_MODE = "MASTER";
    parameter integer SIM_DELAY_D = 0;
    parameter integer SIM_SETUP_D_CLK = 0;
    parameter integer SIM_HOLD_D_CLK = 0;
    parameter [0:0] SRVAL_Q1 = 1'b0;
    parameter [0:0] SRVAL_Q2 = 1'b0;
    parameter [0:0] SRVAL_Q3 = 1'b0;
    parameter [0:0] SRVAL_Q4 = 1'b0;    
    parameter LOC = "UNPLACED";
    parameter integer SIM_TAPDELAY_VALUE = 75;
endmodule // ISERDES

    
module ISERDESE1 (O, Q1, Q2, Q3, Q4, Q5, Q6, SHIFTOUT1, SHIFTOUT2,
                  BITSLIP, CE1, CE2, CLK, CLKB, CLKDIV, D, DDLY, DYNCLKDIVSEL, DYNCLKSEL, OCLK, OFB, RST, SHIFTIN1, SHIFTIN2);
    parameter DATA_RATE = "DDR";
    parameter integer DATA_WIDTH = 4;
    parameter DYN_CLKDIV_INV_EN = "FALSE";
    parameter DYN_CLK_INV_EN = "FALSE";
    parameter [0:0] INIT_Q1 = 1'b0;
    parameter [0:0] INIT_Q2 = 1'b0;
    parameter [0:0] INIT_Q3 = 1'b0;
    parameter [0:0] INIT_Q4 = 1'b0;
    parameter INTERFACE_TYPE = "MEMORY";
    parameter integer NUM_CE = 2;
    parameter IOBDELAY = "NONE";
    parameter OFB_USED = "FALSE";
    parameter SERDES_MODE = "MASTER";
    parameter [0:0] SRVAL_Q1 = 1'b0;
    parameter [0:0] SRVAL_Q2 = 1'b0;
    parameter [0:0] SRVAL_Q3 = 1'b0;
    parameter [0:0] SRVAL_Q4 = 1'b0;
     parameter LOC = "UNPLACED";
    output O;
    output Q1;
    output Q2;
    output Q3;
    output Q4;
    output Q5;
    output Q6;
    output SHIFTOUT1;
    output SHIFTOUT2;
    input BITSLIP;
    input CE1;
    input CE2;
    input CLK;
    input CLKB;
    input CLKDIV;
    input D;
    input DDLY;
    input DYNCLKDIVSEL;
    input DYNCLKSEL;
    input OCLK;
    input OFB;
    input RST;
    input SHIFTIN1;
    input SHIFTIN2;
endmodule


module LUT5 #(
  parameter [31:0] INIT = 32'h00000000
)(
  output O,

  input I0,
  input I1,
  input I2,
  input I3,
  input I4
);
endmodule


module LUT6 #(
  parameter [63:0] INIT = 64'h0000000000000000
)(
  output O,

  input I0,
  input I1,
  input I2,
  input I3,
  input I4,
  input I5
);
endmodule


module LUT6_2 #(
  parameter [63:0] INIT = 64'h0000000000000000
)(
  output O5,
  output O6,

  input I0,
  input I1,
  input I2,
  input I3,
  input I4,
  input I5
);
endmodule

module MASTER_JTAG 
(
  output TDO,

  input TCK,
  input TDI,
  input TMS
);
endmodule


module MMCME2_ADV #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter real CLKFBOUT_MULT_F = 5.000,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter CLKFBOUT_USE_FINE_PS = "FALSE",
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKIN2_PERIOD = 0.000,
  parameter real CLKOUT0_DIVIDE_F = 1.000,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter CLKOUT0_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUT1_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter CLKOUT2_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter CLKOUT3_USE_FINE_PS = "FALSE",
  parameter CLKOUT4_CASCADE = "FALSE",
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter CLKOUT4_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter CLKOUT5_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT6_DIVIDE = 1,
  parameter real CLKOUT6_DUTY_CYCLE = 0.500,
  parameter real CLKOUT6_PHASE = 0.000,
  parameter CLKOUT6_USE_FINE_PS = "FALSE",
  parameter COMPENSATION = "ZHOLD",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKINSEL_INVERTED = 1'b0,
  parameter [0:0] IS_PSEN_INVERTED = 1'b0,
  parameter [0:0] IS_PSINCDEC_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter real REF_JITTER2 = 0.010,
  parameter SS_EN = "FALSE",
  parameter SS_MODE = "CENTER_HIGH",
  parameter integer SS_MOD_PERIOD = 10000,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKFBOUTB,
  output CLKFBSTOPPED,
  output CLKINSTOPPED,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUT2,
  output CLKOUT2B,
  output CLKOUT3,
  output CLKOUT3B,
  output CLKOUT4,
  output CLKOUT5,
  output CLKOUT6,
  output [15:0] DO,
  output DRDY,
  output LOCKED,
  output PSDONE,

  input CLKFBIN,
  input CLKIN1,
  input CLKIN2,
  input CLKINSEL,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PSCLK,
  input PSEN,
  input PSINCDEC,
  input PWRDWN,
  input RST
);
endmodule


module MMCME2_BASE (
  CLKFBOUT,
  CLKFBOUTB,
  CLKOUT0,
  CLKOUT0B,
  CLKOUT1,
  CLKOUT1B,
  CLKOUT2,
  CLKOUT2B,
  CLKOUT3,
  CLKOUT3B,
  CLKOUT4,
  CLKOUT5,
  CLKOUT6,
  LOCKED,
  CLKFBIN,
  CLKIN1,
  PWRDWN,
  RST
);
  parameter BANDWIDTH = "OPTIMIZED";
  parameter real CLKFBOUT_MULT_F = 5.000;
  parameter real CLKFBOUT_PHASE = 0.000;
  parameter real CLKIN1_PERIOD = 0.000;
  parameter real CLKOUT0_DIVIDE_F = 1.000;
  parameter real CLKOUT0_DUTY_CYCLE = 0.500;
  parameter real CLKOUT0_PHASE = 0.000;
  parameter integer CLKOUT1_DIVIDE = 1;
  parameter real CLKOUT1_DUTY_CYCLE = 0.500;
  parameter real CLKOUT1_PHASE = 0.000;
  parameter integer CLKOUT2_DIVIDE = 1;
  parameter real CLKOUT2_DUTY_CYCLE = 0.500;
  parameter real CLKOUT2_PHASE = 0.000;
  parameter integer CLKOUT3_DIVIDE = 1;
  parameter real CLKOUT3_DUTY_CYCLE = 0.500;
  parameter real CLKOUT3_PHASE = 0.000;
  parameter CLKOUT4_CASCADE = "FALSE";
  parameter integer CLKOUT4_DIVIDE = 1;
  parameter real CLKOUT4_DUTY_CYCLE = 0.500;
  parameter real CLKOUT4_PHASE = 0.000;
  parameter integer CLKOUT5_DIVIDE = 1;
  parameter real CLKOUT5_DUTY_CYCLE = 0.500;
  parameter real CLKOUT5_PHASE = 0.000;
  parameter integer CLKOUT6_DIVIDE = 1;
  parameter real CLKOUT6_DUTY_CYCLE = 0.500;
  parameter real CLKOUT6_PHASE = 0.000;
  parameter integer DIVCLK_DIVIDE = 1;
  parameter real REF_JITTER1 = 0.010;
  parameter STARTUP_WAIT = "FALSE";
    parameter LOC = "UNPLACED";
  output CLKFBOUT;
  output CLKFBOUTB;
  output CLKOUT0;
  output CLKOUT0B;
  output CLKOUT1;
  output CLKOUT1B;
  output CLKOUT2;
  output CLKOUT2B;
  output CLKOUT3;
  output CLKOUT3B;
  output CLKOUT4;
  output CLKOUT5;
  output CLKOUT6;
  output LOCKED;
  input CLKFBIN;
  input CLKIN1;
  input PWRDWN;
  input RST;
endmodule


module MMCME3_ADV #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter real CLKFBOUT_MULT_F = 5.000,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter CLKFBOUT_USE_FINE_PS = "FALSE",
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKIN2_PERIOD = 0.000,
  parameter real CLKOUT0_DIVIDE_F = 1.000,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter CLKOUT0_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUT1_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter CLKOUT2_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter CLKOUT3_USE_FINE_PS = "FALSE",
  parameter CLKOUT4_CASCADE = "FALSE",
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter CLKOUT4_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter CLKOUT5_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT6_DIVIDE = 1,
  parameter real CLKOUT6_DUTY_CYCLE = 0.500,
  parameter real CLKOUT6_PHASE = 0.000,
  parameter CLKOUT6_USE_FINE_PS = "FALSE",
  parameter COMPENSATION = "AUTO",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN1_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN2_INVERTED = 1'b0,
  parameter [0:0] IS_CLKINSEL_INVERTED = 1'b0,
  parameter [0:0] IS_PSEN_INVERTED = 1'b0,
  parameter [0:0] IS_PSINCDEC_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter real REF_JITTER2 = 0.010,
  parameter SS_EN = "FALSE",
  parameter SS_MODE = "CENTER_HIGH",
  parameter integer SS_MOD_PERIOD = 10000,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CDDCDONE,
  output CLKFBOUT,
  output CLKFBOUTB,
  output CLKFBSTOPPED,
  output CLKINSTOPPED,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUT2,
  output CLKOUT2B,
  output CLKOUT3,
  output CLKOUT3B,
  output CLKOUT4,
  output CLKOUT5,
  output CLKOUT6,
  output [15:0] DO,
  output DRDY,
  output LOCKED,
  output PSDONE,

  input CDDCREQ,
  input CLKFBIN,
  input CLKIN1,
  input CLKIN2,
  input CLKINSEL,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PSCLK,
  input PSEN,
  input PSINCDEC,
  input PWRDWN,
  input RST
);
endmodule


module MMCME3_BASE #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter real CLKFBOUT_MULT_F = 5.000,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKOUT0_DIVIDE_F = 1.000,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter CLKOUT4_CASCADE = "FALSE",
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter integer CLKOUT6_DIVIDE = 1,
  parameter real CLKOUT6_DUTY_CYCLE = 0.500,
  parameter real CLKOUT6_PHASE = 0.000,
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN1_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKFBOUTB,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUT2,
  output CLKOUT2B,
  output CLKOUT3,
  output CLKOUT3B,
  output CLKOUT4,
  output CLKOUT5,
  output CLKOUT6,
  output LOCKED,

  input CLKFBIN,
  input CLKIN1,
  input PWRDWN,
  input RST
);
endmodule


module MMCME4_ADV #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter real CLKFBOUT_MULT_F = 5.000,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter CLKFBOUT_USE_FINE_PS = "FALSE",
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKIN2_PERIOD = 0.000,
  parameter real CLKOUT0_DIVIDE_F = 1.000,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter CLKOUT0_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUT1_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter CLKOUT2_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter CLKOUT3_USE_FINE_PS = "FALSE",
  parameter CLKOUT4_CASCADE = "FALSE",
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter CLKOUT4_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter CLKOUT5_USE_FINE_PS = "FALSE",
  parameter integer CLKOUT6_DIVIDE = 1,
  parameter real CLKOUT6_DUTY_CYCLE = 0.500,
  parameter real CLKOUT6_PHASE = 0.000,
  parameter CLKOUT6_USE_FINE_PS = "FALSE",
  parameter COMPENSATION = "AUTO",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN1_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN2_INVERTED = 1'b0,
  parameter [0:0] IS_CLKINSEL_INVERTED = 1'b0,
  parameter [0:0] IS_PSEN_INVERTED = 1'b0,
  parameter [0:0] IS_PSINCDEC_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter real REF_JITTER2 = 0.010,
  parameter SS_EN = "FALSE",
  parameter SS_MODE = "CENTER_HIGH",
  parameter integer SS_MOD_PERIOD = 10000,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CDDCDONE,
  output CLKFBOUT,
  output CLKFBOUTB,
  output CLKFBSTOPPED,
  output CLKINSTOPPED,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUT2,
  output CLKOUT2B,
  output CLKOUT3,
  output CLKOUT3B,
  output CLKOUT4,
  output CLKOUT5,
  output CLKOUT6,
  output [15:0] DO,
  output DRDY,
  output LOCKED,
  output PSDONE,

  input CDDCREQ,
  input CLKFBIN,
  input CLKIN1,
  input CLKIN2,
  input CLKINSEL,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PSCLK,
  input PSEN,
  input PSINCDEC,
  input PWRDWN,
  input RST
);
endmodule


module MMCME4_BASE #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter real CLKFBOUT_MULT_F = 5.000,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKOUT0_DIVIDE_F = 1.000,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter CLKOUT4_CASCADE = "FALSE",
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter integer CLKOUT6_DIVIDE = 1,
  parameter real CLKOUT6_DUTY_CYCLE = 0.500,
  parameter real CLKOUT6_PHASE = 0.000,
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN1_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKFBOUTB,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUT2,
  output CLKOUT2B,
  output CLKOUT3,
  output CLKOUT3B,
  output CLKOUT4,
  output CLKOUT5,
  output CLKOUT6,
  output LOCKED,

  input CLKFBIN,
  input CLKIN1,
  input PWRDWN,
  input RST
);
endmodule


module MUXCY (O, CI, DI, S);
    parameter LOC = "UNPLACED";
    output O;
    input CI, DI, S;
endmodule


module MUXF7 (O, I0, I1, S);
    parameter LOC = "UNPLACED";
    output O;
    input I0, I1, S;
endmodule


module MUXF8 (O, I0, I1, S);
    parameter LOC = "UNPLACED";
    output O;
    input I0, I1, S;
endmodule


module MUXF9
(
  output O,

  input I0,
  input I1,
  input S
);
endmodule


module OBUF (O, I);
    parameter CAPACITANCE = "DONT_CARE";
    parameter integer DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    parameter SLEW = "SLOW";
    output O;
    input  I;
endmodule


module OBUFDS (O, OB, I);
    parameter CAPACITANCE = "DONT_CARE";
    parameter IOSTANDARD = "DEFAULT";
    parameter SLEW = "SLOW";
    parameter LOC = " UNPLACED";
    output O, OB;
    input  I;
endmodule


module OBUFDS_DPHY #(
  parameter IOSTANDARD = "DEFAULT"
)(
  output O,
  output OB,

  input HSTX_I,
  input HSTX_T,
  input LPTX_I_N,
  input LPTX_I_P,
  input LPTX_T
);
endmodule

module OBUFDS_GTE3  #(

  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [4:0] REFCLK_ICNTL_TX = 5'b00000
)(
  output O,
  output OB,

  input CEB,
  input I
);
endmodule

module OBUFDS_GTE3_ADV #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [4:0] REFCLK_ICNTL_TX = 5'b00000
)(
  output O,
  output OB,

  input CEB,
  input [3:0] I,
  input [1:0] RXRECCLK_SEL
);
  endmodule


module OBUFDS_GTE4 #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [4:0] REFCLK_ICNTL_TX = 5'b00000
)(
  output O,
  output OB,

  input CEB,
  input I
);
endmodule


module OBUFDS_GTE4_ADV #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter [4:0] REFCLK_ICNTL_TX = 5'b00000
)(
  output O,
  output OB,

  input CEB,
  input [3:0] I,
  input [1:0] RXRECCLK_SEL
);
endmodule


module OBUFDS_GTM #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter integer REFCLK_ICNTL_TX = 0
)(
  output O,
  output OB,

  input CEB,
  input I
);
endmodule


module OBUFDS_GTM_ADV #(
  parameter [0:0] REFCLK_EN_TX_PATH = 1'b0,
  parameter integer REFCLK_ICNTL_TX = 0,
  parameter [1:0] RXRECCLK_SEL = 2'b00
)(
  output O,
  output OB,

  input CEB,
  input [3:0] I
);
endmodule


module OBUFT (O, I, T);
    parameter CAPACITANCE = "DONT_CARE";
    parameter integer DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    parameter SLEW = "SLOW";
    output O;
    input  I, T;
endmodule


module OBUFTDS (O, OB, I, T);
    parameter CAPACITANCE = "DONT_CARE";
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = " UNPLACED";
    parameter SLEW = "SLOW";
    output O, OB;
    input  I, T;
endmodule


module OBUFTDS_DCIEN (O, OB, DCITERMDISABLE, I, T);
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    parameter SLEW = "SLOW";
    output O;
    output OB;
    input  DCITERMDISABLE;
    input  I;
    input  T;
endmodule


module OBUFT_DCIEN (O, DCITERMDISABLE, I, T);
    parameter integer DRIVE = 12;
    parameter IOSTANDARD = "DEFAULT";
    parameter LOC = "UNPLACED";
    parameter SLEW = "SLOW";
    output O;
    input  DCITERMDISABLE;
    input  I;
    input  T;
endmodule


module ODDR (Q, C, CE, D1, D2, R, S);
    output Q;
    input C;
    input CE;
    input D1;
    input D2;    
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT = 1'b0;
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_D1_INVERTED = 1'b0;
    parameter [0:0] IS_D2_INVERTED = 1'b0;
    parameter SRTYPE = "SYNC";
    parameter LOC = "UNPLACED";
    parameter MSGON = "TRUE";
    parameter XON = "TRUE";
endmodule // ODDR


module ODDRE1 #(
  parameter [0:0] IS_C_INVERTED = 1'b0,
  parameter [0:0] IS_D1_INVERTED = 1'b0,
  parameter [0:0] IS_D2_INVERTED = 1'b0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter [0:0] SRVAL = 1'b0
)(
  output Q,

  input C,
  input D1,
  input D2,
  input SR
);
endmodule


module ODELAYE2 (CNTVALUEOUT, DATAOUT, C, CE, CINVCTRL, CLKIN, CNTVALUEIN, INC, LD, LDPIPEEN, ODATAIN, REGRST);
    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "ODATAIN";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_ODATAIN_INVERTED = 1'b0;
    parameter ODELAY_TYPE  = "FIXED";
    parameter integer ODELAY_VALUE = 0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    output [4:0] CNTVALUEOUT;
    output DATAOUT;
    input C;
    input CE;
    input CINVCTRL;
    input CLKIN;
    input [4:0] CNTVALUEIN;
    input INC;
    input LD;
    input LDPIPEEN;
    input ODATAIN;
    input REGRST;
endmodule // ODELAYE2


module ODELAYE2_FINEDELAY (
  CNTVALUEOUT,
  DATAOUT,

  C,
  CE,
  CINVCTRL,
  CLKIN,
  CNTVALUEIN,
  INC,
  LD,
  LDPIPEEN,
  ODATAIN,
  OFDLY,
  REGRST
);
    parameter CINVCTRL_SEL = "FALSE";
    parameter DELAY_SRC = "ODATAIN";
    parameter FINEDELAY = "BYPASS";
    parameter HIGH_PERFORMANCE_MODE    = "FALSE";
    parameter [0:0] IS_C_INVERTED = 1'b0;
    parameter [0:0] IS_ODATAIN_INVERTED = 1'b0;
    parameter ODELAY_TYPE  = "FIXED";
    parameter integer ODELAY_VALUE = 0;
    parameter PIPE_SEL = "FALSE";
    parameter real REFCLK_FREQUENCY = 200.0;
    parameter SIGNAL_PATTERN    = "DATA";
    parameter LOC = "UNPLACED";
    parameter integer SIM_DELAY_D = 0;
    output [4:0] CNTVALUEOUT;
    output DATAOUT;
    input C;
    input CE;
    input CINVCTRL;
    input CLKIN;
    input [4:0] CNTVALUEIN;
    input INC;
    input LD;
    input LDPIPEEN;
    input ODATAIN;
    input [2:0] OFDLY;
    input REGRST;
endmodule // ODELAYE2_FINEDELAY


module ODELAYE3 #(
  parameter CASCADE = "NONE",
  parameter DELAY_FORMAT = "TIME",
  parameter DELAY_TYPE = "FIXED",
  parameter integer DELAY_VALUE = 0,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REFCLK_FREQUENCY = 300.0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter real SIM_VERSION = 2.0,
  parameter UPDATE_MODE = "ASYNC"
)(
  output CASC_OUT,
  output [8:0] CNTVALUEOUT,
  output DATAOUT,

  input CASC_IN,
  input CASC_RETURN,
  input CE,
  input CLK,
  input [8:0] CNTVALUEIN,
  input EN_VTC,
  input INC,
  input LOAD,
  input ODATAIN,
  input RST
);
endmodule


module OR2L #(
  parameter [0:0] IS_SRI_INVERTED = 1'b0
)(
  output O,
  
  input DI,
  input SRI
);
endmodule

module OSERDES (OQ, SHIFTOUT1, SHIFTOUT2, TQ,
		CLK, CLKDIV, D1, D2, D3, D4, D5, D6, OCE, REV, SHIFTIN1, SHIFTIN2, SR, T1, T2, T3, T4, TCE);
    parameter DATA_RATE_OQ = "DDR";
    parameter DATA_RATE_TQ = "DDR";
    parameter integer DATA_WIDTH = 4;
    parameter [0:0] INIT_OQ = 1'b0;
    parameter [0:0] INIT_TQ = 1'b0;
    parameter SERDES_MODE = "MASTER";
    parameter [0:0] SRVAL_OQ = 1'b0;
    parameter [0:0] SRVAL_TQ = 1'b0;
    parameter integer TRISTATE_WIDTH = 4;
    parameter LOC = "UNPLACED";
    output OQ;
    output SHIFTOUT1;
    output SHIFTOUT2;
    output TQ;
    input CLK;
    input CLKDIV;
    input D1;
    input D2;
    input D3;
    input D4;
    input D5;
    input D6;
    input OCE;
    input REV;
    input SHIFTIN1;
    input SHIFTIN2;
    input SR;
    input T1;
    input T2;
    input T3;
    input T4;
    input TCE;
endmodule // OSERDES

    
module OSERDESE1 (OCBEXTEND, OFB, OQ, SHIFTOUT1, SHIFTOUT2, TFB, TQ,
                    CLK, CLKDIV, CLKPERF, CLKPERFDELAY, D1, D2, D3, D4, D5, D6, OCE, ODV, RST, SHIFTIN1, SHIFTIN2, T1, T2, T3, T4, TCE, WC);
    parameter DATA_RATE_OQ = "DDR";
    parameter DATA_RATE_TQ = "DDR";
    parameter integer DATA_WIDTH = 4;
    parameter integer DDR3_DATA = 1;
    parameter [0:0] INIT_OQ = 1'b0;
    parameter [0:0] INIT_TQ = 1'b0;
    parameter INTERFACE_TYPE = "DEFAULT";
    parameter integer ODELAY_USED = 0;
    parameter SERDES_MODE = "MASTER";
    parameter [0:0] SRVAL_OQ = 1'b0;
    parameter [0:0] SRVAL_TQ = 1'b0;
    parameter integer TRISTATE_WIDTH = 4;
     parameter LOC = "UNPLACED";
    output OCBEXTEND;
    output OFB;
    output OQ;
    output SHIFTOUT1;
    output SHIFTOUT2;
    output TFB;
    output TQ;
    input CLK;
    input CLKDIV;
    input CLKPERF;
    input CLKPERFDELAY;
    input D1;
    input D2;
    input D3;
    input D4;
    input D5;
    input D6;
    input OCE;
    input ODV;
    input RST;
    input SHIFTIN1;
    input SHIFTIN2;
    input T1;
    input T2;
    input T3;
    input T4;
    input TCE;
    input WC;
endmodule // OSERDESE1

/////////////////////////////////////////////////////////
//
//       module selfheal_oserdese1_vlog
//
///////////////////////////////////////////////////////
//
// Self healing circuit  for Mt Blanc
//	This model ONLY works for SERDES operation!!
//	
//
//
////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////
//
//   Inputs: 
//	dq3 - dq0: Data from load counter
//	CLKDIV: Divided clock from PLL
//	srint: RESET from load generator
//	rst: Set/Reset control
//				
//
//
//   Outputs:	
//	SHO: Data output
//
//
//
//   Programmable Points
//	SELFHEAL: String of 5 bits.  1 as enable and 4 as compare
//		  Test attributes in model
//	
//
//
//
//
////////////////////////////////////////////////////////////////////////////////
//

module selfheal_oserdese1_vlog (dq3, dq2, dq1, dq0,
		CLKDIV, srint, rst,
                SHO);
parameter     	FFD = 10; // clock to out delay for flip flops
endmodule
////////////////////////////////////////////////////////
//
//       module plg_oserdese1_vlog
//
////////////////////////////////////////////////////////
//
// Programmable Load Generator (PLG)
// 	Divide by 2-8 counter with load enable output
//
//
/////////////////////////////////////////////////////////
//
//   Inputs:	
//		c23: Selects between divide by 2 or 3
//		c45: Selects between divide by 4 or 5
//		c67: Selects between divide by 6 or 7
//		sel: Selects which divide function is chosen
//			00:2 or 3, 01:4 or 5, 10:6 or 7, 11:8
//		clk: High speed clock from DCM
//		clkdiv: Low speed clock from DCM
//		rst: Reset
//				
//
//
//   Outputs:	
//	
//		load: Loads serdes register at terminal count
//
//
//   Test attributes:
//	INIT_LOADCNT: 4-bits to init counter
//	      SRTYPE: 1-bit to control synchronous or asynchronous operation
//	    SELFHEAL: 5-bits to control self healing feature
//
//
//
////////////////////////////////////////////////////////////////////////////////
//

module plg_oserdese1_vlog (c23, c45, c67, sel, 
			clk, clkdiv, rst,
		load, IOCLK_GLITCH);
parameter ffdcnt = 1;
parameter mxdcnt = 1;
parameter FFRST = 145; // clock to out delay for flop in PLSG
endmodule
////////////////////////////////////////////////////////
//
//       module rank12d_oserdese1_vlog
//
//
//	This model ONLY works for SERDES operation!!
//	Does not include tristate circuit
//
//
////////////////////////////////////////////////////////
//
//   Inputs: 
//	D1: Data input 1
//	D2: Data input 2
//	D3: Data input 3
//	D4: Data input 4
//	D5: Data input 5
//	D6: Data input 6
//	C: High speed clock from DCM
//	OCE: Clock enable for output data flops
//	SR: Set/Reset control.  For the last 3 flops in OQ
//	     (d1rnk2, d2rnk2 and d2nrnk2) this function is 
//	     controlled bythe attributes SRVAL_OQ.  In SERDES mode,
//	     SR is a RESET ONLY for all other flops!  The flops will
//	     still be RESET even if SR is programmed to a SET!
//	CLKDIV: Low speed divided clock from DCM
//	SHIFTIN1: Carry in data 1 for master from slave
//	SHIFTIN2: Carry in data 2 for master from slave
//				
//
//
//   Outputs:	
//	data1: Data output mux for top flop
//	data2: Data output mux for bottom flop
//	SHIFTOUT1: Carry out data 1 for slave
//	SHIFTOUT2: Carry out data 2 for slave
//	load: Used for the tristate when combined into a single model
//
//
//
//   Programmable Points
//	DATA_RATE_OQ: Rate control for data output, 1-bit
//			sdr (1), ddr (0)
//	DATA_WIDTH: Input data width, 
//		4-bits, values can be from 2 to 10
//	SERDES_MODE: Denotes master (0) or slave (1)
//	SIM_X_INPUT: This attribute is NOT SUPPORTED in this model!!!
//	
//
//
//  Programmable points for Test model
//	SRTYPE: This is a 4-bit field  Sets asynchronous (0) or synchronous (1) set/reset
//		1st bit (msb) sets rank1 flops, 2nd bit sets 4 flops in rank 2,
//		3rd bit sets "3 legacy flops, and 4th (lsb) bit sets the counter
//	INIT_ORANK1: Init value for 6 registers in 1st rank (6-bits)
//	INIT_ORANK2_PARTIAL: Init value for bottom 4 registers in the 2nd rank (4-bits)
//	INIT_LOADCNT: Init value for the load counter (4-bits)
//		The other 2 registers in the load counter have init bits, but are
//		not supported in this model
//	SERDES: Indicates that SERDES mode is chosen
//	SLEFHEAL: 5-bit to set self heal circuit
//
//
////////////////////////////////////////////////////////////////////////////////
//

module rank12d_oserdese1_vlog (D1, D2, D3, D4, D5, D6, d2rnk2,
		SHIFTIN1, SHIFTIN2,
		C, CLKDIV, SR, OCE,
		data1, data2, SHIFTOUT1, SHIFTOUT2,
		DATA_RATE_OQ, DATA_WIDTH, 
		SERDES_MODE, load,
		IOCLK_GLITCH,
		INIT_OQ, SRVAL_OQ);
parameter     	FFD = 1; // clock to out delay for flip flops
endmodule
//////////////////////////////////////////////////////////
//
//       module trif_oserdese1_vlog
//
/////////////////////////////////////////////////////////
//
//   Inputs:
//	
//	T1, T2, T3, T4: tristate inputs
//	load: Programmable load generator output
//	TCE: Tristate clock enable
//	SR: Set/Reset control.  For the last 3 flops in TQ
//	     (qt1, qt2 and qt2n) this function is 
//	     controlled bythe attributes SRVAL_TQ.  In SERDES mode,
//	     SR is a RESET ONLY for all other flops!  The flops will
//	     still be RESET even if SR is programmed to a SET!
//	C, C2: High speed clocks
//	C2 drives 2nd latch and C3 (inverse of C2) drives 
//			3rd latch in output section
//	CLKDIV: Low speed clock
//
//				
//
//
//   Outputs:
//
//	TQ: Output of tristate mux
//
//
//   Programmable Options:
//
//	DATA_RATE_TQ: 2-bit field for types of operaiton
//		0 (buf from T1), 1 (registered output from T1), 2 (ddr)
//	TRISTATE_WIDTH: 2-bit field for input width
//		0 (width 1), 1 (width 2), 2 (width 4)
//	INIT_TQ: Init TQ output (0,1)
//	SRVAL_TQ: This bit to controls value of SR input.
//		    Only the last 3 flops (qt1, qt2 and qt2n) are 
//		    affected by this bit.For SERDES mode, this bit 
//		    should be set to '0' making SR a reset.  This is the 
//		    desired state since all other flops only
//		    respond to this pin as a reset.  Their function 
//		    cannot be changed.  SR is 'O' for SET and '1' for RESET.
//
//
//  Programmable Test Options:
//	SRTYPE: Control S and R as asynchronous (0) or synchronous (1)
//		2-bit value.  1st bit (msb) controls the 4 input flops
//		and the 2nd bit (lsb) controls the "3 legacy flops"
//	DDR_CLK_EDGE: Same or opposite edge operation
//		  
//
//
////////////////////////////////////////////////////////////////////////////////
//

module trif_oserdese1_vlog (T1, T2, T3, T4, load, 
		C, CLKDIV, SR, TCE, 
		DATA_RATE_TQ, TRISTATE_WIDTH, 
		INIT_TQ, SRVAL_TQ, 
		data1, data2);
parameter ffd = 1;
parameter mxd = 1;
endmodule
//////////////////////////////////////////////////////////
//
//       module txbuffer_oserdese1_vlog
//
/////////////////////////////////////////////////////////
//
// FIFO and Control circuit for OSERDES

module txbuffer_oserdese1_vlog (iodelay_state, qmux1, qmux2, tmux1, tmux2,
		 d1, d2, t1, t2, trif,
		 WC, ODV, extra, 
		 clk, clkdiv, bufo, bufop, rst,
		 ODELAY_USED, DDR3_DATA,
		 DDR3_MODE);
endmodule
////////////////////////////////////////////////////////
//
//       module fifo_tdpipe_oserdese1_vlog
//
////////////////////////////////////////////////////////

// FIFO for write path

module fifo_tdpipe_oserdese1_vlog (muxout, din, qwc, qrd, 
		rd_gap1,
		bufg_clk, bufo_clk, rst_bufo_p, rst_bufg_p,
		DDR3_DATA, extra, ODV, DDR3_MODE
		
		);
endmodule
////////////////////////////////////////////////////////
//
//       module fifo_reset_oserdese1_vlog
//
////////////////////////////////////////////////////////
//
// TX FIFO reset 
//
// This design performs 2 functions.  One function is to reset all the
//  flops in the TX FIFO.  The other function is to respond to the signal
//  rst_cntr.  This signal comes from iodlyctrl and will be used to initiate an
//  orderly transition to switch the DQ/DQS I/O from and read to a write.  
//  This process is required only for DDR3 DIMM support because the IODELAY
//  is used for both the inputs and the outputs.  The signal from the
//  squelch circuit is a present fabric output.  An additional input 
//  indicating that a write command was issued will be 
//  required for all I/O to support this signal.
//
// This design uses an asynchronous reset to reset all flops.  After the
//  reset is disabled, a 0 is propagated through the pipe stages to terminate
//  the reset.  The first 2 flops run off of the clkdiv domain.  Their output
//  feeds a latch to cross between the clkdiv and bufg_clk domain.  The pipe
//  stage for the bufg_clk domain is 3 deep, where the last flop is the
//  reset signal for the bufg_clk domain.  The 2nd flop of the bufg_clk pipe
//  is fed to 2 flops that are in the bufo_clk domain.  The 2 flops are 
//  to resolve metastability between the 2 clock domains.
//
// The circuit to enable an orderly transition from read to write uses the 
//  PREAMBLE_SYNCHED output of a portion of the squelch circuit.  This pulse
//  will initiate the reset sequence and also generate an enable which will
//  switch the IODELAY from an IDELAY to an ODELAY.  Timing is as specified in
//  the "State of the Union" presentation.
//
//


module fifo_reset_oserdese1_vlog (rst_bufo_p, rst_bufo_rc, 
			rst_bufg_p, rst_bufg_wc,
			rst_cntr,
			bufg_clk, bufo_clk, clkdiv, rst,
			divide_2, bufop_clk, rst_bufop_rc
		
		);
endmodule
////////////////////////////////////////////////////////
//
//       module fifo_addr_oserdese1_vlog      
//
////////////////////////////////////////////////////////
// Read and Write address generators for TX FIFO
//
// This circuit contains 2 greycode read and write address generators
//  that will be used with the TX FIFO.  Both counters generate a 
//  count sequence of 00 -> 01 -> 11 -> 10 -> 00.



module fifo_addr_oserdese1_vlog (qwc, qrd, rd_gap1, rst_bufg_wc, rst_bufo_rc, bufg_clk, bufo_clk,
			data, extra, rst_bufop_rc, bufop_clk
		
		);
endmodule
////////////////////////////////////////////////////////
//
//       module iodlyctrl_npre_oserdese1_vlog
//
////////////////////////////////////////////////////////
//
// Circuit to automatically switch IODELAY from IDELAY to ODELAY using knowledge 
//  of write command.  This circuit forces the user to wait 3 extra CLK/CLK# cycles
//  when performing a read to write turnaround.  The JEDEC DDR3 spec states that
//  the turnaround can be done in 2 clock cycles.  This circuit requires 5 clock
//  cycles.
// This circuit is only used for a DDR3 appplication that uses DIMMs



module iodlyctrl_npre_oserdese1_vlog (iodelay_state, bufo_out, rst_cntr,
			wc, trif,
			rst, bufg_clk, bufo_clk, bufg_clkdiv,
			ddr3_dimm, wl6
		);
endmodule
////////////////////////////////////////////////////////
//
//      MODULE dout_oserdese1_vlog
//
//	This model ONLY works for SERDES operation!!
//	Does not include tristate circuit
//
/////////////////////////////////////////////////////////
//
//   Inputs: 
//	data1: Data from FIFO
//	data2: Data input FIFO
//	CLK: High speed clock from DCM
//	BUFO: Clock from performance path
//	OCE: Clock enable for output data flops
//	SR: Set/Reset control.  For the last 3 flops in OQ
//	     (d1rnk2, d2rnk2 and d2nrnk2) this function is 
//	     controlled bythe attributes SRVAL_OQ.  In SERDES mode,
//	     SR is a RESET ONLY for all other flops!  The flops will
//	     still be RESET even if SR is programmed to a SET!
//				
//
//
//   Outputs:	
//	OQ: Data output
//
//
//
//   Programmable Points
//	DATA_RATE_OQ: Rate control for data output, 1-bit
//			sdr (1), ddr (0)
//	INIT_OQ: Init OQ output "flop"
//	SRVAL_OQ: This bit to controls value of SR input.
//		    Only the last 3 flops (d1rnk2, d2rnk2 and d2nrnk2)
//		    are affected by this bit.For SERDES mode, this bit 
//		    should be set to '0' making SR a reset.  This is the 
//		    desired state since all other flops only respond to 
//		    this pin as a reset.  Their function cannot be
//		    changed.  SR is '1' for SET and '0' for RESET.
//	
//
//
//  Programmable points for Test model
//	SRTYPE: This is a 4-bit field  Sets asynchronous (0) or synchronous (1) set/reset
//		1st bit (msb) sets rank1 flops, 2nd bit sets 4 flops in rank 2,
//		3rd bit sets "3 legacy flops, and 4th (lsb) bit sets the counter
//	DDR_CLK_EDGE: Controls use of 2 or 3 flops for single case.  Default to 1 for
//			SERDES operation
//
//
///////////////////////////////////////////////////////////////////////////////
//

module dout_oserdese1_vlog (data1, data2,
		CLK, BUFO, SR, OCE,
		OQ, d2rnk2,
		DATA_RATE_OQ,
		INIT_OQ, SRVAL_OQ,
		DDR3_MODE);
parameter     	FFD = 1; // clock to out delay for flip flops
endmodule
//////////////////////////////////////////////////////////
//
//       module tout_oserdese1_vlog
//
//       Tristate Output cell for Mt Blanc
//
//
////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////
//
//   Inputs:
//	
//	data1, data2: tristate inputs
//	TCE: Tristate clock enable
//	SR: Set/Reset control.  For the last 3 flops in TQ
//	     (qt1, qt2 and qt2n) this function is 
//	     controlled bythe attributes SRVAL_TQ.  In SERDES mode,
//	     SR is a RESET ONLY for all other flops!  The flops will
//	     still be RESET even if SR is programmed to a SET!
//	CLK: High speed clocks
//	C2 drives 2nd latch and C3 (inverse of C2) drives 
//			3rd latch in output section
//	BUFO: Performance path clock
//
//				
//
//
//   Outputs:
//
//	TQ: Output of tristate mux
//
//
//   Programmable Options:
//
//	DATA_RATE_TQ: 2-bit field for types of operaiton
//		0 (buf from T1), 1 (registered output from T1), 2 (ddr)
//	TRISTATE_WIDTH: 2-bit field for input width
//		0 (width 1), 1 (width 2), 2 (width 4)
//	INIT_TQ: Init TQ output (0,1)
//	SRVAL_TQ: This bit to controls value of SR input.
//		    Only the last 3 flops (qt1, qt2 and qt2n) are 
//		    affected by this bit.For SERDES mode, this bit 
//		    should be set to '0' making SR a reset.  This is the 
//		    desired state since all other flops only
//		    respond to this pin as a reset.  Their function 
//		    cannot be changed.  SR is 'O' for SET and '1' for RESET.
//
//
//  Programmable Test Options:
//	SRTYPE: Control S and R as asynchronous (0) or synchronous (1)
//		2-bit value.  1st bit (msb) controls the 4 input flops
//		and the 2nd bit (lsb) controls the "3 legacy flops"
//	DDR_CLK_EDGE: Same or opposite edge operation
//		  
//
//
////////////////////////////////////////////////////////////////////////////////
//

module tout_oserdese1_vlog (data1, data2,
		CLK, BUFO, SR, TCE, 
		DATA_RATE_TQ, TRISTATE_WIDTH,
		INIT_TQ, SRVAL_TQ, 
		TQ, DDR3_MODE);
parameter ffd = 1;
parameter mxd = 1;
endmodule


module OSERDESE2 (
  OFB,
  OQ,
  SHIFTOUT1,
  SHIFTOUT2,
  TBYTEOUT,
  TFB,
  TQ,

  CLK,
  CLKDIV,
  D1,
  D2,
  D3,
  D4,
  D5,
  D6,
  D7,
  D8,
  OCE,
  RST,
  SHIFTIN1,
  SHIFTIN2,
  T1,
  T2,
  T3,
  T4,
  TBYTEIN,
  TCE
);
  parameter DATA_RATE_OQ = "DDR";
  parameter DATA_RATE_TQ = "DDR";
  parameter integer DATA_WIDTH = 4;
  parameter [0:0] INIT_OQ = 1'b0;
  parameter [0:0] INIT_TQ = 1'b0;
  parameter [0:0] IS_CLKDIV_INVERTED = 1'b0;
  parameter [0:0] IS_CLK_INVERTED = 1'b0;
  parameter [0:0] IS_D1_INVERTED = 1'b0;
  parameter [0:0] IS_D2_INVERTED = 1'b0;
  parameter [0:0] IS_D3_INVERTED = 1'b0;
  parameter [0:0] IS_D4_INVERTED = 1'b0;
  parameter [0:0] IS_D5_INVERTED = 1'b0;
  parameter [0:0] IS_D6_INVERTED = 1'b0;
  parameter [0:0] IS_D7_INVERTED = 1'b0;
  parameter [0:0] IS_D8_INVERTED = 1'b0;
  parameter [0:0] IS_T1_INVERTED = 1'b0;
  parameter [0:0] IS_T2_INVERTED = 1'b0;
  parameter [0:0] IS_T3_INVERTED = 1'b0;
  parameter [0:0] IS_T4_INVERTED = 1'b0;
  parameter LOC = "UNPLACED";
  parameter SERDES_MODE = "MASTER";
  parameter [0:0] SRVAL_OQ = 1'b0;
  parameter [0:0] SRVAL_TQ = 1'b0;
  parameter TBYTE_CTL = "FALSE";
  parameter TBYTE_SRC = "FALSE";
  parameter integer TRISTATE_WIDTH = 4;
  output OFB;
  output OQ;
  output SHIFTOUT1;
  output SHIFTOUT2;
  output TBYTEOUT;
  output TFB;
  output TQ;
  input CLK;
  input CLKDIV;
  input D1;
  input D2;
  input D3;
  input D4;
  input D5;
  input D6;
  input D7;
  input D8;
  input OCE;
  input RST;
  input SHIFTIN1;
  input SHIFTIN2;
  input T1;
  input T2;
  input T3;
  input T4;
  input TBYTEIN;
  input TCE;
endmodule


module OSERDESE3 #(
  parameter integer DATA_WIDTH = 8,
  parameter [0:0] INIT = 1'b0,
  parameter [0:0] IS_CLKDIV_INVERTED = 1'b0,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter ODDR_MODE = "FALSE",
  parameter OSERDES_D_BYPASS = "FALSE",
  parameter OSERDES_T_BYPASS = "FALSE",
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter real SIM_VERSION = 2.0
)(
  output OQ,
  output T_OUT,

  input CLK,
  input CLKDIV,
  input [7:0] D,
  input RST,
  input T
);
endmodule


module OUT_FIFO (
  ALMOSTEMPTY,
  ALMOSTFULL,
  EMPTY,
  FULL,
  Q0,
  Q1,
  Q2,
  Q3,
  Q4,
  Q5,
  Q6,
  Q7,
  Q8,
  Q9,

  D0,
  D1,
  D2,
  D3,
  D4,
  D5,
  D6,
  D7,
  D8,
  D9,
  RDCLK,
  RDEN,
  RESET,
  WRCLK,
  WREN
);
  parameter LOC = "UNPLACED";
  parameter integer ALMOST_EMPTY_VALUE = 1;
  parameter integer ALMOST_FULL_VALUE = 1;
  parameter ARRAY_MODE = "ARRAY_MODE_8_X_4";
  parameter OUTPUT_DISABLE = "FALSE";
  parameter SYNCHRONOUS_MODE = "FALSE";
  output ALMOSTEMPTY;
  output ALMOSTFULL;
  output EMPTY;
  output FULL;
  output [3:0] Q0;
  output [3:0] Q1;
  output [3:0] Q2;
  output [3:0] Q3;
  output [3:0] Q4;
  output [3:0] Q7;
  output [3:0] Q8;
  output [3:0] Q9;
  output [7:0] Q5;
  output [7:0] Q6;
  input RDCLK;
  input RDEN;
  input RESET;
  input WRCLK;
  input WREN;
  input [7:0] D0;
  input [7:0] D1;
  input [7:0] D2;
  input [7:0] D3;
  input [7:0] D4;
  input [7:0] D5;
  input [7:0] D6;
  input [7:0] D7;
  input [7:0] D8;
  input [7:0] D9;
endmodule // OUT_FIFO


module PCIE40E4 #(
  parameter ARI_CAP_ENABLE = "FALSE",
  parameter AUTO_FLR_RESPONSE = "FALSE",
  parameter [1:0] AXISTEN_IF_CC_ALIGNMENT_MODE = 2'h0,
  parameter [23:0] AXISTEN_IF_COMPL_TIMEOUT_REG0 = 24'hBEBC20,
  parameter [27:0] AXISTEN_IF_COMPL_TIMEOUT_REG1 = 28'h2FAF080,
  parameter [1:0] AXISTEN_IF_CQ_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_CQ_EN_POISONED_MEM_WR = "FALSE",
  parameter AXISTEN_IF_ENABLE_256_TAGS = "FALSE",
  parameter AXISTEN_IF_ENABLE_CLIENT_TAG = "FALSE",
  parameter AXISTEN_IF_ENABLE_INTERNAL_MSIX_TABLE = "FALSE",
  parameter AXISTEN_IF_ENABLE_MESSAGE_RID_CHECK = "TRUE",
  parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE = 18'h00000,
  parameter AXISTEN_IF_ENABLE_RX_MSG_INTFC = "FALSE",
  parameter AXISTEN_IF_EXT_512 = "FALSE",
  parameter AXISTEN_IF_EXT_512_CC_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_CQ_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_RC_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_RQ_STRADDLE = "FALSE",
  parameter AXISTEN_IF_LEGACY_MODE_ENABLE = "FALSE",
  parameter AXISTEN_IF_MSIX_FROM_RAM_PIPELINE = "FALSE",
  parameter AXISTEN_IF_MSIX_RX_PARITY_EN = "TRUE",
  parameter AXISTEN_IF_MSIX_TO_RAM_PIPELINE = "FALSE",
  parameter [1:0] AXISTEN_IF_RC_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_RC_STRADDLE = "FALSE",
  parameter [1:0] AXISTEN_IF_RQ_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_RX_PARITY_EN = "TRUE",
  parameter AXISTEN_IF_SIM_SHORT_CPL_TIMEOUT = "FALSE",
  parameter AXISTEN_IF_TX_PARITY_EN = "TRUE",
  parameter [1:0] AXISTEN_IF_WIDTH = 2'h2,
  parameter CFG_BYPASS_MODE_ENABLE = "FALSE",
  parameter CRM_CORE_CLK_FREQ_500 = "TRUE",
  parameter [1:0] CRM_USER_CLK_FREQ = 2'h2,
  parameter [15:0] DEBUG_AXI4ST_SPARE = 16'h0000,
  parameter [7:0] DEBUG_AXIST_DISABLE_FEATURE_BIT = 8'h00,
  parameter [3:0] DEBUG_CAR_SPARE = 4'h0,
  parameter [15:0] DEBUG_CFG_SPARE = 16'h0000,
  parameter [15:0] DEBUG_LL_SPARE = 16'h0000,
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_DEFRAMER_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_SKP_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_SKP_PARITY_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_REC_ENTRY_ON_DYNAMIC_DSKEW_FAIL = "FALSE",
  parameter DEBUG_PL_DISABLE_REC_ENTRY_ON_RX_BUFFER_UNDER_OVER_FLOW = "FALSE",
  parameter DEBUG_PL_DISABLE_SCRAMBLING = "FALSE",
  parameter DEBUG_PL_SIM_RESET_LFSR = "FALSE",
  parameter [15:0] DEBUG_PL_SPARE = 16'h0000,
  parameter DEBUG_TL_DISABLE_FC_TIMEOUT = "FALSE",
  parameter DEBUG_TL_DISABLE_RX_TLP_ORDER_CHECKS = "FALSE",
  parameter [15:0] DEBUG_TL_SPARE = 16'h0000,
  parameter [7:0] DNSTREAM_LINK_NUM = 8'h00,
  parameter DSN_CAP_ENABLE = "FALSE",
  parameter EXTENDED_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter HEADER_TYPE_OVERRIDE = "FALSE",
  parameter IS_SWITCH_PORT = "FALSE",
  parameter LEGACY_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter [8:0] LL_ACK_TIMEOUT = 9'h000,
  parameter LL_ACK_TIMEOUT_EN = "FALSE",
  parameter integer LL_ACK_TIMEOUT_FUNC = 0,
  parameter LL_DISABLE_SCHED_TX_NAK = "FALSE",
  parameter LL_REPLAY_FROM_RAM_PIPELINE = "FALSE",
  parameter [8:0] LL_REPLAY_TIMEOUT = 9'h000,
  parameter LL_REPLAY_TIMEOUT_EN = "FALSE",
  parameter integer LL_REPLAY_TIMEOUT_FUNC = 0,
  parameter LL_REPLAY_TO_RAM_PIPELINE = "FALSE",
  parameter LL_RX_TLP_PARITY_GEN = "TRUE",
  parameter LL_TX_TLP_PARITY_CHK = "TRUE",
  parameter [15:0] LL_USER_SPARE = 16'h0000,
  parameter [9:0] LTR_TX_MESSAGE_MINIMUM_INTERVAL = 10'h250,
  parameter LTR_TX_MESSAGE_ON_FUNC_POWER_STATE_CHANGE = "FALSE",
  parameter LTR_TX_MESSAGE_ON_LTR_ENABLE = "FALSE",
  parameter [11:0] MCAP_CAP_NEXTPTR = 12'h000,
  parameter MCAP_CONFIGURE_OVERRIDE = "FALSE",
  parameter MCAP_ENABLE = "FALSE",
  parameter MCAP_EOS_DESIGN_SWITCH = "FALSE",
  parameter [31:0] MCAP_FPGA_BITSTREAM_VERSION = 32'h00000000,
  parameter MCAP_GATE_IO_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_GATE_MEM_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INPUT_GATE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_EOS = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_ERROR = "FALSE",
  parameter [15:0] MCAP_VSEC_ID = 16'h0000,
  parameter [11:0] MCAP_VSEC_LEN = 12'h02C,
  parameter [3:0] MCAP_VSEC_REV = 4'h0,
  parameter PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE = "FALSE",
  parameter [11:0] PF0_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF0_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [3:0] PF0_ARI_CAP_VER = 4'h1,
  parameter [5:0] PF0_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF0_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF0_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF0_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF0_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF0_CLASS_CODE = 24'h000000,
  parameter PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_ARI_FORWARD_ENABLE = "FALSE",
  parameter PF0_DEV_CAP2_CPL_TIMEOUT_DISABLE = "TRUE",
  parameter PF0_DEV_CAP2_LTR_SUPPORT = "TRUE",
  parameter [1:0] PF0_DEV_CAP2_OBFF_SUPPORT = 2'h0,
  parameter PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT = "FALSE",
  parameter integer PF0_DEV_CAP_ENDPOINT_L0S_LATENCY = 0,
  parameter integer PF0_DEV_CAP_ENDPOINT_L1_LATENCY = 0,
  parameter PF0_DEV_CAP_EXT_TAG_SUPPORTED = "TRUE",
  parameter PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "TRUE",
  parameter [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF0_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF0_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF0_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF0_INTERRUPT_PIN = 3'h1,
  parameter integer PF0_LINK_CAP_ASPM_SUPPORT = 0,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN4 = 7,
  parameter [0:0] PF0_LINK_CONTROL_RCB = 1'h0,
  parameter PF0_LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE",
  parameter [9:0] PF0_LTR_CAP_MAX_NOSNOOP_LAT = 10'h000,
  parameter [9:0] PF0_LTR_CAP_MAX_SNOOP_LAT = 10'h000,
  parameter [11:0] PF0_LTR_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_LTR_CAP_VER = 4'h1,
  parameter [7:0] PF0_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [5:0] PF0_MSIX_VECTOR_COUNT = 6'h04,
  parameter integer PF0_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF0_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF0_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF0_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF0_PM_CAP_ID = 8'h01,
  parameter [7:0] PF0_PM_CAP_NEXTPTR = 8'h00,
  parameter PF0_PM_CAP_PMESUPPORT_D0 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D1 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D3HOT = "TRUE",
  parameter PF0_PM_CAP_SUPP_D1_STATE = "TRUE",
  parameter [2:0] PF0_PM_CAP_VER_ID = 3'h3,
  parameter PF0_PM_CSR_NOSOFTRESET = "TRUE",
  parameter [11:0] PF0_SECONDARY_PCIE_CAP_NEXTPTR = 12'h000,
  parameter PF0_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF0_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF0_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF0_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF0_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF0_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF0_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF0_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF0_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF0_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF0_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF0_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF0_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter PF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF0_TPHR_CAP_ENABLE = "FALSE",
  parameter PF0_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF0_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF0_TPHR_CAP_VER = 4'h1,
  parameter PF0_VC_CAP_ENABLE = "FALSE",
  parameter [11:0] PF0_VC_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_VC_CAP_VER = 4'h1,
  parameter [11:0] PF1_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF1_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF1_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF1_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF1_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF1_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF1_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF1_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF1_CLASS_CODE = 24'h000000,
  parameter [2:0] PF1_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF1_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF1_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF1_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF1_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF1_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF1_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF1_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF1_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF1_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF1_PM_CAP_NEXTPTR = 8'h00,
  parameter PF1_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF1_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF1_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF1_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF1_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF1_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF1_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF1_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF1_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF1_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF1_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF1_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF1_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] PF2_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF2_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF2_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF2_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF2_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF2_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF2_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF2_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF2_CLASS_CODE = 24'h000000,
  parameter [2:0] PF2_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF2_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF2_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF2_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF2_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF2_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF2_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF2_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF2_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF2_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF2_PM_CAP_NEXTPTR = 8'h00,
  parameter PF2_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF2_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF2_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF2_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF2_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF2_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF2_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF2_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF2_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF2_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF2_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF2_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF2_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] PF3_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF3_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF3_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF3_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF3_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF3_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF3_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF3_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF3_CLASS_CODE = 24'h000000,
  parameter [2:0] PF3_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF3_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF3_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF3_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF3_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF3_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF3_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF3_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF3_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF3_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF3_PM_CAP_NEXTPTR = 8'h00,
  parameter PF3_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF3_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF3_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF3_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF3_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF3_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF3_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF3_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF3_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF3_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF3_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF3_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF3_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF3_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter PL_CFG_STATE_ROBUSTNESS_ENABLE = "TRUE",
  parameter PL_DEEMPH_SOURCE_SELECT = "TRUE",
  parameter PL_DESKEW_ON_SKIP_IN_GEN12 = "FALSE",
  parameter PL_DISABLE_AUTO_EQ_SPEED_CHANGE_TO_GEN3 = "FALSE",
  parameter PL_DISABLE_AUTO_EQ_SPEED_CHANGE_TO_GEN4 = "FALSE",
  parameter PL_DISABLE_AUTO_SPEED_CHANGE_TO_GEN2 = "FALSE",
  parameter PL_DISABLE_DC_BALANCE = "FALSE",
  parameter PL_DISABLE_EI_INFER_IN_L0 = "FALSE",
  parameter PL_DISABLE_LANE_REVERSAL = "FALSE",
  parameter [1:0] PL_DISABLE_LFSR_UPDATE_ON_SKP = 2'h0,
  parameter PL_DISABLE_RETRAIN_ON_EB_ERROR = "FALSE",
  parameter PL_DISABLE_RETRAIN_ON_FRAMING_ERROR = "FALSE",
  parameter [15:0] PL_DISABLE_RETRAIN_ON_SPECIFIC_FRAMING_ERROR = 16'h0000,
  parameter PL_DISABLE_UPCONFIG_CAPABLE = "FALSE",
  parameter [1:0] PL_EQ_ADAPT_DISABLE_COEFF_CHECK = 2'h0,
  parameter [1:0] PL_EQ_ADAPT_DISABLE_PRESET_CHECK = 2'h0,
  parameter [4:0] PL_EQ_ADAPT_ITER_COUNT = 5'h02,
  parameter [1:0] PL_EQ_ADAPT_REJECT_RETRY_COUNT = 2'h1,
  parameter [1:0] PL_EQ_BYPASS_PHASE23 = 2'h0,
  parameter [5:0] PL_EQ_DEFAULT_RX_PRESET_HINT = 6'h33,
  parameter [7:0] PL_EQ_DEFAULT_TX_PRESET = 8'h44,
  parameter PL_EQ_DISABLE_MISMATCH_CHECK = "TRUE",
  parameter [1:0] PL_EQ_RX_ADAPT_EQ_PHASE0 = 2'h0,
  parameter [1:0] PL_EQ_RX_ADAPT_EQ_PHASE1 = 2'h0,
  parameter PL_EQ_SHORT_ADAPT_PHASE = "FALSE",
  parameter PL_EQ_TX_8G_EQ_TS2_ENABLE = "FALSE",
  parameter PL_EXIT_LOOPBACK_ON_EI_ENTRY = "TRUE",
  parameter PL_INFER_EI_DISABLE_LPBK_ACTIVE = "TRUE",
  parameter PL_INFER_EI_DISABLE_REC_RC = "FALSE",
  parameter PL_INFER_EI_DISABLE_REC_SPD = "FALSE",
  parameter [31:0] PL_LANE0_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE10_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE11_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE12_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE13_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE14_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE15_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE1_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE2_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE3_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE4_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE5_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE6_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE7_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE8_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE9_EQ_CONTROL = 32'h00003F00,
  parameter [3:0] PL_LINK_CAP_MAX_LINK_SPEED = 4'h4,
  parameter [4:0] PL_LINK_CAP_MAX_LINK_WIDTH = 5'h08,
  parameter integer PL_N_FTS = 255,
  parameter PL_QUIESCE_GUARANTEE_DISABLE = "FALSE",
  parameter PL_REDO_EQ_SOURCE_SELECT = "TRUE",
  parameter [7:0] PL_REPORT_ALL_PHY_ERRORS = 8'h00,
  parameter [1:0] PL_RX_ADAPT_TIMER_CLWS_CLOBBER_TX_TS = 2'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_CLWS_GEN3 = 4'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_CLWS_GEN4 = 4'h0,
  parameter [1:0] PL_RX_ADAPT_TIMER_RRL_CLOBBER_TX_TS = 2'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_RRL_GEN3 = 4'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_RRL_GEN4 = 4'h0,
  parameter [1:0] PL_RX_L0S_EXIT_TO_RECOVERY = 2'h0,
  parameter [1:0] PL_SIM_FAST_LINK_TRAINING = 2'h0,
  parameter PL_SRIS_ENABLE = "FALSE",
  parameter [6:0] PL_SRIS_SKPOS_GEN_SPD_VEC = 7'h00,
  parameter [6:0] PL_SRIS_SKPOS_REC_SPD_VEC = 7'h00,
  parameter PL_UPSTREAM_FACING = "TRUE",
  parameter [15:0] PL_USER_SPARE = 16'h0000,
  parameter [15:0] PM_ASPML0S_TIMEOUT = 16'h1500,
  parameter [19:0] PM_ASPML1_ENTRY_DELAY = 20'h003E8,
  parameter PM_ENABLE_L23_ENTRY = "FALSE",
  parameter PM_ENABLE_SLOT_POWER_CAPTURE = "TRUE",
  parameter [31:0] PM_L1_REENTRY_DELAY = 32'h00000100,
  parameter [19:0] PM_PME_SERVICE_TIMEOUT_DELAY = 20'h00000,
  parameter [15:0] PM_PME_TURNOFF_ACK_DELAY = 16'h0100,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter [31:0] SIM_JTAG_IDCODE = 32'h00000000,
  parameter SIM_VERSION = "1.0",
  parameter SPARE_BIT0 = "FALSE",
  parameter integer SPARE_BIT1 = 0,
  parameter integer SPARE_BIT2 = 0,
  parameter SPARE_BIT3 = "FALSE",
  parameter integer SPARE_BIT4 = 0,
  parameter integer SPARE_BIT5 = 0,
  parameter integer SPARE_BIT6 = 0,
  parameter integer SPARE_BIT7 = 0,
  parameter integer SPARE_BIT8 = 0,
  parameter [7:0] SPARE_BYTE0 = 8'h00,
  parameter [7:0] SPARE_BYTE1 = 8'h00,
  parameter [7:0] SPARE_BYTE2 = 8'h00,
  parameter [7:0] SPARE_BYTE3 = 8'h00,
  parameter [31:0] SPARE_WORD0 = 32'h00000000,
  parameter [31:0] SPARE_WORD1 = 32'h00000000,
  parameter [31:0] SPARE_WORD2 = 32'h00000000,
  parameter [31:0] SPARE_WORD3 = 32'h00000000,
  parameter [3:0] SRIOV_CAP_ENABLE = 4'h0,
  parameter TL2CFG_IF_PARITY_CHK = "TRUE",
  parameter [1:0] TL_COMPLETION_RAM_NUM_TLPS = 2'h0,
  parameter [1:0] TL_COMPLETION_RAM_SIZE = 2'h1,
  parameter [11:0] TL_CREDITS_CD = 12'h000,
  parameter [7:0] TL_CREDITS_CH = 8'h00,
  parameter [11:0] TL_CREDITS_NPD = 12'h004,
  parameter [7:0] TL_CREDITS_NPH = 8'h20,
  parameter [11:0] TL_CREDITS_PD = 12'h0E0,
  parameter [7:0] TL_CREDITS_PH = 8'h20,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TIME = 5'h02,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TLP_COUNT = 5'h08,
  parameter [1:0] TL_PF_ENABLE_REG = 2'h0,
  parameter [0:0] TL_POSTED_RAM_SIZE = 1'h0,
  parameter TL_RX_COMPLETION_FROM_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_COMPLETION_TO_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_COMPLETION_TO_RAM_WRITE_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_FROM_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_TO_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_TO_RAM_WRITE_PIPELINE = "FALSE",
  parameter TL_TX_MUX_STRICT_PRIORITY = "TRUE",
  parameter TL_TX_TLP_STRADDLE_ENABLE = "FALSE",
  parameter TL_TX_TLP_TERMINATE_PARITY = "FALSE",
  parameter [15:0] TL_USER_SPARE = 16'h0000,
  parameter TPH_FROM_RAM_PIPELINE = "FALSE",
  parameter TPH_TO_RAM_PIPELINE = "FALSE",
  parameter [7:0] VF0_CAPABILITY_POINTER = 8'h80,
  parameter [11:0] VFG0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] VFG0_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG0_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG1_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] VFG1_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG1_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG2_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] VFG2_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG2_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG3_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] VFG3_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG3_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG3_TPHR_CAP_ST_MODE_SEL = 3'h0
)(
  output [7:0] AXIUSEROUT,
  output [7:0] CFGBUSNUMBER,
  output [1:0] CFGCURRENTSPEED,
  output CFGERRCOROUT,
  output CFGERRFATALOUT,
  output CFGERRNONFATALOUT,
  output [7:0] CFGEXTFUNCTIONNUMBER,
  output CFGEXTREADRECEIVED,
  output [9:0] CFGEXTREGISTERNUMBER,
  output [3:0] CFGEXTWRITEBYTEENABLE,
  output [31:0] CFGEXTWRITEDATA,
  output CFGEXTWRITERECEIVED,
  output [11:0] CFGFCCPLD,
  output [7:0] CFGFCCPLH,
  output [11:0] CFGFCNPD,
  output [7:0] CFGFCNPH,
  output [11:0] CFGFCPD,
  output [7:0] CFGFCPH,
  output [3:0] CFGFLRINPROCESS,
  output [11:0] CFGFUNCTIONPOWERSTATE,
  output [15:0] CFGFUNCTIONSTATUS,
  output CFGHOTRESETOUT,
  output [31:0] CFGINTERRUPTMSIDATA,
  output [3:0] CFGINTERRUPTMSIENABLE,
  output CFGINTERRUPTMSIFAIL,
  output CFGINTERRUPTMSIMASKUPDATE,
  output [11:0] CFGINTERRUPTMSIMMENABLE,
  output CFGINTERRUPTMSISENT,
  output [3:0] CFGINTERRUPTMSIXENABLE,
  output [3:0] CFGINTERRUPTMSIXMASK,
  output CFGINTERRUPTMSIXVECPENDINGSTATUS,
  output CFGINTERRUPTSENT,
  output [1:0] CFGLINKPOWERSTATE,
  output [4:0] CFGLOCALERROROUT,
  output CFGLOCALERRORVALID,
  output CFGLTRENABLE,
  output [5:0] CFGLTSSMSTATE,
  output [1:0] CFGMAXPAYLOAD,
  output [2:0] CFGMAXREADREQ,
  output [31:0] CFGMGMTREADDATA,
  output CFGMGMTREADWRITEDONE,
  output CFGMSGRECEIVED,
  output [7:0] CFGMSGRECEIVEDDATA,
  output [4:0] CFGMSGRECEIVEDTYPE,
  output CFGMSGTRANSMITDONE,
  output [12:0] CFGMSIXRAMADDRESS,
  output CFGMSIXRAMREADENABLE,
  output [3:0] CFGMSIXRAMWRITEBYTEENABLE,
  output [35:0] CFGMSIXRAMWRITEDATA,
  output [2:0] CFGNEGOTIATEDWIDTH,
  output [1:0] CFGOBFFENABLE,
  output CFGPHYLINKDOWN,
  output [1:0] CFGPHYLINKSTATUS,
  output CFGPLSTATUSCHANGE,
  output CFGPOWERSTATECHANGEINTERRUPT,
  output [3:0] CFGRCBSTATUS,
  output [1:0] CFGRXPMSTATE,
  output [11:0] CFGTPHRAMADDRESS,
  output CFGTPHRAMREADENABLE,
  output [3:0] CFGTPHRAMWRITEBYTEENABLE,
  output [35:0] CFGTPHRAMWRITEDATA,
  output [3:0] CFGTPHREQUESTERENABLE,
  output [11:0] CFGTPHSTMODE,
  output [1:0] CFGTXPMSTATE,
  output CONFMCAPDESIGNSWITCH,
  output CONFMCAPEOS,
  output CONFMCAPINUSEBYPCIE,
  output CONFREQREADY,
  output [31:0] CONFRESPRDATA,
  output CONFRESPVALID,
  output [31:0] DBGCTRL0OUT,
  output [31:0] DBGCTRL1OUT,
  output [255:0] DBGDATA0OUT,
  output [255:0] DBGDATA1OUT,
  output [15:0] DRPDO,
  output DRPRDY,
  output [255:0] MAXISCQTDATA,
  output [7:0] MAXISCQTKEEP,
  output MAXISCQTLAST,
  output [87:0] MAXISCQTUSER,
  output MAXISCQTVALID,
  output [255:0] MAXISRCTDATA,
  output [7:0] MAXISRCTKEEP,
  output MAXISRCTLAST,
  output [74:0] MAXISRCTUSER,
  output MAXISRCTVALID,
  output [8:0] MIREPLAYRAMADDRESS0,
  output [8:0] MIREPLAYRAMADDRESS1,
  output MIREPLAYRAMREADENABLE0,
  output MIREPLAYRAMREADENABLE1,
  output [127:0] MIREPLAYRAMWRITEDATA0,
  output [127:0] MIREPLAYRAMWRITEDATA1,
  output MIREPLAYRAMWRITEENABLE0,
  output MIREPLAYRAMWRITEENABLE1,
  output [8:0] MIRXCOMPLETIONRAMREADADDRESS0,
  output [8:0] MIRXCOMPLETIONRAMREADADDRESS1,
  output [1:0] MIRXCOMPLETIONRAMREADENABLE0,
  output [1:0] MIRXCOMPLETIONRAMREADENABLE1,
  output [8:0] MIRXCOMPLETIONRAMWRITEADDRESS0,
  output [8:0] MIRXCOMPLETIONRAMWRITEADDRESS1,
  output [143:0] MIRXCOMPLETIONRAMWRITEDATA0,
  output [143:0] MIRXCOMPLETIONRAMWRITEDATA1,
  output [1:0] MIRXCOMPLETIONRAMWRITEENABLE0,
  output [1:0] MIRXCOMPLETIONRAMWRITEENABLE1,
  output [8:0] MIRXPOSTEDREQUESTRAMREADADDRESS0,
  output [8:0] MIRXPOSTEDREQUESTRAMREADADDRESS1,
  output MIRXPOSTEDREQUESTRAMREADENABLE0,
  output MIRXPOSTEDREQUESTRAMREADENABLE1,
  output [8:0] MIRXPOSTEDREQUESTRAMWRITEADDRESS0,
  output [8:0] MIRXPOSTEDREQUESTRAMWRITEADDRESS1,
  output [143:0] MIRXPOSTEDREQUESTRAMWRITEDATA0,
  output [143:0] MIRXPOSTEDREQUESTRAMWRITEDATA1,
  output MIRXPOSTEDREQUESTRAMWRITEENABLE0,
  output MIRXPOSTEDREQUESTRAMWRITEENABLE1,
  output [5:0] PCIECQNPREQCOUNT,
  output PCIEPERST0B,
  output PCIEPERST1B,
  output [5:0] PCIERQSEQNUM0,
  output [5:0] PCIERQSEQNUM1,
  output PCIERQSEQNUMVLD0,
  output PCIERQSEQNUMVLD1,
  output [7:0] PCIERQTAG0,
  output [7:0] PCIERQTAG1,
  output [3:0] PCIERQTAGAV,
  output PCIERQTAGVLD0,
  output PCIERQTAGVLD1,
  output [3:0] PCIETFCNPDAV,
  output [3:0] PCIETFCNPHAV,
  output [1:0] PIPERX00EQCONTROL,
  output PIPERX00POLARITY,
  output [1:0] PIPERX01EQCONTROL,
  output PIPERX01POLARITY,
  output [1:0] PIPERX02EQCONTROL,
  output PIPERX02POLARITY,
  output [1:0] PIPERX03EQCONTROL,
  output PIPERX03POLARITY,
  output [1:0] PIPERX04EQCONTROL,
  output PIPERX04POLARITY,
  output [1:0] PIPERX05EQCONTROL,
  output PIPERX05POLARITY,
  output [1:0] PIPERX06EQCONTROL,
  output PIPERX06POLARITY,
  output [1:0] PIPERX07EQCONTROL,
  output PIPERX07POLARITY,
  output [1:0] PIPERX08EQCONTROL,
  output PIPERX08POLARITY,
  output [1:0] PIPERX09EQCONTROL,
  output PIPERX09POLARITY,
  output [1:0] PIPERX10EQCONTROL,
  output PIPERX10POLARITY,
  output [1:0] PIPERX11EQCONTROL,
  output PIPERX11POLARITY,
  output [1:0] PIPERX12EQCONTROL,
  output PIPERX12POLARITY,
  output [1:0] PIPERX13EQCONTROL,
  output PIPERX13POLARITY,
  output [1:0] PIPERX14EQCONTROL,
  output PIPERX14POLARITY,
  output [1:0] PIPERX15EQCONTROL,
  output PIPERX15POLARITY,
  output [5:0] PIPERXEQLPLFFS,
  output [3:0] PIPERXEQLPTXPRESET,
  output [1:0] PIPETX00CHARISK,
  output PIPETX00COMPLIANCE,
  output [31:0] PIPETX00DATA,
  output PIPETX00DATAVALID,
  output PIPETX00ELECIDLE,
  output [1:0] PIPETX00EQCONTROL,
  output [5:0] PIPETX00EQDEEMPH,
  output [1:0] PIPETX00POWERDOWN,
  output PIPETX00STARTBLOCK,
  output [1:0] PIPETX00SYNCHEADER,
  output [1:0] PIPETX01CHARISK,
  output PIPETX01COMPLIANCE,
  output [31:0] PIPETX01DATA,
  output PIPETX01DATAVALID,
  output PIPETX01ELECIDLE,
  output [1:0] PIPETX01EQCONTROL,
  output [5:0] PIPETX01EQDEEMPH,
  output [1:0] PIPETX01POWERDOWN,
  output PIPETX01STARTBLOCK,
  output [1:0] PIPETX01SYNCHEADER,
  output [1:0] PIPETX02CHARISK,
  output PIPETX02COMPLIANCE,
  output [31:0] PIPETX02DATA,
  output PIPETX02DATAVALID,
  output PIPETX02ELECIDLE,
  output [1:0] PIPETX02EQCONTROL,
  output [5:0] PIPETX02EQDEEMPH,
  output [1:0] PIPETX02POWERDOWN,
  output PIPETX02STARTBLOCK,
  output [1:0] PIPETX02SYNCHEADER,
  output [1:0] PIPETX03CHARISK,
  output PIPETX03COMPLIANCE,
  output [31:0] PIPETX03DATA,
  output PIPETX03DATAVALID,
  output PIPETX03ELECIDLE,
  output [1:0] PIPETX03EQCONTROL,
  output [5:0] PIPETX03EQDEEMPH,
  output [1:0] PIPETX03POWERDOWN,
  output PIPETX03STARTBLOCK,
  output [1:0] PIPETX03SYNCHEADER,
  output [1:0] PIPETX04CHARISK,
  output PIPETX04COMPLIANCE,
  output [31:0] PIPETX04DATA,
  output PIPETX04DATAVALID,
  output PIPETX04ELECIDLE,
  output [1:0] PIPETX04EQCONTROL,
  output [5:0] PIPETX04EQDEEMPH,
  output [1:0] PIPETX04POWERDOWN,
  output PIPETX04STARTBLOCK,
  output [1:0] PIPETX04SYNCHEADER,
  output [1:0] PIPETX05CHARISK,
  output PIPETX05COMPLIANCE,
  output [31:0] PIPETX05DATA,
  output PIPETX05DATAVALID,
  output PIPETX05ELECIDLE,
  output [1:0] PIPETX05EQCONTROL,
  output [5:0] PIPETX05EQDEEMPH,
  output [1:0] PIPETX05POWERDOWN,
  output PIPETX05STARTBLOCK,
  output [1:0] PIPETX05SYNCHEADER,
  output [1:0] PIPETX06CHARISK,
  output PIPETX06COMPLIANCE,
  output [31:0] PIPETX06DATA,
  output PIPETX06DATAVALID,
  output PIPETX06ELECIDLE,
  output [1:0] PIPETX06EQCONTROL,
  output [5:0] PIPETX06EQDEEMPH,
  output [1:0] PIPETX06POWERDOWN,
  output PIPETX06STARTBLOCK,
  output [1:0] PIPETX06SYNCHEADER,
  output [1:0] PIPETX07CHARISK,
  output PIPETX07COMPLIANCE,
  output [31:0] PIPETX07DATA,
  output PIPETX07DATAVALID,
  output PIPETX07ELECIDLE,
  output [1:0] PIPETX07EQCONTROL,
  output [5:0] PIPETX07EQDEEMPH,
  output [1:0] PIPETX07POWERDOWN,
  output PIPETX07STARTBLOCK,
  output [1:0] PIPETX07SYNCHEADER,
  output [1:0] PIPETX08CHARISK,
  output PIPETX08COMPLIANCE,
  output [31:0] PIPETX08DATA,
  output PIPETX08DATAVALID,
  output PIPETX08ELECIDLE,
  output [1:0] PIPETX08EQCONTROL,
  output [5:0] PIPETX08EQDEEMPH,
  output [1:0] PIPETX08POWERDOWN,
  output PIPETX08STARTBLOCK,
  output [1:0] PIPETX08SYNCHEADER,
  output [1:0] PIPETX09CHARISK,
  output PIPETX09COMPLIANCE,
  output [31:0] PIPETX09DATA,
  output PIPETX09DATAVALID,
  output PIPETX09ELECIDLE,
  output [1:0] PIPETX09EQCONTROL,
  output [5:0] PIPETX09EQDEEMPH,
  output [1:0] PIPETX09POWERDOWN,
  output PIPETX09STARTBLOCK,
  output [1:0] PIPETX09SYNCHEADER,
  output [1:0] PIPETX10CHARISK,
  output PIPETX10COMPLIANCE,
  output [31:0] PIPETX10DATA,
  output PIPETX10DATAVALID,
  output PIPETX10ELECIDLE,
  output [1:0] PIPETX10EQCONTROL,
  output [5:0] PIPETX10EQDEEMPH,
  output [1:0] PIPETX10POWERDOWN,
  output PIPETX10STARTBLOCK,
  output [1:0] PIPETX10SYNCHEADER,
  output [1:0] PIPETX11CHARISK,
  output PIPETX11COMPLIANCE,
  output [31:0] PIPETX11DATA,
  output PIPETX11DATAVALID,
  output PIPETX11ELECIDLE,
  output [1:0] PIPETX11EQCONTROL,
  output [5:0] PIPETX11EQDEEMPH,
  output [1:0] PIPETX11POWERDOWN,
  output PIPETX11STARTBLOCK,
  output [1:0] PIPETX11SYNCHEADER,
  output [1:0] PIPETX12CHARISK,
  output PIPETX12COMPLIANCE,
  output [31:0] PIPETX12DATA,
  output PIPETX12DATAVALID,
  output PIPETX12ELECIDLE,
  output [1:0] PIPETX12EQCONTROL,
  output [5:0] PIPETX12EQDEEMPH,
  output [1:0] PIPETX12POWERDOWN,
  output PIPETX12STARTBLOCK,
  output [1:0] PIPETX12SYNCHEADER,
  output [1:0] PIPETX13CHARISK,
  output PIPETX13COMPLIANCE,
  output [31:0] PIPETX13DATA,
  output PIPETX13DATAVALID,
  output PIPETX13ELECIDLE,
  output [1:0] PIPETX13EQCONTROL,
  output [5:0] PIPETX13EQDEEMPH,
  output [1:0] PIPETX13POWERDOWN,
  output PIPETX13STARTBLOCK,
  output [1:0] PIPETX13SYNCHEADER,
  output [1:0] PIPETX14CHARISK,
  output PIPETX14COMPLIANCE,
  output [31:0] PIPETX14DATA,
  output PIPETX14DATAVALID,
  output PIPETX14ELECIDLE,
  output [1:0] PIPETX14EQCONTROL,
  output [5:0] PIPETX14EQDEEMPH,
  output [1:0] PIPETX14POWERDOWN,
  output PIPETX14STARTBLOCK,
  output [1:0] PIPETX14SYNCHEADER,
  output [1:0] PIPETX15CHARISK,
  output PIPETX15COMPLIANCE,
  output [31:0] PIPETX15DATA,
  output PIPETX15DATAVALID,
  output PIPETX15ELECIDLE,
  output [1:0] PIPETX15EQCONTROL,
  output [5:0] PIPETX15EQDEEMPH,
  output [1:0] PIPETX15POWERDOWN,
  output PIPETX15STARTBLOCK,
  output [1:0] PIPETX15SYNCHEADER,
  output PIPETXDEEMPH,
  output [2:0] PIPETXMARGIN,
  output [1:0] PIPETXRATE,
  output PIPETXRCVRDET,
  output PIPETXRESET,
  output PIPETXSWING,
  output PLEQINPROGRESS,
  output [1:0] PLEQPHASE,
  output PLGEN34EQMISMATCH,
  output [3:0] SAXISCCTREADY,
  output [3:0] SAXISRQTREADY,
  output [31:0] USERSPAREOUT,

  input [7:0] AXIUSERIN,
  input CFGCONFIGSPACEENABLE,
  input [15:0] CFGDEVIDPF0,
  input [15:0] CFGDEVIDPF1,
  input [15:0] CFGDEVIDPF2,
  input [15:0] CFGDEVIDPF3,
  input [7:0] CFGDSBUSNUMBER,
  input [4:0] CFGDSDEVICENUMBER,
  input [2:0] CFGDSFUNCTIONNUMBER,
  input [63:0] CFGDSN,
  input [7:0] CFGDSPORTNUMBER,
  input CFGERRCORIN,
  input CFGERRUNCORIN,
  input [31:0] CFGEXTREADDATA,
  input CFGEXTREADDATAVALID,
  input [2:0] CFGFCSEL,
  input [3:0] CFGFLRDONE,
  input CFGHOTRESETIN,
  input [3:0] CFGINTERRUPTINT,
  input [2:0] CFGINTERRUPTMSIATTR,
  input [7:0] CFGINTERRUPTMSIFUNCTIONNUMBER,
  input [31:0] CFGINTERRUPTMSIINT,
  input [31:0] CFGINTERRUPTMSIPENDINGSTATUS,
  input CFGINTERRUPTMSIPENDINGSTATUSDATAENABLE,
  input [1:0] CFGINTERRUPTMSIPENDINGSTATUSFUNCTIONNUM,
  input [1:0] CFGINTERRUPTMSISELECT,
  input CFGINTERRUPTMSITPHPRESENT,
  input [7:0] CFGINTERRUPTMSITPHSTTAG,
  input [1:0] CFGINTERRUPTMSITPHTYPE,
  input [63:0] CFGINTERRUPTMSIXADDRESS,
  input [31:0] CFGINTERRUPTMSIXDATA,
  input CFGINTERRUPTMSIXINT,
  input [1:0] CFGINTERRUPTMSIXVECPENDING,
  input [3:0] CFGINTERRUPTPENDING,
  input CFGLINKTRAININGENABLE,
  input [9:0] CFGMGMTADDR,
  input [3:0] CFGMGMTBYTEENABLE,
  input CFGMGMTDEBUGACCESS,
  input [7:0] CFGMGMTFUNCTIONNUMBER,
  input CFGMGMTREAD,
  input CFGMGMTWRITE,
  input [31:0] CFGMGMTWRITEDATA,
  input CFGMSGTRANSMIT,
  input [31:0] CFGMSGTRANSMITDATA,
  input [2:0] CFGMSGTRANSMITTYPE,
  input [35:0] CFGMSIXRAMREADDATA,
  input CFGPMASPML1ENTRYREJECT,
  input CFGPMASPMTXL0SENTRYDISABLE,
  input CFGPOWERSTATECHANGEACK,
  input CFGREQPMTRANSITIONL23READY,
  input [7:0] CFGREVIDPF0,
  input [7:0] CFGREVIDPF1,
  input [7:0] CFGREVIDPF2,
  input [7:0] CFGREVIDPF3,
  input [15:0] CFGSUBSYSIDPF0,
  input [15:0] CFGSUBSYSIDPF1,
  input [15:0] CFGSUBSYSIDPF2,
  input [15:0] CFGSUBSYSIDPF3,
  input [15:0] CFGSUBSYSVENDID,
  input [35:0] CFGTPHRAMREADDATA,
  input [15:0] CFGVENDID,
  input CFGVFFLRDONE,
  input [7:0] CFGVFFLRFUNCNUM,
  input CONFMCAPREQUESTBYCONF,
  input [31:0] CONFREQDATA,
  input [3:0] CONFREQREGNUM,
  input [1:0] CONFREQTYPE,
  input CONFREQVALID,
  input CORECLK,
  input CORECLKMIREPLAYRAM0,
  input CORECLKMIREPLAYRAM1,
  input CORECLKMIRXCOMPLETIONRAM0,
  input CORECLKMIRXCOMPLETIONRAM1,
  input CORECLKMIRXPOSTEDREQUESTRAM0,
  input CORECLKMIRXPOSTEDREQUESTRAM1,
  input [5:0] DBGSEL0,
  input [5:0] DBGSEL1,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input [21:0] MAXISCQTREADY,
  input [21:0] MAXISRCTREADY,
  input MCAPCLK,
  input MCAPPERST0B,
  input MCAPPERST1B,
  input MGMTRESETN,
  input MGMTSTICKYRESETN,
  input [5:0] MIREPLAYRAMERRCOR,
  input [5:0] MIREPLAYRAMERRUNCOR,
  input [127:0] MIREPLAYRAMREADDATA0,
  input [127:0] MIREPLAYRAMREADDATA1,
  input [11:0] MIRXCOMPLETIONRAMERRCOR,
  input [11:0] MIRXCOMPLETIONRAMERRUNCOR,
  input [143:0] MIRXCOMPLETIONRAMREADDATA0,
  input [143:0] MIRXCOMPLETIONRAMREADDATA1,
  input [5:0] MIRXPOSTEDREQUESTRAMERRCOR,
  input [5:0] MIRXPOSTEDREQUESTRAMERRUNCOR,
  input [143:0] MIRXPOSTEDREQUESTRAMREADDATA0,
  input [143:0] MIRXPOSTEDREQUESTRAMREADDATA1,
  input [1:0] PCIECOMPLDELIVERED,
  input [7:0] PCIECOMPLDELIVEREDTAG0,
  input [7:0] PCIECOMPLDELIVEREDTAG1,
  input [1:0] PCIECQNPREQ,
  input PCIECQNPUSERCREDITRCVD,
  input PCIECQPIPELINEEMPTY,
  input PCIEPOSTEDREQDELIVERED,
  input PIPECLK,
  input PIPECLKEN,
  input [5:0] PIPEEQFS,
  input [5:0] PIPEEQLF,
  input PIPERESETN,
  input [1:0] PIPERX00CHARISK,
  input [31:0] PIPERX00DATA,
  input PIPERX00DATAVALID,
  input PIPERX00ELECIDLE,
  input PIPERX00EQDONE,
  input PIPERX00EQLPADAPTDONE,
  input PIPERX00EQLPLFFSSEL,
  input [17:0] PIPERX00EQLPNEWTXCOEFFORPRESET,
  input PIPERX00PHYSTATUS,
  input [1:0] PIPERX00STARTBLOCK,
  input [2:0] PIPERX00STATUS,
  input [1:0] PIPERX00SYNCHEADER,
  input PIPERX00VALID,
  input [1:0] PIPERX01CHARISK,
  input [31:0] PIPERX01DATA,
  input PIPERX01DATAVALID,
  input PIPERX01ELECIDLE,
  input PIPERX01EQDONE,
  input PIPERX01EQLPADAPTDONE,
  input PIPERX01EQLPLFFSSEL,
  input [17:0] PIPERX01EQLPNEWTXCOEFFORPRESET,
  input PIPERX01PHYSTATUS,
  input [1:0] PIPERX01STARTBLOCK,
  input [2:0] PIPERX01STATUS,
  input [1:0] PIPERX01SYNCHEADER,
  input PIPERX01VALID,
  input [1:0] PIPERX02CHARISK,
  input [31:0] PIPERX02DATA,
  input PIPERX02DATAVALID,
  input PIPERX02ELECIDLE,
  input PIPERX02EQDONE,
  input PIPERX02EQLPADAPTDONE,
  input PIPERX02EQLPLFFSSEL,
  input [17:0] PIPERX02EQLPNEWTXCOEFFORPRESET,
  input PIPERX02PHYSTATUS,
  input [1:0] PIPERX02STARTBLOCK,
  input [2:0] PIPERX02STATUS,
  input [1:0] PIPERX02SYNCHEADER,
  input PIPERX02VALID,
  input [1:0] PIPERX03CHARISK,
  input [31:0] PIPERX03DATA,
  input PIPERX03DATAVALID,
  input PIPERX03ELECIDLE,
  input PIPERX03EQDONE,
  input PIPERX03EQLPADAPTDONE,
  input PIPERX03EQLPLFFSSEL,
  input [17:0] PIPERX03EQLPNEWTXCOEFFORPRESET,
  input PIPERX03PHYSTATUS,
  input [1:0] PIPERX03STARTBLOCK,
  input [2:0] PIPERX03STATUS,
  input [1:0] PIPERX03SYNCHEADER,
  input PIPERX03VALID,
  input [1:0] PIPERX04CHARISK,
  input [31:0] PIPERX04DATA,
  input PIPERX04DATAVALID,
  input PIPERX04ELECIDLE,
  input PIPERX04EQDONE,
  input PIPERX04EQLPADAPTDONE,
  input PIPERX04EQLPLFFSSEL,
  input [17:0] PIPERX04EQLPNEWTXCOEFFORPRESET,
  input PIPERX04PHYSTATUS,
  input [1:0] PIPERX04STARTBLOCK,
  input [2:0] PIPERX04STATUS,
  input [1:0] PIPERX04SYNCHEADER,
  input PIPERX04VALID,
  input [1:0] PIPERX05CHARISK,
  input [31:0] PIPERX05DATA,
  input PIPERX05DATAVALID,
  input PIPERX05ELECIDLE,
  input PIPERX05EQDONE,
  input PIPERX05EQLPADAPTDONE,
  input PIPERX05EQLPLFFSSEL,
  input [17:0] PIPERX05EQLPNEWTXCOEFFORPRESET,
  input PIPERX05PHYSTATUS,
  input [1:0] PIPERX05STARTBLOCK,
  input [2:0] PIPERX05STATUS,
  input [1:0] PIPERX05SYNCHEADER,
  input PIPERX05VALID,
  input [1:0] PIPERX06CHARISK,
  input [31:0] PIPERX06DATA,
  input PIPERX06DATAVALID,
  input PIPERX06ELECIDLE,
  input PIPERX06EQDONE,
  input PIPERX06EQLPADAPTDONE,
  input PIPERX06EQLPLFFSSEL,
  input [17:0] PIPERX06EQLPNEWTXCOEFFORPRESET,
  input PIPERX06PHYSTATUS,
  input [1:0] PIPERX06STARTBLOCK,
  input [2:0] PIPERX06STATUS,
  input [1:0] PIPERX06SYNCHEADER,
  input PIPERX06VALID,
  input [1:0] PIPERX07CHARISK,
  input [31:0] PIPERX07DATA,
  input PIPERX07DATAVALID,
  input PIPERX07ELECIDLE,
  input PIPERX07EQDONE,
  input PIPERX07EQLPADAPTDONE,
  input PIPERX07EQLPLFFSSEL,
  input [17:0] PIPERX07EQLPNEWTXCOEFFORPRESET,
  input PIPERX07PHYSTATUS,
  input [1:0] PIPERX07STARTBLOCK,
  input [2:0] PIPERX07STATUS,
  input [1:0] PIPERX07SYNCHEADER,
  input PIPERX07VALID,
  input [1:0] PIPERX08CHARISK,
  input [31:0] PIPERX08DATA,
  input PIPERX08DATAVALID,
  input PIPERX08ELECIDLE,
  input PIPERX08EQDONE,
  input PIPERX08EQLPADAPTDONE,
  input PIPERX08EQLPLFFSSEL,
  input [17:0] PIPERX08EQLPNEWTXCOEFFORPRESET,
  input PIPERX08PHYSTATUS,
  input [1:0] PIPERX08STARTBLOCK,
  input [2:0] PIPERX08STATUS,
  input [1:0] PIPERX08SYNCHEADER,
  input PIPERX08VALID,
  input [1:0] PIPERX09CHARISK,
  input [31:0] PIPERX09DATA,
  input PIPERX09DATAVALID,
  input PIPERX09ELECIDLE,
  input PIPERX09EQDONE,
  input PIPERX09EQLPADAPTDONE,
  input PIPERX09EQLPLFFSSEL,
  input [17:0] PIPERX09EQLPNEWTXCOEFFORPRESET,
  input PIPERX09PHYSTATUS,
  input [1:0] PIPERX09STARTBLOCK,
  input [2:0] PIPERX09STATUS,
  input [1:0] PIPERX09SYNCHEADER,
  input PIPERX09VALID,
  input [1:0] PIPERX10CHARISK,
  input [31:0] PIPERX10DATA,
  input PIPERX10DATAVALID,
  input PIPERX10ELECIDLE,
  input PIPERX10EQDONE,
  input PIPERX10EQLPADAPTDONE,
  input PIPERX10EQLPLFFSSEL,
  input [17:0] PIPERX10EQLPNEWTXCOEFFORPRESET,
  input PIPERX10PHYSTATUS,
  input [1:0] PIPERX10STARTBLOCK,
  input [2:0] PIPERX10STATUS,
  input [1:0] PIPERX10SYNCHEADER,
  input PIPERX10VALID,
  input [1:0] PIPERX11CHARISK,
  input [31:0] PIPERX11DATA,
  input PIPERX11DATAVALID,
  input PIPERX11ELECIDLE,
  input PIPERX11EQDONE,
  input PIPERX11EQLPADAPTDONE,
  input PIPERX11EQLPLFFSSEL,
  input [17:0] PIPERX11EQLPNEWTXCOEFFORPRESET,
  input PIPERX11PHYSTATUS,
  input [1:0] PIPERX11STARTBLOCK,
  input [2:0] PIPERX11STATUS,
  input [1:0] PIPERX11SYNCHEADER,
  input PIPERX11VALID,
  input [1:0] PIPERX12CHARISK,
  input [31:0] PIPERX12DATA,
  input PIPERX12DATAVALID,
  input PIPERX12ELECIDLE,
  input PIPERX12EQDONE,
  input PIPERX12EQLPADAPTDONE,
  input PIPERX12EQLPLFFSSEL,
  input [17:0] PIPERX12EQLPNEWTXCOEFFORPRESET,
  input PIPERX12PHYSTATUS,
  input [1:0] PIPERX12STARTBLOCK,
  input [2:0] PIPERX12STATUS,
  input [1:0] PIPERX12SYNCHEADER,
  input PIPERX12VALID,
  input [1:0] PIPERX13CHARISK,
  input [31:0] PIPERX13DATA,
  input PIPERX13DATAVALID,
  input PIPERX13ELECIDLE,
  input PIPERX13EQDONE,
  input PIPERX13EQLPADAPTDONE,
  input PIPERX13EQLPLFFSSEL,
  input [17:0] PIPERX13EQLPNEWTXCOEFFORPRESET,
  input PIPERX13PHYSTATUS,
  input [1:0] PIPERX13STARTBLOCK,
  input [2:0] PIPERX13STATUS,
  input [1:0] PIPERX13SYNCHEADER,
  input PIPERX13VALID,
  input [1:0] PIPERX14CHARISK,
  input [31:0] PIPERX14DATA,
  input PIPERX14DATAVALID,
  input PIPERX14ELECIDLE,
  input PIPERX14EQDONE,
  input PIPERX14EQLPADAPTDONE,
  input PIPERX14EQLPLFFSSEL,
  input [17:0] PIPERX14EQLPNEWTXCOEFFORPRESET,
  input PIPERX14PHYSTATUS,
  input [1:0] PIPERX14STARTBLOCK,
  input [2:0] PIPERX14STATUS,
  input [1:0] PIPERX14SYNCHEADER,
  input PIPERX14VALID,
  input [1:0] PIPERX15CHARISK,
  input [31:0] PIPERX15DATA,
  input PIPERX15DATAVALID,
  input PIPERX15ELECIDLE,
  input PIPERX15EQDONE,
  input PIPERX15EQLPADAPTDONE,
  input PIPERX15EQLPLFFSSEL,
  input [17:0] PIPERX15EQLPNEWTXCOEFFORPRESET,
  input PIPERX15PHYSTATUS,
  input [1:0] PIPERX15STARTBLOCK,
  input [2:0] PIPERX15STATUS,
  input [1:0] PIPERX15SYNCHEADER,
  input PIPERX15VALID,
  input [17:0] PIPETX00EQCOEFF,
  input PIPETX00EQDONE,
  input [17:0] PIPETX01EQCOEFF,
  input PIPETX01EQDONE,
  input [17:0] PIPETX02EQCOEFF,
  input PIPETX02EQDONE,
  input [17:0] PIPETX03EQCOEFF,
  input PIPETX03EQDONE,
  input [17:0] PIPETX04EQCOEFF,
  input PIPETX04EQDONE,
  input [17:0] PIPETX05EQCOEFF,
  input PIPETX05EQDONE,
  input [17:0] PIPETX06EQCOEFF,
  input PIPETX06EQDONE,
  input [17:0] PIPETX07EQCOEFF,
  input PIPETX07EQDONE,
  input [17:0] PIPETX08EQCOEFF,
  input PIPETX08EQDONE,
  input [17:0] PIPETX09EQCOEFF,
  input PIPETX09EQDONE,
  input [17:0] PIPETX10EQCOEFF,
  input PIPETX10EQDONE,
  input [17:0] PIPETX11EQCOEFF,
  input PIPETX11EQDONE,
  input [17:0] PIPETX12EQCOEFF,
  input PIPETX12EQDONE,
  input [17:0] PIPETX13EQCOEFF,
  input PIPETX13EQDONE,
  input [17:0] PIPETX14EQCOEFF,
  input PIPETX14EQDONE,
  input [17:0] PIPETX15EQCOEFF,
  input PIPETX15EQDONE,
  input PLEQRESETEIEOSCOUNT,
  input PLGEN2UPSTREAMPREFERDEEMPH,
  input PLGEN34REDOEQSPEED,
  input PLGEN34REDOEQUALIZATION,
  input RESETN,
  input [255:0] SAXISCCTDATA,
  input [7:0] SAXISCCTKEEP,
  input SAXISCCTLAST,
  input [32:0] SAXISCCTUSER,
  input SAXISCCTVALID,
  input [255:0] SAXISRQTDATA,
  input [7:0] SAXISRQTKEEP,
  input SAXISRQTLAST,
  input [61:0] SAXISRQTUSER,
  input SAXISRQTVALID,
  input USERCLK,
  input USERCLK2,
  input USERCLKEN,
  input [31:0] USERSPAREIN
);
endmodule


module PCIE4CE4 #(
  parameter ARI_CAP_ENABLE = "FALSE",
  parameter AUTO_FLR_RESPONSE = "FALSE",
  parameter [7:0] AXISTEN_IF_CCIX_RX_CREDIT_LIMIT = 8'h08,
  parameter [7:0] AXISTEN_IF_CCIX_TX_CREDIT_LIMIT = 8'h08,
  parameter AXISTEN_IF_CCIX_TX_REGISTERED_TREADY = "FALSE",
  parameter [1:0] AXISTEN_IF_CC_ALIGNMENT_MODE = 2'h0,
  parameter [23:0] AXISTEN_IF_COMPL_TIMEOUT_REG0 = 24'hBEBC20,
  parameter [27:0] AXISTEN_IF_COMPL_TIMEOUT_REG1 = 28'h2FAF080,
  parameter [1:0] AXISTEN_IF_CQ_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_CQ_EN_POISONED_MEM_WR = "FALSE",
  parameter AXISTEN_IF_ENABLE_256_TAGS = "FALSE",
  parameter AXISTEN_IF_ENABLE_CLIENT_TAG = "FALSE",
  parameter AXISTEN_IF_ENABLE_INTERNAL_MSIX_TABLE = "FALSE",
  parameter AXISTEN_IF_ENABLE_MESSAGE_RID_CHECK = "TRUE",
  parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE = 18'h00000,
  parameter AXISTEN_IF_ENABLE_RX_MSG_INTFC = "FALSE",
  parameter AXISTEN_IF_EXT_512 = "FALSE",
  parameter AXISTEN_IF_EXT_512_CC_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_CQ_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_RC_STRADDLE = "FALSE",
  parameter AXISTEN_IF_EXT_512_RQ_STRADDLE = "FALSE",
  parameter AXISTEN_IF_LEGACY_MODE_ENABLE = "FALSE",
  parameter AXISTEN_IF_MSIX_FROM_RAM_PIPELINE = "FALSE",
  parameter AXISTEN_IF_MSIX_RX_PARITY_EN = "TRUE",
  parameter AXISTEN_IF_MSIX_TO_RAM_PIPELINE = "FALSE",
  parameter [1:0] AXISTEN_IF_RC_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_RC_STRADDLE = "FALSE",
  parameter [1:0] AXISTEN_IF_RQ_ALIGNMENT_MODE = 2'h0,
  parameter AXISTEN_IF_RX_PARITY_EN = "TRUE",
  parameter AXISTEN_IF_SIM_SHORT_CPL_TIMEOUT = "FALSE",
  parameter AXISTEN_IF_TX_PARITY_EN = "TRUE",
  parameter [1:0] AXISTEN_IF_WIDTH = 2'h2,
  parameter CCIX_DIRECT_ATTACH_MODE = "FALSE",
  parameter CCIX_ENABLE = "FALSE",
  parameter [15:0] CCIX_VENDOR_ID = 16'h0000,
  parameter CFG_BYPASS_MODE_ENABLE = "FALSE",
  parameter CRM_CORE_CLK_FREQ_500 = "TRUE",
  parameter [1:0] CRM_USER_CLK_FREQ = 2'h2,
  parameter [15:0] DEBUG_AXI4ST_SPARE = 16'h0000,
  parameter [7:0] DEBUG_AXIST_DISABLE_FEATURE_BIT = 8'h00,
  parameter [3:0] DEBUG_CAR_SPARE = 4'h0,
  parameter [15:0] DEBUG_CFG_SPARE = 16'h0000,
  parameter [15:0] DEBUG_LL_SPARE = 16'h0000,
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_DEFRAMER_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_SKP_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_LES_UPDATE_ON_SKP_PARITY_ERROR = "FALSE",
  parameter DEBUG_PL_DISABLE_REC_ENTRY_ON_DYNAMIC_DSKEW_FAIL = "FALSE",
  parameter DEBUG_PL_DISABLE_REC_ENTRY_ON_RX_BUFFER_UNDER_OVER_FLOW = "FALSE",
  parameter DEBUG_PL_DISABLE_SCRAMBLING = "FALSE",
  parameter DEBUG_PL_SIM_RESET_LFSR = "FALSE",
  parameter [15:0] DEBUG_PL_SPARE = 16'h0000,
  parameter DEBUG_TL_DISABLE_FC_TIMEOUT = "FALSE",
  parameter DEBUG_TL_DISABLE_RX_TLP_ORDER_CHECKS = "FALSE",
  parameter [15:0] DEBUG_TL_SPARE = 16'h0000,
  parameter [7:0] DNSTREAM_LINK_NUM = 8'h00,
  parameter DSN_CAP_ENABLE = "FALSE",
  parameter EXTENDED_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter HEADER_TYPE_OVERRIDE = "FALSE",
  parameter IS_SWITCH_PORT = "FALSE",
  parameter LEGACY_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter [8:0] LL_ACK_TIMEOUT = 9'h000,
  parameter LL_ACK_TIMEOUT_EN = "FALSE",
  parameter integer LL_ACK_TIMEOUT_FUNC = 0,
  parameter LL_DISABLE_SCHED_TX_NAK = "FALSE",
  parameter LL_REPLAY_FROM_RAM_PIPELINE = "FALSE",
  parameter [8:0] LL_REPLAY_TIMEOUT = 9'h000,
  parameter LL_REPLAY_TIMEOUT_EN = "FALSE",
  parameter integer LL_REPLAY_TIMEOUT_FUNC = 0,
  parameter LL_REPLAY_TO_RAM_PIPELINE = "FALSE",
  parameter LL_RX_TLP_PARITY_GEN = "TRUE",
  parameter LL_TX_TLP_PARITY_CHK = "TRUE",
  parameter [15:0] LL_USER_SPARE = 16'h0000,
  parameter [9:0] LTR_TX_MESSAGE_MINIMUM_INTERVAL = 10'h250,
  parameter LTR_TX_MESSAGE_ON_FUNC_POWER_STATE_CHANGE = "FALSE",
  parameter LTR_TX_MESSAGE_ON_LTR_ENABLE = "FALSE",
  parameter [11:0] MCAP_CAP_NEXTPTR = 12'h000,
  parameter MCAP_CONFIGURE_OVERRIDE = "FALSE",
  parameter MCAP_ENABLE = "FALSE",
  parameter MCAP_EOS_DESIGN_SWITCH = "FALSE",
  parameter [31:0] MCAP_FPGA_BITSTREAM_VERSION = 32'h00000000,
  parameter MCAP_GATE_IO_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_GATE_MEM_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INPUT_GATE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_EOS = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_ERROR = "FALSE",
  parameter [15:0] MCAP_VSEC_ID = 16'h0000,
  parameter [11:0] MCAP_VSEC_LEN = 12'h02C,
  parameter [3:0] MCAP_VSEC_REV = 4'h0,
  parameter PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE = "FALSE",
  parameter [11:0] PF0_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF0_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [3:0] PF0_ARI_CAP_VER = 4'h1,
  parameter [4:0] PF0_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] PF0_ATS_CAP_NEXTPTR = 12'h000,
  parameter PF0_ATS_CAP_ON = "FALSE",
  parameter [5:0] PF0_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF0_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF0_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF0_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF0_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF0_CLASS_CODE = 24'h000000,
  parameter PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_ARI_FORWARD_ENABLE = "FALSE",
  parameter PF0_DEV_CAP2_CPL_TIMEOUT_DISABLE = "TRUE",
  parameter PF0_DEV_CAP2_LTR_SUPPORT = "TRUE",
  parameter [1:0] PF0_DEV_CAP2_OBFF_SUPPORT = 2'h0,
  parameter PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT = "FALSE",
  parameter integer PF0_DEV_CAP_ENDPOINT_L0S_LATENCY = 0,
  parameter integer PF0_DEV_CAP_ENDPOINT_L1_LATENCY = 0,
  parameter PF0_DEV_CAP_EXT_TAG_SUPPORTED = "TRUE",
  parameter PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "TRUE",
  parameter [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF0_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF0_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF0_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF0_INTERRUPT_PIN = 3'h1,
  parameter integer PF0_LINK_CAP_ASPM_SUPPORT = 0,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN4 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN4 = 7,
  parameter [0:0] PF0_LINK_CONTROL_RCB = 1'h0,
  parameter PF0_LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE",
  parameter [9:0] PF0_LTR_CAP_MAX_NOSNOOP_LAT = 10'h000,
  parameter [9:0] PF0_LTR_CAP_MAX_SNOOP_LAT = 10'h000,
  parameter [11:0] PF0_LTR_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_LTR_CAP_VER = 4'h1,
  parameter [7:0] PF0_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [5:0] PF0_MSIX_VECTOR_COUNT = 6'h04,
  parameter integer PF0_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF0_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF0_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF0_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF0_PM_CAP_ID = 8'h01,
  parameter [7:0] PF0_PM_CAP_NEXTPTR = 8'h00,
  parameter PF0_PM_CAP_PMESUPPORT_D0 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D1 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D3HOT = "TRUE",
  parameter PF0_PM_CAP_SUPP_D1_STATE = "TRUE",
  parameter [2:0] PF0_PM_CAP_VER_ID = 3'h3,
  parameter PF0_PM_CSR_NOSOFTRESET = "TRUE",
  parameter [11:0] PF0_PRI_CAP_NEXTPTR = 12'h000,
  parameter PF0_PRI_CAP_ON = "FALSE",
  parameter [31:0] PF0_PRI_OST_PR_CAPACITY = 32'h00000000,
  parameter [11:0] PF0_SECONDARY_PCIE_CAP_NEXTPTR = 12'h000,
  parameter PF0_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF0_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF0_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF0_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF0_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF0_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF0_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF0_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF0_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF0_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF0_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF0_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF0_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter PF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF0_TPHR_CAP_ENABLE = "FALSE",
  parameter PF0_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF0_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF0_TPHR_CAP_VER = 4'h1,
  parameter [3:0] PF0_VC_ARB_CAPABILITY = 4'h0,
  parameter [7:0] PF0_VC_ARB_TBL_OFFSET = 8'h00,
  parameter PF0_VC_CAP_ENABLE = "FALSE",
  parameter [11:0] PF0_VC_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_VC_CAP_VER = 4'h1,
  parameter PF0_VC_EXTENDED_COUNT = "FALSE",
  parameter PF0_VC_LOW_PRIORITY_EXTENDED_COUNT = "FALSE",
  parameter [11:0] PF1_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF1_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF1_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [4:0] PF1_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] PF1_ATS_CAP_NEXTPTR = 12'h000,
  parameter PF1_ATS_CAP_ON = "FALSE",
  parameter [5:0] PF1_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF1_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF1_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF1_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF1_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF1_CLASS_CODE = 24'h000000,
  parameter [2:0] PF1_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF1_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF1_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF1_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF1_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF1_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF1_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF1_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF1_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF1_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF1_PM_CAP_NEXTPTR = 8'h00,
  parameter [11:0] PF1_PRI_CAP_NEXTPTR = 12'h000,
  parameter PF1_PRI_CAP_ON = "FALSE",
  parameter [31:0] PF1_PRI_OST_PR_CAPACITY = 32'h00000000,
  parameter PF1_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF1_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF1_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF1_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF1_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF1_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF1_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF1_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF1_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF1_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF1_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF1_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF1_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] PF2_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF2_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF2_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [4:0] PF2_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] PF2_ATS_CAP_NEXTPTR = 12'h000,
  parameter PF2_ATS_CAP_ON = "FALSE",
  parameter [5:0] PF2_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF2_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF2_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF2_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF2_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF2_CLASS_CODE = 24'h000000,
  parameter [2:0] PF2_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF2_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF2_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF2_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF2_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF2_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF2_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF2_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF2_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF2_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF2_PM_CAP_NEXTPTR = 8'h00,
  parameter [11:0] PF2_PRI_CAP_NEXTPTR = 12'h000,
  parameter PF2_PRI_CAP_ON = "FALSE",
  parameter [31:0] PF2_PRI_OST_PR_CAPACITY = 32'h00000000,
  parameter PF2_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF2_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF2_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF2_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF2_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF2_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF2_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF2_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF2_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF2_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF2_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF2_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF2_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] PF3_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF3_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF3_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [4:0] PF3_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] PF3_ATS_CAP_NEXTPTR = 12'h000,
  parameter PF3_ATS_CAP_ON = "FALSE",
  parameter [5:0] PF3_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF3_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF3_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF3_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF3_CAPABILITY_POINTER = 8'h80,
  parameter [23:0] PF3_CLASS_CODE = 24'h000000,
  parameter [2:0] PF3_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF3_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF3_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF3_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [2:0] PF3_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF3_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF3_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF3_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF3_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [7:0] PF3_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [7:0] PF3_PM_CAP_NEXTPTR = 8'h00,
  parameter [11:0] PF3_PRI_CAP_NEXTPTR = 12'h000,
  parameter PF3_PRI_CAP_ON = "FALSE",
  parameter [31:0] PF3_PRI_OST_PR_CAPACITY = 32'h00000000,
  parameter PF3_SRIOV_ARI_CAPBL_HIER_PRESERVED = "FALSE",
  parameter [5:0] PF3_SRIOV_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF3_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [5:0] PF3_SRIOV_BAR2_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [5:0] PF3_SRIOV_BAR4_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF3_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF3_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF3_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF3_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF3_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF3_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF3_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF3_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [11:0] PF3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF3_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter PL_CFG_STATE_ROBUSTNESS_ENABLE = "TRUE",
  parameter PL_CTRL_SKP_GEN_ENABLE = "FALSE",
  parameter PL_CTRL_SKP_PARITY_AND_CRC_CHECK_DISABLE = "TRUE",
  parameter PL_DEEMPH_SOURCE_SELECT = "TRUE",
  parameter PL_DESKEW_ON_SKIP_IN_GEN12 = "FALSE",
  parameter PL_DISABLE_AUTO_EQ_SPEED_CHANGE_TO_GEN3 = "FALSE",
  parameter PL_DISABLE_AUTO_EQ_SPEED_CHANGE_TO_GEN4 = "FALSE",
  parameter PL_DISABLE_AUTO_SPEED_CHANGE_TO_GEN2 = "FALSE",
  parameter PL_DISABLE_DC_BALANCE = "FALSE",
  parameter PL_DISABLE_EI_INFER_IN_L0 = "FALSE",
  parameter PL_DISABLE_LANE_REVERSAL = "FALSE",
  parameter [1:0] PL_DISABLE_LFSR_UPDATE_ON_SKP = 2'h0,
  parameter PL_DISABLE_RETRAIN_ON_EB_ERROR = "FALSE",
  parameter PL_DISABLE_RETRAIN_ON_FRAMING_ERROR = "FALSE",
  parameter [15:0] PL_DISABLE_RETRAIN_ON_SPECIFIC_FRAMING_ERROR = 16'h0000,
  parameter PL_DISABLE_UPCONFIG_CAPABLE = "FALSE",
  parameter [1:0] PL_EQ_ADAPT_DISABLE_COEFF_CHECK = 2'h0,
  parameter [1:0] PL_EQ_ADAPT_DISABLE_PRESET_CHECK = 2'h0,
  parameter [4:0] PL_EQ_ADAPT_ITER_COUNT = 5'h02,
  parameter [1:0] PL_EQ_ADAPT_REJECT_RETRY_COUNT = 2'h1,
  parameter [1:0] PL_EQ_BYPASS_PHASE23 = 2'h0,
  parameter [5:0] PL_EQ_DEFAULT_RX_PRESET_HINT = 6'h33,
  parameter [7:0] PL_EQ_DEFAULT_TX_PRESET = 8'h44,
  parameter PL_EQ_DISABLE_MISMATCH_CHECK = "TRUE",
  parameter [1:0] PL_EQ_RX_ADAPT_EQ_PHASE0 = 2'h0,
  parameter [1:0] PL_EQ_RX_ADAPT_EQ_PHASE1 = 2'h0,
  parameter PL_EQ_SHORT_ADAPT_PHASE = "FALSE",
  parameter PL_EQ_TX_8G_EQ_TS2_ENABLE = "FALSE",
  parameter PL_EXIT_LOOPBACK_ON_EI_ENTRY = "TRUE",
  parameter PL_INFER_EI_DISABLE_LPBK_ACTIVE = "TRUE",
  parameter PL_INFER_EI_DISABLE_REC_RC = "FALSE",
  parameter PL_INFER_EI_DISABLE_REC_SPD = "FALSE",
  parameter [31:0] PL_LANE0_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE10_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE11_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE12_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE13_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE14_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE15_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE1_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE2_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE3_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE4_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE5_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE6_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE7_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE8_EQ_CONTROL = 32'h00003F00,
  parameter [31:0] PL_LANE9_EQ_CONTROL = 32'h00003F00,
  parameter [3:0] PL_LINK_CAP_MAX_LINK_SPEED = 4'h4,
  parameter [4:0] PL_LINK_CAP_MAX_LINK_WIDTH = 5'h08,
  parameter integer PL_N_FTS = 255,
  parameter PL_QUIESCE_GUARANTEE_DISABLE = "FALSE",
  parameter PL_REDO_EQ_SOURCE_SELECT = "TRUE",
  parameter [7:0] PL_REPORT_ALL_PHY_ERRORS = 8'h00,
  parameter [1:0] PL_RX_ADAPT_TIMER_CLWS_CLOBBER_TX_TS = 2'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_CLWS_GEN3 = 4'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_CLWS_GEN4 = 4'h0,
  parameter [1:0] PL_RX_ADAPT_TIMER_RRL_CLOBBER_TX_TS = 2'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_RRL_GEN3 = 4'h0,
  parameter [3:0] PL_RX_ADAPT_TIMER_RRL_GEN4 = 4'h0,
  parameter [1:0] PL_RX_L0S_EXIT_TO_RECOVERY = 2'h0,
  parameter [1:0] PL_SIM_FAST_LINK_TRAINING = 2'h0,
  parameter PL_SRIS_ENABLE = "FALSE",
  parameter [6:0] PL_SRIS_SKPOS_GEN_SPD_VEC = 7'h00,
  parameter [6:0] PL_SRIS_SKPOS_REC_SPD_VEC = 7'h00,
  parameter PL_UPSTREAM_FACING = "TRUE",
  parameter [15:0] PL_USER_SPARE = 16'h0000,
  parameter [15:0] PL_USER_SPARE2 = 16'h0000,
  parameter [15:0] PM_ASPML0S_TIMEOUT = 16'h1500,
  parameter [19:0] PM_ASPML1_ENTRY_DELAY = 20'h003E8,
  parameter PM_ENABLE_L23_ENTRY = "FALSE",
  parameter PM_ENABLE_SLOT_POWER_CAPTURE = "TRUE",
  parameter [31:0] PM_L1_REENTRY_DELAY = 32'h00000100,
  parameter [19:0] PM_PME_SERVICE_TIMEOUT_DELAY = 20'h00000,
  parameter [15:0] PM_PME_TURNOFF_ACK_DELAY = 16'h0100,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",
  parameter [31:0] SIM_JTAG_IDCODE = 32'h00000000,
  parameter SIM_VERSION = "1.0",
  parameter SPARE_BIT0 = "FALSE",
  parameter integer SPARE_BIT1 = 0,
  parameter integer SPARE_BIT2 = 0,
  parameter SPARE_BIT3 = "FALSE",
  parameter integer SPARE_BIT4 = 0,
  parameter integer SPARE_BIT5 = 0,
  parameter integer SPARE_BIT6 = 0,
  parameter integer SPARE_BIT7 = 0,
  parameter integer SPARE_BIT8 = 0,
  parameter [7:0] SPARE_BYTE0 = 8'h00,
  parameter [7:0] SPARE_BYTE1 = 8'h00,
  parameter [7:0] SPARE_BYTE2 = 8'h00,
  parameter [7:0] SPARE_BYTE3 = 8'h00,
  parameter [31:0] SPARE_WORD0 = 32'h00000000,
  parameter [31:0] SPARE_WORD1 = 32'h00000000,
  parameter [31:0] SPARE_WORD2 = 32'h00000000,
  parameter [31:0] SPARE_WORD3 = 32'h00000000,
  parameter [3:0] SRIOV_CAP_ENABLE = 4'h0,
  parameter TL2CFG_IF_PARITY_CHK = "TRUE",
  parameter [1:0] TL_COMPLETION_RAM_NUM_TLPS = 2'h0,
  parameter [1:0] TL_COMPLETION_RAM_SIZE = 2'h1,
  parameter [11:0] TL_CREDITS_CD = 12'h000,
  parameter [11:0] TL_CREDITS_CD_VC1 = 12'h000,
  parameter [7:0] TL_CREDITS_CH = 8'h00,
  parameter [7:0] TL_CREDITS_CH_VC1 = 8'h00,
  parameter [11:0] TL_CREDITS_NPD = 12'h004,
  parameter [11:0] TL_CREDITS_NPD_VC1 = 12'h000,
  parameter [7:0] TL_CREDITS_NPH = 8'h20,
  parameter [7:0] TL_CREDITS_NPH_VC1 = 8'h01,
  parameter [11:0] TL_CREDITS_PD = 12'h0E0,
  parameter [11:0] TL_CREDITS_PD_VC1 = 12'h3E0,
  parameter [7:0] TL_CREDITS_PH = 8'h20,
  parameter [7:0] TL_CREDITS_PH_VC1 = 8'h20,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TIME = 5'h02,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TIME_VC1 = 5'h02,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TLP_COUNT = 5'h08,
  parameter [4:0] TL_FC_UPDATE_MIN_INTERVAL_TLP_COUNT_VC1 = 5'h08,
  parameter TL_FEATURE_ENABLE_FC_SCALING = "FALSE",
  parameter [1:0] TL_PF_ENABLE_REG = 2'h0,
  parameter [0:0] TL_POSTED_RAM_SIZE = 1'h0,
  parameter TL_RX_COMPLETION_FROM_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_COMPLETION_TO_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_COMPLETION_TO_RAM_WRITE_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_FROM_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_TO_RAM_READ_PIPELINE = "FALSE",
  parameter TL_RX_POSTED_TO_RAM_WRITE_PIPELINE = "FALSE",
  parameter TL_TX_MUX_STRICT_PRIORITY = "TRUE",
  parameter TL_TX_TLP_STRADDLE_ENABLE = "FALSE",
  parameter TL_TX_TLP_TERMINATE_PARITY = "FALSE",
  parameter [15:0] TL_USER_SPARE = 16'h0000,
  parameter TPH_FROM_RAM_PIPELINE = "FALSE",
  parameter TPH_TO_RAM_PIPELINE = "FALSE",
  parameter [7:0] VF0_CAPABILITY_POINTER = 8'h80,
  parameter [11:0] VFG0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [4:0] VFG0_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] VFG0_ATS_CAP_NEXTPTR = 12'h000,
  parameter VFG0_ATS_CAP_ON = "FALSE",
  parameter [7:0] VFG0_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG0_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG1_ARI_CAP_NEXTPTR = 12'h000,
  parameter [4:0] VFG1_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] VFG1_ATS_CAP_NEXTPTR = 12'h000,
  parameter VFG1_ATS_CAP_ON = "FALSE",
  parameter [7:0] VFG1_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG1_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG2_ARI_CAP_NEXTPTR = 12'h000,
  parameter [4:0] VFG2_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] VFG2_ATS_CAP_NEXTPTR = 12'h000,
  parameter VFG2_ATS_CAP_ON = "FALSE",
  parameter [7:0] VFG2_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG2_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [11:0] VFG3_ARI_CAP_NEXTPTR = 12'h000,
  parameter [4:0] VFG3_ATS_CAP_INV_QUEUE_DEPTH = 5'h00,
  parameter [11:0] VFG3_ATS_CAP_NEXTPTR = 12'h000,
  parameter VFG3_ATS_CAP_ON = "FALSE",
  parameter [7:0] VFG3_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer VFG3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VFG3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VFG3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VFG3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VFG3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0] VFG3_PCIE_CAP_NEXTPTR = 8'h00,
  parameter [11:0] VFG3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VFG3_TPHR_CAP_ST_MODE_SEL = 3'h0
)(
  output [7:0] AXIUSEROUT,
  output CCIXTXCREDIT,
  output [7:0] CFGBUSNUMBER,
  output [1:0] CFGCURRENTSPEED,
  output CFGERRCOROUT,
  output CFGERRFATALOUT,
  output CFGERRNONFATALOUT,
  output [7:0] CFGEXTFUNCTIONNUMBER,
  output CFGEXTREADRECEIVED,
  output [9:0] CFGEXTREGISTERNUMBER,
  output [3:0] CFGEXTWRITEBYTEENABLE,
  output [31:0] CFGEXTWRITEDATA,
  output CFGEXTWRITERECEIVED,
  output [11:0] CFGFCCPLD,
  output [7:0] CFGFCCPLH,
  output [11:0] CFGFCNPD,
  output [7:0] CFGFCNPH,
  output [11:0] CFGFCPD,
  output [7:0] CFGFCPH,
  output [3:0] CFGFLRINPROCESS,
  output [11:0] CFGFUNCTIONPOWERSTATE,
  output [15:0] CFGFUNCTIONSTATUS,
  output CFGHOTRESETOUT,
  output [31:0] CFGINTERRUPTMSIDATA,
  output [3:0] CFGINTERRUPTMSIENABLE,
  output CFGINTERRUPTMSIFAIL,
  output CFGINTERRUPTMSIMASKUPDATE,
  output [11:0] CFGINTERRUPTMSIMMENABLE,
  output CFGINTERRUPTMSISENT,
  output [3:0] CFGINTERRUPTMSIXENABLE,
  output [3:0] CFGINTERRUPTMSIXMASK,
  output CFGINTERRUPTMSIXVECPENDINGSTATUS,
  output CFGINTERRUPTSENT,
  output [1:0] CFGLINKPOWERSTATE,
  output [4:0] CFGLOCALERROROUT,
  output CFGLOCALERRORVALID,
  output CFGLTRENABLE,
  output [5:0] CFGLTSSMSTATE,
  output [1:0] CFGMAXPAYLOAD,
  output [2:0] CFGMAXREADREQ,
  output [31:0] CFGMGMTREADDATA,
  output CFGMGMTREADWRITEDONE,
  output CFGMSGRECEIVED,
  output [7:0] CFGMSGRECEIVEDDATA,
  output [4:0] CFGMSGRECEIVEDTYPE,
  output CFGMSGTRANSMITDONE,
  output [12:0] CFGMSIXRAMADDRESS,
  output CFGMSIXRAMREADENABLE,
  output [3:0] CFGMSIXRAMWRITEBYTEENABLE,
  output [35:0] CFGMSIXRAMWRITEDATA,
  output [2:0] CFGNEGOTIATEDWIDTH,
  output [1:0] CFGOBFFENABLE,
  output CFGPHYLINKDOWN,
  output [1:0] CFGPHYLINKSTATUS,
  output CFGPLSTATUSCHANGE,
  output CFGPOWERSTATECHANGEINTERRUPT,
  output [3:0] CFGRCBSTATUS,
  output [1:0] CFGRXPMSTATE,
  output [11:0] CFGTPHRAMADDRESS,
  output CFGTPHRAMREADENABLE,
  output [3:0] CFGTPHRAMWRITEBYTEENABLE,
  output [35:0] CFGTPHRAMWRITEDATA,
  output [3:0] CFGTPHREQUESTERENABLE,
  output [11:0] CFGTPHSTMODE,
  output [1:0] CFGTXPMSTATE,
  output CFGVC1ENABLE,
  output CFGVC1NEGOTIATIONPENDING,
  output CONFMCAPDESIGNSWITCH,
  output CONFMCAPEOS,
  output CONFMCAPINUSEBYPCIE,
  output CONFREQREADY,
  output [31:0] CONFRESPRDATA,
  output CONFRESPVALID,
  output [129:0] DBGCCIXOUT,
  output [31:0] DBGCTRL0OUT,
  output [31:0] DBGCTRL1OUT,
  output [255:0] DBGDATA0OUT,
  output [255:0] DBGDATA1OUT,
  output [15:0] DRPDO,
  output DRPRDY,
  output [45:0] MAXISCCIXRXTUSER,
  output MAXISCCIXRXTVALID,
  output [255:0] MAXISCQTDATA,
  output [7:0] MAXISCQTKEEP,
  output MAXISCQTLAST,
  output [87:0] MAXISCQTUSER,
  output MAXISCQTVALID,
  output [255:0] MAXISRCTDATA,
  output [7:0] MAXISRCTKEEP,
  output MAXISRCTLAST,
  output [74:0] MAXISRCTUSER,
  output MAXISRCTVALID,
  output [8:0] MIREPLAYRAMADDRESS0,
  output [8:0] MIREPLAYRAMADDRESS1,
  output MIREPLAYRAMREADENABLE0,
  output MIREPLAYRAMREADENABLE1,
  output [127:0] MIREPLAYRAMWRITEDATA0,
  output [127:0] MIREPLAYRAMWRITEDATA1,
  output MIREPLAYRAMWRITEENABLE0,
  output MIREPLAYRAMWRITEENABLE1,
  output [8:0] MIRXCOMPLETIONRAMREADADDRESS0,
  output [8:0] MIRXCOMPLETIONRAMREADADDRESS1,
  output [1:0] MIRXCOMPLETIONRAMREADENABLE0,
  output [1:0] MIRXCOMPLETIONRAMREADENABLE1,
  output [8:0] MIRXCOMPLETIONRAMWRITEADDRESS0,
  output [8:0] MIRXCOMPLETIONRAMWRITEADDRESS1,
  output [143:0] MIRXCOMPLETIONRAMWRITEDATA0,
  output [143:0] MIRXCOMPLETIONRAMWRITEDATA1,
  output [1:0] MIRXCOMPLETIONRAMWRITEENABLE0,
  output [1:0] MIRXCOMPLETIONRAMWRITEENABLE1,
  output [8:0] MIRXPOSTEDREQUESTRAMREADADDRESS0,
  output [8:0] MIRXPOSTEDREQUESTRAMREADADDRESS1,
  output MIRXPOSTEDREQUESTRAMREADENABLE0,
  output MIRXPOSTEDREQUESTRAMREADENABLE1,
  output [8:0] MIRXPOSTEDREQUESTRAMWRITEADDRESS0,
  output [8:0] MIRXPOSTEDREQUESTRAMWRITEADDRESS1,
  output [143:0] MIRXPOSTEDREQUESTRAMWRITEDATA0,
  output [143:0] MIRXPOSTEDREQUESTRAMWRITEDATA1,
  output MIRXPOSTEDREQUESTRAMWRITEENABLE0,
  output MIRXPOSTEDREQUESTRAMWRITEENABLE1,
  output [5:0] PCIECQNPREQCOUNT,
  output PCIEPERST0B,
  output PCIEPERST1B,
  output [5:0] PCIERQSEQNUM0,
  output [5:0] PCIERQSEQNUM1,
  output PCIERQSEQNUMVLD0,
  output PCIERQSEQNUMVLD1,
  output [7:0] PCIERQTAG0,
  output [7:0] PCIERQTAG1,
  output [3:0] PCIERQTAGAV,
  output PCIERQTAGVLD0,
  output PCIERQTAGVLD1,
  output [3:0] PCIETFCNPDAV,
  output [3:0] PCIETFCNPHAV,
  output [1:0] PIPERX00EQCONTROL,
  output PIPERX00POLARITY,
  output [1:0] PIPERX01EQCONTROL,
  output PIPERX01POLARITY,
  output [1:0] PIPERX02EQCONTROL,
  output PIPERX02POLARITY,
  output [1:0] PIPERX03EQCONTROL,
  output PIPERX03POLARITY,
  output [1:0] PIPERX04EQCONTROL,
  output PIPERX04POLARITY,
  output [1:0] PIPERX05EQCONTROL,
  output PIPERX05POLARITY,
  output [1:0] PIPERX06EQCONTROL,
  output PIPERX06POLARITY,
  output [1:0] PIPERX07EQCONTROL,
  output PIPERX07POLARITY,
  output [1:0] PIPERX08EQCONTROL,
  output PIPERX08POLARITY,
  output [1:0] PIPERX09EQCONTROL,
  output PIPERX09POLARITY,
  output [1:0] PIPERX10EQCONTROL,
  output PIPERX10POLARITY,
  output [1:0] PIPERX11EQCONTROL,
  output PIPERX11POLARITY,
  output [1:0] PIPERX12EQCONTROL,
  output PIPERX12POLARITY,
  output [1:0] PIPERX13EQCONTROL,
  output PIPERX13POLARITY,
  output [1:0] PIPERX14EQCONTROL,
  output PIPERX14POLARITY,
  output [1:0] PIPERX15EQCONTROL,
  output PIPERX15POLARITY,
  output [5:0] PIPERXEQLPLFFS,
  output [3:0] PIPERXEQLPTXPRESET,
  output [1:0] PIPETX00CHARISK,
  output PIPETX00COMPLIANCE,
  output [31:0] PIPETX00DATA,
  output PIPETX00DATAVALID,
  output PIPETX00ELECIDLE,
  output [1:0] PIPETX00EQCONTROL,
  output [5:0] PIPETX00EQDEEMPH,
  output [1:0] PIPETX00POWERDOWN,
  output PIPETX00STARTBLOCK,
  output [1:0] PIPETX00SYNCHEADER,
  output [1:0] PIPETX01CHARISK,
  output PIPETX01COMPLIANCE,
  output [31:0] PIPETX01DATA,
  output PIPETX01DATAVALID,
  output PIPETX01ELECIDLE,
  output [1:0] PIPETX01EQCONTROL,
  output [5:0] PIPETX01EQDEEMPH,
  output [1:0] PIPETX01POWERDOWN,
  output PIPETX01STARTBLOCK,
  output [1:0] PIPETX01SYNCHEADER,
  output [1:0] PIPETX02CHARISK,
  output PIPETX02COMPLIANCE,
  output [31:0] PIPETX02DATA,
  output PIPETX02DATAVALID,
  output PIPETX02ELECIDLE,
  output [1:0] PIPETX02EQCONTROL,
  output [5:0] PIPETX02EQDEEMPH,
  output [1:0] PIPETX02POWERDOWN,
  output PIPETX02STARTBLOCK,
  output [1:0] PIPETX02SYNCHEADER,
  output [1:0] PIPETX03CHARISK,
  output PIPETX03COMPLIANCE,
  output [31:0] PIPETX03DATA,
  output PIPETX03DATAVALID,
  output PIPETX03ELECIDLE,
  output [1:0] PIPETX03EQCONTROL,
  output [5:0] PIPETX03EQDEEMPH,
  output [1:0] PIPETX03POWERDOWN,
  output PIPETX03STARTBLOCK,
  output [1:0] PIPETX03SYNCHEADER,
  output [1:0] PIPETX04CHARISK,
  output PIPETX04COMPLIANCE,
  output [31:0] PIPETX04DATA,
  output PIPETX04DATAVALID,
  output PIPETX04ELECIDLE,
  output [1:0] PIPETX04EQCONTROL,
  output [5:0] PIPETX04EQDEEMPH,
  output [1:0] PIPETX04POWERDOWN,
  output PIPETX04STARTBLOCK,
  output [1:0] PIPETX04SYNCHEADER,
  output [1:0] PIPETX05CHARISK,
  output PIPETX05COMPLIANCE,
  output [31:0] PIPETX05DATA,
  output PIPETX05DATAVALID,
  output PIPETX05ELECIDLE,
  output [1:0] PIPETX05EQCONTROL,
  output [5:0] PIPETX05EQDEEMPH,
  output [1:0] PIPETX05POWERDOWN,
  output PIPETX05STARTBLOCK,
  output [1:0] PIPETX05SYNCHEADER,
  output [1:0] PIPETX06CHARISK,
  output PIPETX06COMPLIANCE,
  output [31:0] PIPETX06DATA,
  output PIPETX06DATAVALID,
  output PIPETX06ELECIDLE,
  output [1:0] PIPETX06EQCONTROL,
  output [5:0] PIPETX06EQDEEMPH,
  output [1:0] PIPETX06POWERDOWN,
  output PIPETX06STARTBLOCK,
  output [1:0] PIPETX06SYNCHEADER,
  output [1:0] PIPETX07CHARISK,
  output PIPETX07COMPLIANCE,
  output [31:0] PIPETX07DATA,
  output PIPETX07DATAVALID,
  output PIPETX07ELECIDLE,
  output [1:0] PIPETX07EQCONTROL,
  output [5:0] PIPETX07EQDEEMPH,
  output [1:0] PIPETX07POWERDOWN,
  output PIPETX07STARTBLOCK,
  output [1:0] PIPETX07SYNCHEADER,
  output [1:0] PIPETX08CHARISK,
  output PIPETX08COMPLIANCE,
  output [31:0] PIPETX08DATA,
  output PIPETX08DATAVALID,
  output PIPETX08ELECIDLE,
  output [1:0] PIPETX08EQCONTROL,
  output [5:0] PIPETX08EQDEEMPH,
  output [1:0] PIPETX08POWERDOWN,
  output PIPETX08STARTBLOCK,
  output [1:0] PIPETX08SYNCHEADER,
  output [1:0] PIPETX09CHARISK,
  output PIPETX09COMPLIANCE,
  output [31:0] PIPETX09DATA,
  output PIPETX09DATAVALID,
  output PIPETX09ELECIDLE,
  output [1:0] PIPETX09EQCONTROL,
  output [5:0] PIPETX09EQDEEMPH,
  output [1:0] PIPETX09POWERDOWN,
  output PIPETX09STARTBLOCK,
  output [1:0] PIPETX09SYNCHEADER,
  output [1:0] PIPETX10CHARISK,
  output PIPETX10COMPLIANCE,
  output [31:0] PIPETX10DATA,
  output PIPETX10DATAVALID,
  output PIPETX10ELECIDLE,
  output [1:0] PIPETX10EQCONTROL,
  output [5:0] PIPETX10EQDEEMPH,
  output [1:0] PIPETX10POWERDOWN,
  output PIPETX10STARTBLOCK,
  output [1:0] PIPETX10SYNCHEADER,
  output [1:0] PIPETX11CHARISK,
  output PIPETX11COMPLIANCE,
  output [31:0] PIPETX11DATA,
  output PIPETX11DATAVALID,
  output PIPETX11ELECIDLE,
  output [1:0] PIPETX11EQCONTROL,
  output [5:0] PIPETX11EQDEEMPH,
  output [1:0] PIPETX11POWERDOWN,
  output PIPETX11STARTBLOCK,
  output [1:0] PIPETX11SYNCHEADER,
  output [1:0] PIPETX12CHARISK,
  output PIPETX12COMPLIANCE,
  output [31:0] PIPETX12DATA,
  output PIPETX12DATAVALID,
  output PIPETX12ELECIDLE,
  output [1:0] PIPETX12EQCONTROL,
  output [5:0] PIPETX12EQDEEMPH,
  output [1:0] PIPETX12POWERDOWN,
  output PIPETX12STARTBLOCK,
  output [1:0] PIPETX12SYNCHEADER,
  output [1:0] PIPETX13CHARISK,
  output PIPETX13COMPLIANCE,
  output [31:0] PIPETX13DATA,
  output PIPETX13DATAVALID,
  output PIPETX13ELECIDLE,
  output [1:0] PIPETX13EQCONTROL,
  output [5:0] PIPETX13EQDEEMPH,
  output [1:0] PIPETX13POWERDOWN,
  output PIPETX13STARTBLOCK,
  output [1:0] PIPETX13SYNCHEADER,
  output [1:0] PIPETX14CHARISK,
  output PIPETX14COMPLIANCE,
  output [31:0] PIPETX14DATA,
  output PIPETX14DATAVALID,
  output PIPETX14ELECIDLE,
  output [1:0] PIPETX14EQCONTROL,
  output [5:0] PIPETX14EQDEEMPH,
  output [1:0] PIPETX14POWERDOWN,
  output PIPETX14STARTBLOCK,
  output [1:0] PIPETX14SYNCHEADER,
  output [1:0] PIPETX15CHARISK,
  output PIPETX15COMPLIANCE,
  output [31:0] PIPETX15DATA,
  output PIPETX15DATAVALID,
  output PIPETX15ELECIDLE,
  output [1:0] PIPETX15EQCONTROL,
  output [5:0] PIPETX15EQDEEMPH,
  output [1:0] PIPETX15POWERDOWN,
  output PIPETX15STARTBLOCK,
  output [1:0] PIPETX15SYNCHEADER,
  output PIPETXDEEMPH,
  output [2:0] PIPETXMARGIN,
  output [1:0] PIPETXRATE,
  output PIPETXRCVRDET,
  output PIPETXRESET,
  output PIPETXSWING,
  output PLEQINPROGRESS,
  output [1:0] PLEQPHASE,
  output PLGEN34EQMISMATCH,
  output [3:0] SAXISCCTREADY,
  output [3:0] SAXISRQTREADY,
  output [23:0] USERSPAREOUT,

  input [7:0] AXIUSERIN,
  input CCIXOPTIMIZEDTLPTXANDRXENABLE,
  input CCIXRXCORRECTABLEERRORDETECTED,
  input CCIXRXFIFOOVERFLOW,
  input CCIXRXTLPFORWARDED0,
  input CCIXRXTLPFORWARDED1,
  input [5:0] CCIXRXTLPFORWARDEDLENGTH0,
  input [5:0] CCIXRXTLPFORWARDEDLENGTH1,
  input CCIXRXUNCORRECTABLEERRORDETECTED,
  input CFGCONFIGSPACEENABLE,
  input [15:0] CFGDEVIDPF0,
  input [15:0] CFGDEVIDPF1,
  input [15:0] CFGDEVIDPF2,
  input [15:0] CFGDEVIDPF3,
  input [7:0] CFGDSBUSNUMBER,
  input [4:0] CFGDSDEVICENUMBER,
  input [2:0] CFGDSFUNCTIONNUMBER,
  input [63:0] CFGDSN,
  input [7:0] CFGDSPORTNUMBER,
  input CFGERRCORIN,
  input CFGERRUNCORIN,
  input [31:0] CFGEXTREADDATA,
  input CFGEXTREADDATAVALID,
  input [2:0] CFGFCSEL,
  input CFGFCVCSEL,
  input [3:0] CFGFLRDONE,
  input CFGHOTRESETIN,
  input [3:0] CFGINTERRUPTINT,
  input [2:0] CFGINTERRUPTMSIATTR,
  input [7:0] CFGINTERRUPTMSIFUNCTIONNUMBER,
  input [31:0] CFGINTERRUPTMSIINT,
  input [31:0] CFGINTERRUPTMSIPENDINGSTATUS,
  input CFGINTERRUPTMSIPENDINGSTATUSDATAENABLE,
  input [1:0] CFGINTERRUPTMSIPENDINGSTATUSFUNCTIONNUM,
  input [1:0] CFGINTERRUPTMSISELECT,
  input CFGINTERRUPTMSITPHPRESENT,
  input [7:0] CFGINTERRUPTMSITPHSTTAG,
  input [1:0] CFGINTERRUPTMSITPHTYPE,
  input [63:0] CFGINTERRUPTMSIXADDRESS,
  input [31:0] CFGINTERRUPTMSIXDATA,
  input CFGINTERRUPTMSIXINT,
  input [1:0] CFGINTERRUPTMSIXVECPENDING,
  input [3:0] CFGINTERRUPTPENDING,
  input CFGLINKTRAININGENABLE,
  input [9:0] CFGMGMTADDR,
  input [3:0] CFGMGMTBYTEENABLE,
  input CFGMGMTDEBUGACCESS,
  input [7:0] CFGMGMTFUNCTIONNUMBER,
  input CFGMGMTREAD,
  input CFGMGMTWRITE,
  input [31:0] CFGMGMTWRITEDATA,
  input CFGMSGTRANSMIT,
  input [31:0] CFGMSGTRANSMITDATA,
  input [2:0] CFGMSGTRANSMITTYPE,
  input [35:0] CFGMSIXRAMREADDATA,
  input CFGPMASPML1ENTRYREJECT,
  input CFGPMASPMTXL0SENTRYDISABLE,
  input CFGPOWERSTATECHANGEACK,
  input CFGREQPMTRANSITIONL23READY,
  input [7:0] CFGREVIDPF0,
  input [7:0] CFGREVIDPF1,
  input [7:0] CFGREVIDPF2,
  input [7:0] CFGREVIDPF3,
  input [15:0] CFGSUBSYSIDPF0,
  input [15:0] CFGSUBSYSIDPF1,
  input [15:0] CFGSUBSYSIDPF2,
  input [15:0] CFGSUBSYSIDPF3,
  input [15:0] CFGSUBSYSVENDID,
  input [35:0] CFGTPHRAMREADDATA,
  input [15:0] CFGVENDID,
  input CFGVFFLRDONE,
  input [7:0] CFGVFFLRFUNCNUM,
  input CONFMCAPREQUESTBYCONF,
  input [31:0] CONFREQDATA,
  input [3:0] CONFREQREGNUM,
  input [1:0] CONFREQTYPE,
  input CONFREQVALID,
  input CORECLK,
  input CORECLKCCIX,
  input CORECLKMIREPLAYRAM0,
  input CORECLKMIREPLAYRAM1,
  input CORECLKMIRXCOMPLETIONRAM0,
  input CORECLKMIRXCOMPLETIONRAM1,
  input CORECLKMIRXPOSTEDREQUESTRAM0,
  input CORECLKMIRXPOSTEDREQUESTRAM1,
  input [5:0] DBGSEL0,
  input [5:0] DBGSEL1,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input [21:0] MAXISCQTREADY,
  input [21:0] MAXISRCTREADY,
  input MCAPCLK,
  input MCAPPERST0B,
  input MCAPPERST1B,
  input MGMTRESETN,
  input MGMTSTICKYRESETN,
  input [5:0] MIREPLAYRAMERRCOR,
  input [5:0] MIREPLAYRAMERRUNCOR,
  input [127:0] MIREPLAYRAMREADDATA0,
  input [127:0] MIREPLAYRAMREADDATA1,
  input [11:0] MIRXCOMPLETIONRAMERRCOR,
  input [11:0] MIRXCOMPLETIONRAMERRUNCOR,
  input [143:0] MIRXCOMPLETIONRAMREADDATA0,
  input [143:0] MIRXCOMPLETIONRAMREADDATA1,
  input [5:0] MIRXPOSTEDREQUESTRAMERRCOR,
  input [5:0] MIRXPOSTEDREQUESTRAMERRUNCOR,
  input [143:0] MIRXPOSTEDREQUESTRAMREADDATA0,
  input [143:0] MIRXPOSTEDREQUESTRAMREADDATA1,
  input [1:0] PCIECOMPLDELIVERED,
  input [7:0] PCIECOMPLDELIVEREDTAG0,
  input [7:0] PCIECOMPLDELIVEREDTAG1,
  input [1:0] PCIECQNPREQ,
  input PCIECQNPUSERCREDITRCVD,
  input PCIECQPIPELINEEMPTY,
  input PCIEPOSTEDREQDELIVERED,
  input PIPECLK,
  input PIPECLKEN,
  input [5:0] PIPEEQFS,
  input [5:0] PIPEEQLF,
  input PIPERESETN,
  input [1:0] PIPERX00CHARISK,
  input [31:0] PIPERX00DATA,
  input PIPERX00DATAVALID,
  input PIPERX00ELECIDLE,
  input PIPERX00EQDONE,
  input PIPERX00EQLPADAPTDONE,
  input PIPERX00EQLPLFFSSEL,
  input [17:0] PIPERX00EQLPNEWTXCOEFFORPRESET,
  input PIPERX00PHYSTATUS,
  input [1:0] PIPERX00STARTBLOCK,
  input [2:0] PIPERX00STATUS,
  input [1:0] PIPERX00SYNCHEADER,
  input PIPERX00VALID,
  input [1:0] PIPERX01CHARISK,
  input [31:0] PIPERX01DATA,
  input PIPERX01DATAVALID,
  input PIPERX01ELECIDLE,
  input PIPERX01EQDONE,
  input PIPERX01EQLPADAPTDONE,
  input PIPERX01EQLPLFFSSEL,
  input [17:0] PIPERX01EQLPNEWTXCOEFFORPRESET,
  input PIPERX01PHYSTATUS,
  input [1:0] PIPERX01STARTBLOCK,
  input [2:0] PIPERX01STATUS,
  input [1:0] PIPERX01SYNCHEADER,
  input PIPERX01VALID,
  input [1:0] PIPERX02CHARISK,
  input [31:0] PIPERX02DATA,
  input PIPERX02DATAVALID,
  input PIPERX02ELECIDLE,
  input PIPERX02EQDONE,
  input PIPERX02EQLPADAPTDONE,
  input PIPERX02EQLPLFFSSEL,
  input [17:0] PIPERX02EQLPNEWTXCOEFFORPRESET,
  input PIPERX02PHYSTATUS,
  input [1:0] PIPERX02STARTBLOCK,
  input [2:0] PIPERX02STATUS,
  input [1:0] PIPERX02SYNCHEADER,
  input PIPERX02VALID,
  input [1:0] PIPERX03CHARISK,
  input [31:0] PIPERX03DATA,
  input PIPERX03DATAVALID,
  input PIPERX03ELECIDLE,
  input PIPERX03EQDONE,
  input PIPERX03EQLPADAPTDONE,
  input PIPERX03EQLPLFFSSEL,
  input [17:0] PIPERX03EQLPNEWTXCOEFFORPRESET,
  input PIPERX03PHYSTATUS,
  input [1:0] PIPERX03STARTBLOCK,
  input [2:0] PIPERX03STATUS,
  input [1:0] PIPERX03SYNCHEADER,
  input PIPERX03VALID,
  input [1:0] PIPERX04CHARISK,
  input [31:0] PIPERX04DATA,
  input PIPERX04DATAVALID,
  input PIPERX04ELECIDLE,
  input PIPERX04EQDONE,
  input PIPERX04EQLPADAPTDONE,
  input PIPERX04EQLPLFFSSEL,
  input [17:0] PIPERX04EQLPNEWTXCOEFFORPRESET,
  input PIPERX04PHYSTATUS,
  input [1:0] PIPERX04STARTBLOCK,
  input [2:0] PIPERX04STATUS,
  input [1:0] PIPERX04SYNCHEADER,
  input PIPERX04VALID,
  input [1:0] PIPERX05CHARISK,
  input [31:0] PIPERX05DATA,
  input PIPERX05DATAVALID,
  input PIPERX05ELECIDLE,
  input PIPERX05EQDONE,
  input PIPERX05EQLPADAPTDONE,
  input PIPERX05EQLPLFFSSEL,
  input [17:0] PIPERX05EQLPNEWTXCOEFFORPRESET,
  input PIPERX05PHYSTATUS,
  input [1:0] PIPERX05STARTBLOCK,
  input [2:0] PIPERX05STATUS,
  input [1:0] PIPERX05SYNCHEADER,
  input PIPERX05VALID,
  input [1:0] PIPERX06CHARISK,
  input [31:0] PIPERX06DATA,
  input PIPERX06DATAVALID,
  input PIPERX06ELECIDLE,
  input PIPERX06EQDONE,
  input PIPERX06EQLPADAPTDONE,
  input PIPERX06EQLPLFFSSEL,
  input [17:0] PIPERX06EQLPNEWTXCOEFFORPRESET,
  input PIPERX06PHYSTATUS,
  input [1:0] PIPERX06STARTBLOCK,
  input [2:0] PIPERX06STATUS,
  input [1:0] PIPERX06SYNCHEADER,
  input PIPERX06VALID,
  input [1:0] PIPERX07CHARISK,
  input [31:0] PIPERX07DATA,
  input PIPERX07DATAVALID,
  input PIPERX07ELECIDLE,
  input PIPERX07EQDONE,
  input PIPERX07EQLPADAPTDONE,
  input PIPERX07EQLPLFFSSEL,
  input [17:0] PIPERX07EQLPNEWTXCOEFFORPRESET,
  input PIPERX07PHYSTATUS,
  input [1:0] PIPERX07STARTBLOCK,
  input [2:0] PIPERX07STATUS,
  input [1:0] PIPERX07SYNCHEADER,
  input PIPERX07VALID,
  input [1:0] PIPERX08CHARISK,
  input [31:0] PIPERX08DATA,
  input PIPERX08DATAVALID,
  input PIPERX08ELECIDLE,
  input PIPERX08EQDONE,
  input PIPERX08EQLPADAPTDONE,
  input PIPERX08EQLPLFFSSEL,
  input [17:0] PIPERX08EQLPNEWTXCOEFFORPRESET,
  input PIPERX08PHYSTATUS,
  input [1:0] PIPERX08STARTBLOCK,
  input [2:0] PIPERX08STATUS,
  input [1:0] PIPERX08SYNCHEADER,
  input PIPERX08VALID,
  input [1:0] PIPERX09CHARISK,
  input [31:0] PIPERX09DATA,
  input PIPERX09DATAVALID,
  input PIPERX09ELECIDLE,
  input PIPERX09EQDONE,
  input PIPERX09EQLPADAPTDONE,
  input PIPERX09EQLPLFFSSEL,
  input [17:0] PIPERX09EQLPNEWTXCOEFFORPRESET,
  input PIPERX09PHYSTATUS,
  input [1:0] PIPERX09STARTBLOCK,
  input [2:0] PIPERX09STATUS,
  input [1:0] PIPERX09SYNCHEADER,
  input PIPERX09VALID,
  input [1:0] PIPERX10CHARISK,
  input [31:0] PIPERX10DATA,
  input PIPERX10DATAVALID,
  input PIPERX10ELECIDLE,
  input PIPERX10EQDONE,
  input PIPERX10EQLPADAPTDONE,
  input PIPERX10EQLPLFFSSEL,
  input [17:0] PIPERX10EQLPNEWTXCOEFFORPRESET,
  input PIPERX10PHYSTATUS,
  input [1:0] PIPERX10STARTBLOCK,
  input [2:0] PIPERX10STATUS,
  input [1:0] PIPERX10SYNCHEADER,
  input PIPERX10VALID,
  input [1:0] PIPERX11CHARISK,
  input [31:0] PIPERX11DATA,
  input PIPERX11DATAVALID,
  input PIPERX11ELECIDLE,
  input PIPERX11EQDONE,
  input PIPERX11EQLPADAPTDONE,
  input PIPERX11EQLPLFFSSEL,
  input [17:0] PIPERX11EQLPNEWTXCOEFFORPRESET,
  input PIPERX11PHYSTATUS,
  input [1:0] PIPERX11STARTBLOCK,
  input [2:0] PIPERX11STATUS,
  input [1:0] PIPERX11SYNCHEADER,
  input PIPERX11VALID,
  input [1:0] PIPERX12CHARISK,
  input [31:0] PIPERX12DATA,
  input PIPERX12DATAVALID,
  input PIPERX12ELECIDLE,
  input PIPERX12EQDONE,
  input PIPERX12EQLPADAPTDONE,
  input PIPERX12EQLPLFFSSEL,
  input [17:0] PIPERX12EQLPNEWTXCOEFFORPRESET,
  input PIPERX12PHYSTATUS,
  input [1:0] PIPERX12STARTBLOCK,
  input [2:0] PIPERX12STATUS,
  input [1:0] PIPERX12SYNCHEADER,
  input PIPERX12VALID,
  input [1:0] PIPERX13CHARISK,
  input [31:0] PIPERX13DATA,
  input PIPERX13DATAVALID,
  input PIPERX13ELECIDLE,
  input PIPERX13EQDONE,
  input PIPERX13EQLPADAPTDONE,
  input PIPERX13EQLPLFFSSEL,
  input [17:0] PIPERX13EQLPNEWTXCOEFFORPRESET,
  input PIPERX13PHYSTATUS,
  input [1:0] PIPERX13STARTBLOCK,
  input [2:0] PIPERX13STATUS,
  input [1:0] PIPERX13SYNCHEADER,
  input PIPERX13VALID,
  input [1:0] PIPERX14CHARISK,
  input [31:0] PIPERX14DATA,
  input PIPERX14DATAVALID,
  input PIPERX14ELECIDLE,
  input PIPERX14EQDONE,
  input PIPERX14EQLPADAPTDONE,
  input PIPERX14EQLPLFFSSEL,
  input [17:0] PIPERX14EQLPNEWTXCOEFFORPRESET,
  input PIPERX14PHYSTATUS,
  input [1:0] PIPERX14STARTBLOCK,
  input [2:0] PIPERX14STATUS,
  input [1:0] PIPERX14SYNCHEADER,
  input PIPERX14VALID,
  input [1:0] PIPERX15CHARISK,
  input [31:0] PIPERX15DATA,
  input PIPERX15DATAVALID,
  input PIPERX15ELECIDLE,
  input PIPERX15EQDONE,
  input PIPERX15EQLPADAPTDONE,
  input PIPERX15EQLPLFFSSEL,
  input [17:0] PIPERX15EQLPNEWTXCOEFFORPRESET,
  input PIPERX15PHYSTATUS,
  input [1:0] PIPERX15STARTBLOCK,
  input [2:0] PIPERX15STATUS,
  input [1:0] PIPERX15SYNCHEADER,
  input PIPERX15VALID,
  input [17:0] PIPETX00EQCOEFF,
  input PIPETX00EQDONE,
  input [17:0] PIPETX01EQCOEFF,
  input PIPETX01EQDONE,
  input [17:0] PIPETX02EQCOEFF,
  input PIPETX02EQDONE,
  input [17:0] PIPETX03EQCOEFF,
  input PIPETX03EQDONE,
  input [17:0] PIPETX04EQCOEFF,
  input PIPETX04EQDONE,
  input [17:0] PIPETX05EQCOEFF,
  input PIPETX05EQDONE,
  input [17:0] PIPETX06EQCOEFF,
  input PIPETX06EQDONE,
  input [17:0] PIPETX07EQCOEFF,
  input PIPETX07EQDONE,
  input [17:0] PIPETX08EQCOEFF,
  input PIPETX08EQDONE,
  input [17:0] PIPETX09EQCOEFF,
  input PIPETX09EQDONE,
  input [17:0] PIPETX10EQCOEFF,
  input PIPETX10EQDONE,
  input [17:0] PIPETX11EQCOEFF,
  input PIPETX11EQDONE,
  input [17:0] PIPETX12EQCOEFF,
  input PIPETX12EQDONE,
  input [17:0] PIPETX13EQCOEFF,
  input PIPETX13EQDONE,
  input [17:0] PIPETX14EQCOEFF,
  input PIPETX14EQDONE,
  input [17:0] PIPETX15EQCOEFF,
  input PIPETX15EQDONE,
  input PLEQRESETEIEOSCOUNT,
  input PLGEN2UPSTREAMPREFERDEEMPH,
  input PLGEN34REDOEQSPEED,
  input PLGEN34REDOEQUALIZATION,
  input RESETN,
  input [255:0] SAXISCCIXTXTDATA,
  input [45:0] SAXISCCIXTXTUSER,
  input SAXISCCIXTXTVALID,
  input [255:0] SAXISCCTDATA,
  input [7:0] SAXISCCTKEEP,
  input SAXISCCTLAST,
  input [32:0] SAXISCCTUSER,
  input SAXISCCTVALID,
  input [255:0] SAXISRQTDATA,
  input [7:0] SAXISRQTKEEP,
  input SAXISRQTLAST,
  input [61:0] SAXISRQTUSER,
  input SAXISRQTVALID,
  input USERCLK,
  input USERCLK2,
  input USERCLKEN,
  input [31:0] USERSPAREIN
);
endmodule


module PCIE_3_0 (
  CFGCURRENTSPEED,
  CFGDPASUBSTATECHANGE,
  CFGERRCOROUT,
  CFGERRFATALOUT,
  CFGERRNONFATALOUT,
  CFGEXTFUNCTIONNUMBER,
  CFGEXTREADRECEIVED,
  CFGEXTREGISTERNUMBER,
  CFGEXTWRITEBYTEENABLE,
  CFGEXTWRITEDATA,
  CFGEXTWRITERECEIVED,
  CFGFCCPLD,
  CFGFCCPLH,
  CFGFCNPD,
  CFGFCNPH,
  CFGFCPD,
  CFGFCPH,
  CFGFLRINPROCESS,
  CFGFUNCTIONPOWERSTATE,
  CFGFUNCTIONSTATUS,
  CFGHOTRESETOUT,
  CFGINPUTUPDATEDONE,
  CFGINTERRUPTAOUTPUT,
  CFGINTERRUPTBOUTPUT,
  CFGINTERRUPTCOUTPUT,
  CFGINTERRUPTDOUTPUT,
  CFGINTERRUPTMSIDATA,
  CFGINTERRUPTMSIENABLE,
  CFGINTERRUPTMSIFAIL,
  CFGINTERRUPTMSIMASKUPDATE,
  CFGINTERRUPTMSIMMENABLE,
  CFGINTERRUPTMSISENT,
  CFGINTERRUPTMSIVFENABLE,
  CFGINTERRUPTMSIXENABLE,
  CFGINTERRUPTMSIXFAIL,
  CFGINTERRUPTMSIXMASK,
  CFGINTERRUPTMSIXSENT,
  CFGINTERRUPTMSIXVFENABLE,
  CFGINTERRUPTMSIXVFMASK,
  CFGINTERRUPTSENT,
  CFGLINKPOWERSTATE,
  CFGLOCALERROR,
  CFGLTRENABLE,
  CFGLTSSMSTATE,
  CFGMAXPAYLOAD,
  CFGMAXREADREQ,
  CFGMCUPDATEDONE,
  CFGMGMTREADDATA,
  CFGMGMTREADWRITEDONE,
  CFGMSGRECEIVED,
  CFGMSGRECEIVEDDATA,
  CFGMSGRECEIVEDTYPE,
  CFGMSGTRANSMITDONE,
  CFGNEGOTIATEDWIDTH,
  CFGOBFFENABLE,
  CFGPERFUNCSTATUSDATA,
  CFGPERFUNCTIONUPDATEDONE,
  CFGPHYLINKDOWN,
  CFGPHYLINKSTATUS,
  CFGPLSTATUSCHANGE,
  CFGPOWERSTATECHANGEINTERRUPT,
  CFGRCBSTATUS,
  CFGTPHFUNCTIONNUM,
  CFGTPHREQUESTERENABLE,
  CFGTPHSTMODE,
  CFGTPHSTTADDRESS,
  CFGTPHSTTREADENABLE,
  CFGTPHSTTWRITEBYTEVALID,
  CFGTPHSTTWRITEDATA,
  CFGTPHSTTWRITEENABLE,
  CFGVFFLRINPROCESS,
  CFGVFPOWERSTATE,
  CFGVFSTATUS,
  CFGVFTPHREQUESTERENABLE,
  CFGVFTPHSTMODE,
  DBGDATAOUT,
  DRPDO,
  DRPRDY,
  MAXISCQTDATA,
  MAXISCQTKEEP,
  MAXISCQTLAST,
  MAXISCQTUSER,
  MAXISCQTVALID,
  MAXISRCTDATA,
  MAXISRCTKEEP,
  MAXISRCTLAST,
  MAXISRCTUSER,
  MAXISRCTVALID,
  MICOMPLETIONRAMREADADDRESSAL,
  MICOMPLETIONRAMREADADDRESSAU,
  MICOMPLETIONRAMREADADDRESSBL,
  MICOMPLETIONRAMREADADDRESSBU,
  MICOMPLETIONRAMREADENABLEL,
  MICOMPLETIONRAMREADENABLEU,
  MICOMPLETIONRAMWRITEADDRESSAL,
  MICOMPLETIONRAMWRITEADDRESSAU,
  MICOMPLETIONRAMWRITEADDRESSBL,
  MICOMPLETIONRAMWRITEADDRESSBU,
  MICOMPLETIONRAMWRITEDATAL,
  MICOMPLETIONRAMWRITEDATAU,
  MICOMPLETIONRAMWRITEENABLEL,
  MICOMPLETIONRAMWRITEENABLEU,
  MIREPLAYRAMADDRESS,
  MIREPLAYRAMREADENABLE,
  MIREPLAYRAMWRITEDATA,
  MIREPLAYRAMWRITEENABLE,
  MIREQUESTRAMREADADDRESSA,
  MIREQUESTRAMREADADDRESSB,
  MIREQUESTRAMREADENABLE,
  MIREQUESTRAMWRITEADDRESSA,
  MIREQUESTRAMWRITEADDRESSB,
  MIREQUESTRAMWRITEDATA,
  MIREQUESTRAMWRITEENABLE,
  PCIECQNPREQCOUNT,
  PCIERQSEQNUM,
  PCIERQSEQNUMVLD,
  PCIERQTAG,
  PCIERQTAGAV,
  PCIERQTAGVLD,
  PCIETFCNPDAV,
  PCIETFCNPHAV,
  PIPERX0EQCONTROL,
  PIPERX0EQLPLFFS,
  PIPERX0EQLPTXPRESET,
  PIPERX0EQPRESET,
  PIPERX0POLARITY,
  PIPERX1EQCONTROL,
  PIPERX1EQLPLFFS,
  PIPERX1EQLPTXPRESET,
  PIPERX1EQPRESET,
  PIPERX1POLARITY,
  PIPERX2EQCONTROL,
  PIPERX2EQLPLFFS,
  PIPERX2EQLPTXPRESET,
  PIPERX2EQPRESET,
  PIPERX2POLARITY,
  PIPERX3EQCONTROL,
  PIPERX3EQLPLFFS,
  PIPERX3EQLPTXPRESET,
  PIPERX3EQPRESET,
  PIPERX3POLARITY,
  PIPERX4EQCONTROL,
  PIPERX4EQLPLFFS,
  PIPERX4EQLPTXPRESET,
  PIPERX4EQPRESET,
  PIPERX4POLARITY,
  PIPERX5EQCONTROL,
  PIPERX5EQLPLFFS,
  PIPERX5EQLPTXPRESET,
  PIPERX5EQPRESET,
  PIPERX5POLARITY,
  PIPERX6EQCONTROL,
  PIPERX6EQLPLFFS,
  PIPERX6EQLPTXPRESET,
  PIPERX6EQPRESET,
  PIPERX6POLARITY,
  PIPERX7EQCONTROL,
  PIPERX7EQLPLFFS,
  PIPERX7EQLPTXPRESET,
  PIPERX7EQPRESET,
  PIPERX7POLARITY,
  PIPETX0CHARISK,
  PIPETX0COMPLIANCE,
  PIPETX0DATA,
  PIPETX0DATAVALID,
  PIPETX0ELECIDLE,
  PIPETX0EQCONTROL,
  PIPETX0EQDEEMPH,
  PIPETX0EQPRESET,
  PIPETX0POWERDOWN,
  PIPETX0STARTBLOCK,
  PIPETX0SYNCHEADER,
  PIPETX1CHARISK,
  PIPETX1COMPLIANCE,
  PIPETX1DATA,
  PIPETX1DATAVALID,
  PIPETX1ELECIDLE,
  PIPETX1EQCONTROL,
  PIPETX1EQDEEMPH,
  PIPETX1EQPRESET,
  PIPETX1POWERDOWN,
  PIPETX1STARTBLOCK,
  PIPETX1SYNCHEADER,
  PIPETX2CHARISK,
  PIPETX2COMPLIANCE,
  PIPETX2DATA,
  PIPETX2DATAVALID,
  PIPETX2ELECIDLE,
  PIPETX2EQCONTROL,
  PIPETX2EQDEEMPH,
  PIPETX2EQPRESET,
  PIPETX2POWERDOWN,
  PIPETX2STARTBLOCK,
  PIPETX2SYNCHEADER,
  PIPETX3CHARISK,
  PIPETX3COMPLIANCE,
  PIPETX3DATA,
  PIPETX3DATAVALID,
  PIPETX3ELECIDLE,
  PIPETX3EQCONTROL,
  PIPETX3EQDEEMPH,
  PIPETX3EQPRESET,
  PIPETX3POWERDOWN,
  PIPETX3STARTBLOCK,
  PIPETX3SYNCHEADER,
  PIPETX4CHARISK,
  PIPETX4COMPLIANCE,
  PIPETX4DATA,
  PIPETX4DATAVALID,
  PIPETX4ELECIDLE,
  PIPETX4EQCONTROL,
  PIPETX4EQDEEMPH,
  PIPETX4EQPRESET,
  PIPETX4POWERDOWN,
  PIPETX4STARTBLOCK,
  PIPETX4SYNCHEADER,
  PIPETX5CHARISK,
  PIPETX5COMPLIANCE,
  PIPETX5DATA,
  PIPETX5DATAVALID,
  PIPETX5ELECIDLE,
  PIPETX5EQCONTROL,
  PIPETX5EQDEEMPH,
  PIPETX5EQPRESET,
  PIPETX5POWERDOWN,
  PIPETX5STARTBLOCK,
  PIPETX5SYNCHEADER,
  PIPETX6CHARISK,
  PIPETX6COMPLIANCE,
  PIPETX6DATA,
  PIPETX6DATAVALID,
  PIPETX6ELECIDLE,
  PIPETX6EQCONTROL,
  PIPETX6EQDEEMPH,
  PIPETX6EQPRESET,
  PIPETX6POWERDOWN,
  PIPETX6STARTBLOCK,
  PIPETX6SYNCHEADER,
  PIPETX7CHARISK,
  PIPETX7COMPLIANCE,
  PIPETX7DATA,
  PIPETX7DATAVALID,
  PIPETX7ELECIDLE,
  PIPETX7EQCONTROL,
  PIPETX7EQDEEMPH,
  PIPETX7EQPRESET,
  PIPETX7POWERDOWN,
  PIPETX7STARTBLOCK,
  PIPETX7SYNCHEADER,
  PIPETXDEEMPH,
  PIPETXMARGIN,
  PIPETXRATE,
  PIPETXRCVRDET,
  PIPETXRESET,
  PIPETXSWING,
  PLEQINPROGRESS,
  PLEQPHASE,
  PLGEN3PCSRXSLIDE,
  SAXISCCTREADY,
  SAXISRQTREADY,

  CFGCONFIGSPACEENABLE,
  CFGDEVID,
  CFGDSBUSNUMBER,
  CFGDSDEVICENUMBER,
  CFGDSFUNCTIONNUMBER,
  CFGDSN,
  CFGDSPORTNUMBER,
  CFGERRCORIN,
  CFGERRUNCORIN,
  CFGEXTREADDATA,
  CFGEXTREADDATAVALID,
  CFGFCSEL,
  CFGFLRDONE,
  CFGHOTRESETIN,
  CFGINPUTUPDATEREQUEST,
  CFGINTERRUPTINT,
  CFGINTERRUPTMSIATTR,
  CFGINTERRUPTMSIFUNCTIONNUMBER,
  CFGINTERRUPTMSIINT,
  CFGINTERRUPTMSIPENDINGSTATUS,
  CFGINTERRUPTMSISELECT,
  CFGINTERRUPTMSITPHPRESENT,
  CFGINTERRUPTMSITPHSTTAG,
  CFGINTERRUPTMSITPHTYPE,
  CFGINTERRUPTMSIXADDRESS,
  CFGINTERRUPTMSIXDATA,
  CFGINTERRUPTMSIXINT,
  CFGINTERRUPTPENDING,
  CFGLINKTRAININGENABLE,
  CFGMCUPDATEREQUEST,
  CFGMGMTADDR,
  CFGMGMTBYTEENABLE,
  CFGMGMTREAD,
  CFGMGMTTYPE1CFGREGACCESS,
  CFGMGMTWRITE,
  CFGMGMTWRITEDATA,
  CFGMSGTRANSMIT,
  CFGMSGTRANSMITDATA,
  CFGMSGTRANSMITTYPE,
  CFGPERFUNCSTATUSCONTROL,
  CFGPERFUNCTIONNUMBER,
  CFGPERFUNCTIONOUTPUTREQUEST,
  CFGPOWERSTATECHANGEACK,
  CFGREQPMTRANSITIONL23READY,
  CFGREVID,
  CFGSUBSYSID,
  CFGSUBSYSVENDID,
  CFGTPHSTTREADDATA,
  CFGTPHSTTREADDATAVALID,
  CFGVENDID,
  CFGVFFLRDONE,
  CORECLK,
  CORECLKMICOMPLETIONRAML,
  CORECLKMICOMPLETIONRAMU,
  CORECLKMIREPLAYRAM,
  CORECLKMIREQUESTRAM,
  DRPADDR,
  DRPCLK,
  DRPDI,
  DRPEN,
  DRPWE,
  MAXISCQTREADY,
  MAXISRCTREADY,
  MGMTRESETN,
  MGMTSTICKYRESETN,
  MICOMPLETIONRAMREADDATA,
  MIREPLAYRAMREADDATA,
  MIREQUESTRAMREADDATA,
  PCIECQNPREQ,
  PIPECLK,
  PIPEEQFS,
  PIPEEQLF,
  PIPERESETN,
  PIPERX0CHARISK,
  PIPERX0DATA,
  PIPERX0DATAVALID,
  PIPERX0ELECIDLE,
  PIPERX0EQDONE,
  PIPERX0EQLPADAPTDONE,
  PIPERX0EQLPLFFSSEL,
  PIPERX0EQLPNEWTXCOEFFORPRESET,
  PIPERX0PHYSTATUS,
  PIPERX0STARTBLOCK,
  PIPERX0STATUS,
  PIPERX0SYNCHEADER,
  PIPERX0VALID,
  PIPERX1CHARISK,
  PIPERX1DATA,
  PIPERX1DATAVALID,
  PIPERX1ELECIDLE,
  PIPERX1EQDONE,
  PIPERX1EQLPADAPTDONE,
  PIPERX1EQLPLFFSSEL,
  PIPERX1EQLPNEWTXCOEFFORPRESET,
  PIPERX1PHYSTATUS,
  PIPERX1STARTBLOCK,
  PIPERX1STATUS,
  PIPERX1SYNCHEADER,
  PIPERX1VALID,
  PIPERX2CHARISK,
  PIPERX2DATA,
  PIPERX2DATAVALID,
  PIPERX2ELECIDLE,
  PIPERX2EQDONE,
  PIPERX2EQLPADAPTDONE,
  PIPERX2EQLPLFFSSEL,
  PIPERX2EQLPNEWTXCOEFFORPRESET,
  PIPERX2PHYSTATUS,
  PIPERX2STARTBLOCK,
  PIPERX2STATUS,
  PIPERX2SYNCHEADER,
  PIPERX2VALID,
  PIPERX3CHARISK,
  PIPERX3DATA,
  PIPERX3DATAVALID,
  PIPERX3ELECIDLE,
  PIPERX3EQDONE,
  PIPERX3EQLPADAPTDONE,
  PIPERX3EQLPLFFSSEL,
  PIPERX3EQLPNEWTXCOEFFORPRESET,
  PIPERX3PHYSTATUS,
  PIPERX3STARTBLOCK,
  PIPERX3STATUS,
  PIPERX3SYNCHEADER,
  PIPERX3VALID,
  PIPERX4CHARISK,
  PIPERX4DATA,
  PIPERX4DATAVALID,
  PIPERX4ELECIDLE,
  PIPERX4EQDONE,
  PIPERX4EQLPADAPTDONE,
  PIPERX4EQLPLFFSSEL,
  PIPERX4EQLPNEWTXCOEFFORPRESET,
  PIPERX4PHYSTATUS,
  PIPERX4STARTBLOCK,
  PIPERX4STATUS,
  PIPERX4SYNCHEADER,
  PIPERX4VALID,
  PIPERX5CHARISK,
  PIPERX5DATA,
  PIPERX5DATAVALID,
  PIPERX5ELECIDLE,
  PIPERX5EQDONE,
  PIPERX5EQLPADAPTDONE,
  PIPERX5EQLPLFFSSEL,
  PIPERX5EQLPNEWTXCOEFFORPRESET,
  PIPERX5PHYSTATUS,
  PIPERX5STARTBLOCK,
  PIPERX5STATUS,
  PIPERX5SYNCHEADER,
  PIPERX5VALID,
  PIPERX6CHARISK,
  PIPERX6DATA,
  PIPERX6DATAVALID,
  PIPERX6ELECIDLE,
  PIPERX6EQDONE,
  PIPERX6EQLPADAPTDONE,
  PIPERX6EQLPLFFSSEL,
  PIPERX6EQLPNEWTXCOEFFORPRESET,
  PIPERX6PHYSTATUS,
  PIPERX6STARTBLOCK,
  PIPERX6STATUS,
  PIPERX6SYNCHEADER,
  PIPERX6VALID,
  PIPERX7CHARISK,
  PIPERX7DATA,
  PIPERX7DATAVALID,
  PIPERX7ELECIDLE,
  PIPERX7EQDONE,
  PIPERX7EQLPADAPTDONE,
  PIPERX7EQLPLFFSSEL,
  PIPERX7EQLPNEWTXCOEFFORPRESET,
  PIPERX7PHYSTATUS,
  PIPERX7STARTBLOCK,
  PIPERX7STATUS,
  PIPERX7SYNCHEADER,
  PIPERX7VALID,
  PIPETX0EQCOEFF,
  PIPETX0EQDONE,
  PIPETX1EQCOEFF,
  PIPETX1EQDONE,
  PIPETX2EQCOEFF,
  PIPETX2EQDONE,
  PIPETX3EQCOEFF,
  PIPETX3EQDONE,
  PIPETX4EQCOEFF,
  PIPETX4EQDONE,
  PIPETX5EQCOEFF,
  PIPETX5EQDONE,
  PIPETX6EQCOEFF,
  PIPETX6EQDONE,
  PIPETX7EQCOEFF,
  PIPETX7EQDONE,
  PLDISABLESCRAMBLER,
  PLEQRESETEIEOSCOUNT,
  PLGEN3PCSDISABLE,
  PLGEN3PCSRXSYNCDONE,
  RECCLK,
  RESETN,
  SAXISCCTDATA,
  SAXISCCTKEEP,
  SAXISCCTLAST,
  SAXISCCTUSER,
  SAXISCCTVALID,
  SAXISRQTDATA,
  SAXISRQTKEEP,
  SAXISRQTLAST,
  SAXISRQTUSER,
  SAXISRQTVALID,
  USERCLK
);
  parameter LOC = "UNPLACED";
  parameter ARI_CAP_ENABLE = "FALSE";
  parameter AXISTEN_IF_CC_ALIGNMENT_MODE = "FALSE";
  parameter AXISTEN_IF_CC_PARITY_CHK = "TRUE";
  parameter AXISTEN_IF_CQ_ALIGNMENT_MODE = "FALSE";
  parameter AXISTEN_IF_ENABLE_CLIENT_TAG = "FALSE";
  parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE = 18'h00000;
  parameter AXISTEN_IF_ENABLE_RX_MSG_INTFC = "FALSE";
  parameter AXISTEN_IF_RC_ALIGNMENT_MODE = "FALSE";
  parameter AXISTEN_IF_RC_STRADDLE = "FALSE";
  parameter AXISTEN_IF_RQ_ALIGNMENT_MODE = "FALSE";
  parameter AXISTEN_IF_RQ_PARITY_CHK = "TRUE";
  parameter [1:0] AXISTEN_IF_WIDTH = 2'h2;
  parameter CRM_CORE_CLK_FREQ_500 = "TRUE";
  parameter [1:0] CRM_USER_CLK_FREQ = 2'h2;
  parameter [7:0] DNSTREAM_LINK_NUM = 8'h00;
  parameter [1:0] GEN3_PCS_AUTO_REALIGN = 2'h1;
  parameter GEN3_PCS_RX_ELECIDLE_INTERNAL = "TRUE";
  parameter [8:0] LL_ACK_TIMEOUT = 9'h000;
  parameter LL_ACK_TIMEOUT_EN = "FALSE";
  parameter integer LL_ACK_TIMEOUT_FUNC = 0;
  parameter [15:0] LL_CPL_FC_UPDATE_TIMER = 16'h0000;
  parameter LL_CPL_FC_UPDATE_TIMER_OVERRIDE = "FALSE";
  parameter [15:0] LL_FC_UPDATE_TIMER = 16'h0000;
  parameter LL_FC_UPDATE_TIMER_OVERRIDE = "FALSE";
  parameter [15:0] LL_NP_FC_UPDATE_TIMER = 16'h0000;
  parameter LL_NP_FC_UPDATE_TIMER_OVERRIDE = "FALSE";
  parameter [15:0] LL_P_FC_UPDATE_TIMER = 16'h0000;
  parameter LL_P_FC_UPDATE_TIMER_OVERRIDE = "FALSE";
  parameter [8:0] LL_REPLAY_TIMEOUT = 9'h000;
  parameter LL_REPLAY_TIMEOUT_EN = "FALSE";
  parameter integer LL_REPLAY_TIMEOUT_FUNC = 0;
  parameter [9:0] LTR_TX_MESSAGE_MINIMUM_INTERVAL = 10'h0FA;
  parameter LTR_TX_MESSAGE_ON_FUNC_POWER_STATE_CHANGE = "FALSE";
  parameter LTR_TX_MESSAGE_ON_LTR_ENABLE = "FALSE";
  parameter PF0_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE";
  parameter PF0_AER_CAP_ECRC_GEN_CAPABLE = "FALSE";
  parameter [11:0] PF0_AER_CAP_NEXTPTR = 12'h000;
  parameter [11:0] PF0_ARI_CAP_NEXTPTR = 12'h000;
  parameter [7:0] PF0_ARI_CAP_NEXT_FUNC = 8'h00;
  parameter [3:0] PF0_ARI_CAP_VER = 4'h1;
  parameter [4:0] PF0_BAR0_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_BAR0_CONTROL = 3'h4;
  parameter [4:0] PF0_BAR1_APERTURE_SIZE = 5'h00;
  parameter [2:0] PF0_BAR1_CONTROL = 3'h0;
  parameter [4:0] PF0_BAR2_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_BAR2_CONTROL = 3'h4;
  parameter [4:0] PF0_BAR3_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_BAR3_CONTROL = 3'h0;
  parameter [4:0] PF0_BAR4_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_BAR4_CONTROL = 3'h4;
  parameter [4:0] PF0_BAR5_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_BAR5_CONTROL = 3'h0;
  parameter [7:0] PF0_BIST_REGISTER = 8'h00;
  parameter [7:0] PF0_CAPABILITY_POINTER = 8'h50;
  parameter [23:0] PF0_CLASS_CODE = 24'h000000;
  parameter [15:0] PF0_DEVICE_ID = 16'h0000;
  parameter PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT = "TRUE";
  parameter PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT = "TRUE";
  parameter PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT = "TRUE";
  parameter PF0_DEV_CAP2_CPL_TIMEOUT_DISABLE = "TRUE";
  parameter PF0_DEV_CAP2_LTR_SUPPORT = "TRUE";
  parameter [1:0] PF0_DEV_CAP2_OBFF_SUPPORT = 2'h0;
  parameter PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT = "FALSE";
  parameter integer PF0_DEV_CAP_ENDPOINT_L0S_LATENCY = 0;
  parameter integer PF0_DEV_CAP_ENDPOINT_L1_LATENCY = 0;
  parameter PF0_DEV_CAP_EXT_TAG_SUPPORTED = "TRUE";
  parameter PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "TRUE";
  parameter [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3;
  parameter [11:0] PF0_DPA_CAP_NEXTPTR = 12'h000;
  parameter [4:0] PF0_DPA_CAP_SUB_STATE_CONTROL = 5'h00;
  parameter PF0_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE";
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00;
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00;
  parameter [3:0] PF0_DPA_CAP_VER = 4'h1;
  parameter [11:0] PF0_DSN_CAP_NEXTPTR = 12'h10C;
  parameter [4:0] PF0_EXPANSION_ROM_APERTURE_SIZE = 5'h03;
  parameter PF0_EXPANSION_ROM_ENABLE = "FALSE";
  parameter [7:0] PF0_INTERRUPT_LINE = 8'h00;
  parameter [2:0] PF0_INTERRUPT_PIN = 3'h1;
  parameter integer PF0_LINK_CAP_ASPM_SUPPORT = 0;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN3 = 7;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7;
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN3 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN3 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7;
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN3 = 7;
  parameter PF0_LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE";
  parameter [9:0] PF0_LTR_CAP_MAX_NOSNOOP_LAT = 10'h000;
  parameter [9:0] PF0_LTR_CAP_MAX_SNOOP_LAT = 10'h000;
  parameter [11:0] PF0_LTR_CAP_NEXTPTR = 12'h000;
  parameter [3:0] PF0_LTR_CAP_VER = 4'h1;
  parameter [7:0] PF0_MSIX_CAP_NEXTPTR = 8'h00;
  parameter integer PF0_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] PF0_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer PF0_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] PF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] PF0_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer PF0_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] PF0_MSI_CAP_NEXTPTR = 8'h00;
  parameter [11:0] PF0_PB_CAP_NEXTPTR = 12'h000;
  parameter PF0_PB_CAP_SYSTEM_ALLOCATED = "FALSE";
  parameter [3:0] PF0_PB_CAP_VER = 4'h1;
  parameter [7:0] PF0_PM_CAP_ID = 8'h01;
  parameter [7:0] PF0_PM_CAP_NEXTPTR = 8'h00;
  parameter PF0_PM_CAP_PMESUPPORT_D0 = "TRUE";
  parameter PF0_PM_CAP_PMESUPPORT_D1 = "TRUE";
  parameter PF0_PM_CAP_PMESUPPORT_D3HOT = "TRUE";
  parameter PF0_PM_CAP_SUPP_D1_STATE = "TRUE";
  parameter [2:0] PF0_PM_CAP_VER_ID = 3'h3;
  parameter PF0_PM_CSR_NOSOFTRESET = "TRUE";
  parameter PF0_RBAR_CAP_ENABLE = "FALSE";
  parameter [2:0] PF0_RBAR_CAP_INDEX0 = 3'h0;
  parameter [2:0] PF0_RBAR_CAP_INDEX1 = 3'h0;
  parameter [2:0] PF0_RBAR_CAP_INDEX2 = 3'h0;
  parameter [11:0] PF0_RBAR_CAP_NEXTPTR = 12'h000;
  parameter [19:0] PF0_RBAR_CAP_SIZE0 = 20'h00000;
  parameter [19:0] PF0_RBAR_CAP_SIZE1 = 20'h00000;
  parameter [19:0] PF0_RBAR_CAP_SIZE2 = 20'h00000;
  parameter [3:0] PF0_RBAR_CAP_VER = 4'h1;
  parameter [2:0] PF0_RBAR_NUM = 3'h1;
  parameter [7:0] PF0_REVISION_ID = 8'h00;
  parameter [4:0] PF0_SRIOV_BAR0_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_SRIOV_BAR0_CONTROL = 3'h4;
  parameter [4:0] PF0_SRIOV_BAR1_APERTURE_SIZE = 5'h00;
  parameter [2:0] PF0_SRIOV_BAR1_CONTROL = 3'h0;
  parameter [4:0] PF0_SRIOV_BAR2_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_SRIOV_BAR2_CONTROL = 3'h4;
  parameter [4:0] PF0_SRIOV_BAR3_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_SRIOV_BAR3_CONTROL = 3'h0;
  parameter [4:0] PF0_SRIOV_BAR4_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_SRIOV_BAR4_CONTROL = 3'h4;
  parameter [4:0] PF0_SRIOV_BAR5_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF0_SRIOV_BAR5_CONTROL = 3'h0;
  parameter [15:0] PF0_SRIOV_CAP_INITIAL_VF = 16'h0000;
  parameter [11:0] PF0_SRIOV_CAP_NEXTPTR = 12'h000;
  parameter [15:0] PF0_SRIOV_CAP_TOTAL_VF = 16'h0000;
  parameter [3:0] PF0_SRIOV_CAP_VER = 4'h1;
  parameter [15:0] PF0_SRIOV_FIRST_VF_OFFSET = 16'h0000;
  parameter [15:0] PF0_SRIOV_FUNC_DEP_LINK = 16'h0000;
  parameter [31:0] PF0_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000;
  parameter [15:0] PF0_SRIOV_VF_DEVICE_ID = 16'h0000;
  parameter [15:0] PF0_SUBSYSTEM_ID = 16'h0000;
  parameter PF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter PF0_TPHR_CAP_ENABLE = "FALSE";
  parameter PF0_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] PF0_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] PF0_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] PF0_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] PF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] PF0_TPHR_CAP_VER = 4'h1;
  parameter [11:0] PF0_VC_CAP_NEXTPTR = 12'h000;
  parameter [3:0] PF0_VC_CAP_VER = 4'h1;
  parameter PF1_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE";
  parameter PF1_AER_CAP_ECRC_GEN_CAPABLE = "FALSE";
  parameter [11:0] PF1_AER_CAP_NEXTPTR = 12'h000;
  parameter [11:0] PF1_ARI_CAP_NEXTPTR = 12'h000;
  parameter [7:0] PF1_ARI_CAP_NEXT_FUNC = 8'h00;
  parameter [4:0] PF1_BAR0_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_BAR0_CONTROL = 3'h4;
  parameter [4:0] PF1_BAR1_APERTURE_SIZE = 5'h00;
  parameter [2:0] PF1_BAR1_CONTROL = 3'h0;
  parameter [4:0] PF1_BAR2_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_BAR2_CONTROL = 3'h4;
  parameter [4:0] PF1_BAR3_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_BAR3_CONTROL = 3'h0;
  parameter [4:0] PF1_BAR4_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_BAR4_CONTROL = 3'h4;
  parameter [4:0] PF1_BAR5_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_BAR5_CONTROL = 3'h0;
  parameter [7:0] PF1_BIST_REGISTER = 8'h00;
  parameter [7:0] PF1_CAPABILITY_POINTER = 8'h50;
  parameter [23:0] PF1_CLASS_CODE = 24'h000000;
  parameter [15:0] PF1_DEVICE_ID = 16'h0000;
  parameter [2:0] PF1_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3;
  parameter [11:0] PF1_DPA_CAP_NEXTPTR = 12'h000;
  parameter [4:0] PF1_DPA_CAP_SUB_STATE_CONTROL = 5'h00;
  parameter PF1_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE";
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00;
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00;
  parameter [3:0] PF1_DPA_CAP_VER = 4'h1;
  parameter [11:0] PF1_DSN_CAP_NEXTPTR = 12'h10C;
  parameter [4:0] PF1_EXPANSION_ROM_APERTURE_SIZE = 5'h03;
  parameter PF1_EXPANSION_ROM_ENABLE = "FALSE";
  parameter [7:0] PF1_INTERRUPT_LINE = 8'h00;
  parameter [2:0] PF1_INTERRUPT_PIN = 3'h1;
  parameter [7:0] PF1_MSIX_CAP_NEXTPTR = 8'h00;
  parameter integer PF1_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] PF1_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer PF1_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] PF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] PF1_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer PF1_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] PF1_MSI_CAP_NEXTPTR = 8'h00;
  parameter [11:0] PF1_PB_CAP_NEXTPTR = 12'h000;
  parameter PF1_PB_CAP_SYSTEM_ALLOCATED = "FALSE";
  parameter [3:0] PF1_PB_CAP_VER = 4'h1;
  parameter [7:0] PF1_PM_CAP_ID = 8'h01;
  parameter [7:0] PF1_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] PF1_PM_CAP_VER_ID = 3'h3;
  parameter PF1_RBAR_CAP_ENABLE = "FALSE";
  parameter [2:0] PF1_RBAR_CAP_INDEX0 = 3'h0;
  parameter [2:0] PF1_RBAR_CAP_INDEX1 = 3'h0;
  parameter [2:0] PF1_RBAR_CAP_INDEX2 = 3'h0;
  parameter [11:0] PF1_RBAR_CAP_NEXTPTR = 12'h000;
  parameter [19:0] PF1_RBAR_CAP_SIZE0 = 20'h00000;
  parameter [19:0] PF1_RBAR_CAP_SIZE1 = 20'h00000;
  parameter [19:0] PF1_RBAR_CAP_SIZE2 = 20'h00000;
  parameter [3:0] PF1_RBAR_CAP_VER = 4'h1;
  parameter [2:0] PF1_RBAR_NUM = 3'h1;
  parameter [7:0] PF1_REVISION_ID = 8'h00;
  parameter [4:0] PF1_SRIOV_BAR0_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_SRIOV_BAR0_CONTROL = 3'h4;
  parameter [4:0] PF1_SRIOV_BAR1_APERTURE_SIZE = 5'h00;
  parameter [2:0] PF1_SRIOV_BAR1_CONTROL = 3'h0;
  parameter [4:0] PF1_SRIOV_BAR2_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_SRIOV_BAR2_CONTROL = 3'h4;
  parameter [4:0] PF1_SRIOV_BAR3_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_SRIOV_BAR3_CONTROL = 3'h0;
  parameter [4:0] PF1_SRIOV_BAR4_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_SRIOV_BAR4_CONTROL = 3'h4;
  parameter [4:0] PF1_SRIOV_BAR5_APERTURE_SIZE = 5'h03;
  parameter [2:0] PF1_SRIOV_BAR5_CONTROL = 3'h0;
  parameter [15:0] PF1_SRIOV_CAP_INITIAL_VF = 16'h0000;
  parameter [11:0] PF1_SRIOV_CAP_NEXTPTR = 12'h000;
  parameter [15:0] PF1_SRIOV_CAP_TOTAL_VF = 16'h0000;
  parameter [3:0] PF1_SRIOV_CAP_VER = 4'h1;
  parameter [15:0] PF1_SRIOV_FIRST_VF_OFFSET = 16'h0000;
  parameter [15:0] PF1_SRIOV_FUNC_DEP_LINK = 16'h0000;
  parameter [31:0] PF1_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000;
  parameter [15:0] PF1_SRIOV_VF_DEVICE_ID = 16'h0000;
  parameter [15:0] PF1_SUBSYSTEM_ID = 16'h0000;
  parameter PF1_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter PF1_TPHR_CAP_ENABLE = "FALSE";
  parameter PF1_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] PF1_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] PF1_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] PF1_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] PF1_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] PF1_TPHR_CAP_VER = 4'h1;
  parameter PL_DISABLE_EI_INFER_IN_L0 = "FALSE";
  parameter PL_DISABLE_GEN3_DC_BALANCE = "FALSE";
  parameter PL_DISABLE_SCRAMBLING = "FALSE";
  parameter PL_DISABLE_UPCONFIG_CAPABLE = "FALSE";
  parameter PL_EQ_ADAPT_DISABLE_COEFF_CHECK = "FALSE";
  parameter PL_EQ_ADAPT_DISABLE_PRESET_CHECK = "FALSE";
  parameter [4:0] PL_EQ_ADAPT_ITER_COUNT = 5'h02;
  parameter [1:0] PL_EQ_ADAPT_REJECT_RETRY_COUNT = 2'h1;
  parameter PL_EQ_BYPASS_PHASE23 = "FALSE";
  parameter PL_EQ_SHORT_ADAPT_PHASE = "FALSE";
  parameter [15:0] PL_LANE0_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE1_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE2_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE3_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE4_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE5_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE6_EQ_CONTROL = 16'h3F00;
  parameter [15:0] PL_LANE7_EQ_CONTROL = 16'h3F00;
  parameter [2:0] PL_LINK_CAP_MAX_LINK_SPEED = 3'h4;
  parameter [3:0] PL_LINK_CAP_MAX_LINK_WIDTH = 4'h8;
  parameter integer PL_N_FTS_COMCLK_GEN1 = 255;
  parameter integer PL_N_FTS_COMCLK_GEN2 = 255;
  parameter integer PL_N_FTS_COMCLK_GEN3 = 255;
  parameter integer PL_N_FTS_GEN1 = 255;
  parameter integer PL_N_FTS_GEN2 = 255;
  parameter integer PL_N_FTS_GEN3 = 255;
  parameter PL_SIM_FAST_LINK_TRAINING = "FALSE";
  parameter PL_UPSTREAM_FACING = "TRUE";
  parameter [15:0] PM_ASPML0S_TIMEOUT = 16'h05DC;
  parameter [19:0] PM_ASPML1_ENTRY_DELAY = 20'h00000;
  parameter PM_ENABLE_SLOT_POWER_CAPTURE = "TRUE";
  parameter [31:0] PM_L1_REENTRY_DELAY = 32'h00000000;
  parameter [19:0] PM_PME_SERVICE_TIMEOUT_DELAY = 20'h186A0;
  parameter [15:0] PM_PME_TURNOFF_ACK_DELAY = 16'h0064;
  parameter SIM_VERSION = "1.0";
  parameter integer SPARE_BIT0 = 0;
  parameter integer SPARE_BIT1 = 0;
  parameter integer SPARE_BIT2 = 0;
  parameter integer SPARE_BIT3 = 0;
  parameter integer SPARE_BIT4 = 0;
  parameter integer SPARE_BIT5 = 0;
  parameter integer SPARE_BIT6 = 0;
  parameter integer SPARE_BIT7 = 0;
  parameter integer SPARE_BIT8 = 0;
  parameter [7:0] SPARE_BYTE0 = 8'h00;
  parameter [7:0] SPARE_BYTE1 = 8'h00;
  parameter [7:0] SPARE_BYTE2 = 8'h00;
  parameter [7:0] SPARE_BYTE3 = 8'h00;
  parameter [31:0] SPARE_WORD0 = 32'h00000000;
  parameter [31:0] SPARE_WORD1 = 32'h00000000;
  parameter [31:0] SPARE_WORD2 = 32'h00000000;
  parameter [31:0] SPARE_WORD3 = 32'h00000000;
  parameter SRIOV_CAP_ENABLE = "FALSE";
  parameter [23:0] TL_COMPL_TIMEOUT_REG0 = 24'hBEBC20;
  parameter [27:0] TL_COMPL_TIMEOUT_REG1 = 28'h0000000;
  parameter [11:0] TL_CREDITS_CD = 12'h3E0;
  parameter [7:0] TL_CREDITS_CH = 8'h20;
  parameter [11:0] TL_CREDITS_NPD = 12'h028;
  parameter [7:0] TL_CREDITS_NPH = 8'h20;
  parameter [11:0] TL_CREDITS_PD = 12'h198;
  parameter [7:0] TL_CREDITS_PH = 8'h20;
  parameter TL_ENABLE_MESSAGE_RID_CHECK_ENABLE = "TRUE";
  parameter TL_EXTENDED_CFG_EXTEND_INTERFACE_ENABLE = "FALSE";
  parameter TL_LEGACY_CFG_EXTEND_INTERFACE_ENABLE = "FALSE";
  parameter TL_LEGACY_MODE_ENABLE = "FALSE";
  parameter TL_PF_ENABLE_REG = "FALSE";
  parameter TL_TAG_MGMT_ENABLE = "TRUE";
  parameter [11:0] VF0_ARI_CAP_NEXTPTR = 12'h000;
  parameter [7:0] VF0_CAPABILITY_POINTER = 8'h50;
  parameter integer VF0_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF0_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF0_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF0_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF0_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF0_PM_CAP_ID = 8'h01;
  parameter [7:0] VF0_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF0_PM_CAP_VER_ID = 3'h3;
  parameter VF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF0_TPHR_CAP_ENABLE = "FALSE";
  parameter VF0_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF0_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF0_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF0_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF0_TPHR_CAP_VER = 4'h1;
  parameter [11:0] VF1_ARI_CAP_NEXTPTR = 12'h000;
  parameter integer VF1_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF1_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF1_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF1_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF1_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF1_PM_CAP_ID = 8'h01;
  parameter [7:0] VF1_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF1_PM_CAP_VER_ID = 3'h3;
  parameter VF1_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF1_TPHR_CAP_ENABLE = "FALSE";
  parameter VF1_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF1_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF1_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF1_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF1_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF1_TPHR_CAP_VER = 4'h1;
  parameter [11:0] VF2_ARI_CAP_NEXTPTR = 12'h000;
  parameter integer VF2_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF2_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF2_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF2_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF2_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF2_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF2_PM_CAP_ID = 8'h01;
  parameter [7:0] VF2_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF2_PM_CAP_VER_ID = 3'h3;
  parameter VF2_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF2_TPHR_CAP_ENABLE = "FALSE";
  parameter VF2_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF2_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF2_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF2_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF2_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF2_TPHR_CAP_VER = 4'h1;
  parameter [11:0] VF3_ARI_CAP_NEXTPTR = 12'h000;
  parameter integer VF3_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF3_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF3_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF3_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF3_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF3_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF3_PM_CAP_ID = 8'h01;
  parameter [7:0] VF3_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF3_PM_CAP_VER_ID = 3'h3;
  parameter VF3_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF3_TPHR_CAP_ENABLE = "FALSE";
  parameter VF3_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF3_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF3_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF3_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF3_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF3_TPHR_CAP_VER = 4'h1;
  parameter [11:0] VF4_ARI_CAP_NEXTPTR = 12'h000;
  parameter integer VF4_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF4_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF4_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF4_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF4_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF4_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF4_PM_CAP_ID = 8'h01;
  parameter [7:0] VF4_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF4_PM_CAP_VER_ID = 3'h3;
  parameter VF4_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF4_TPHR_CAP_ENABLE = "FALSE";
  parameter VF4_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF4_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF4_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF4_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF4_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF4_TPHR_CAP_VER = 4'h1;
  parameter [11:0] VF5_ARI_CAP_NEXTPTR = 12'h000;
  parameter integer VF5_MSIX_CAP_PBA_BIR = 0;
  parameter [28:0] VF5_MSIX_CAP_PBA_OFFSET = 29'h00000050;
  parameter integer VF5_MSIX_CAP_TABLE_BIR = 0;
  parameter [28:0] VF5_MSIX_CAP_TABLE_OFFSET = 29'h00000040;
  parameter [10:0] VF5_MSIX_CAP_TABLE_SIZE = 11'h000;
  parameter integer VF5_MSI_CAP_MULTIMSGCAP = 0;
  parameter [7:0] VF5_PM_CAP_ID = 8'h01;
  parameter [7:0] VF5_PM_CAP_NEXTPTR = 8'h00;
  parameter [2:0] VF5_PM_CAP_VER_ID = 3'h3;
  parameter VF5_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE";
  parameter VF5_TPHR_CAP_ENABLE = "FALSE";
  parameter VF5_TPHR_CAP_INT_VEC_MODE = "TRUE";
  parameter [11:0] VF5_TPHR_CAP_NEXTPTR = 12'h000;
  parameter [2:0] VF5_TPHR_CAP_ST_MODE_SEL = 3'h0;
  parameter [1:0] VF5_TPHR_CAP_ST_TABLE_LOC = 2'h0;
  parameter [10:0] VF5_TPHR_CAP_ST_TABLE_SIZE = 11'h000;
  parameter [3:0] VF5_TPHR_CAP_VER = 4'h1;
  output CFGERRCOROUT;
  output CFGERRFATALOUT;
  output CFGERRNONFATALOUT;
  output CFGEXTREADRECEIVED;
  output CFGEXTWRITERECEIVED;
  output CFGHOTRESETOUT;
  output CFGINPUTUPDATEDONE;
  output CFGINTERRUPTAOUTPUT;
  output CFGINTERRUPTBOUTPUT;
  output CFGINTERRUPTCOUTPUT;
  output CFGINTERRUPTDOUTPUT;
  output CFGINTERRUPTMSIFAIL;
  output CFGINTERRUPTMSIMASKUPDATE;
  output CFGINTERRUPTMSISENT;
  output CFGINTERRUPTMSIXFAIL;
  output CFGINTERRUPTMSIXSENT;
  output CFGINTERRUPTSENT;
  output CFGLOCALERROR;
  output CFGLTRENABLE;
  output CFGMCUPDATEDONE;
  output CFGMGMTREADWRITEDONE;
  output CFGMSGRECEIVED;
  output CFGMSGTRANSMITDONE;
  output CFGPERFUNCTIONUPDATEDONE;
  output CFGPHYLINKDOWN;
  output CFGPLSTATUSCHANGE;
  output CFGPOWERSTATECHANGEINTERRUPT;
  output CFGTPHSTTREADENABLE;
  output CFGTPHSTTWRITEENABLE;
  output DRPRDY;
  output MAXISCQTLAST;
  output MAXISCQTVALID;
  output MAXISRCTLAST;
  output MAXISRCTVALID;
  output PCIERQSEQNUMVLD;
  output PCIERQTAGVLD;
  output PIPERX0POLARITY;
  output PIPERX1POLARITY;
  output PIPERX2POLARITY;
  output PIPERX3POLARITY;
  output PIPERX4POLARITY;
  output PIPERX5POLARITY;
  output PIPERX6POLARITY;
  output PIPERX7POLARITY;
  output PIPETX0COMPLIANCE;
  output PIPETX0DATAVALID;
  output PIPETX0ELECIDLE;
  output PIPETX0STARTBLOCK;
  output PIPETX1COMPLIANCE;
  output PIPETX1DATAVALID;
  output PIPETX1ELECIDLE;
  output PIPETX1STARTBLOCK;
  output PIPETX2COMPLIANCE;
  output PIPETX2DATAVALID;
  output PIPETX2ELECIDLE;
  output PIPETX2STARTBLOCK;
  output PIPETX3COMPLIANCE;
  output PIPETX3DATAVALID;
  output PIPETX3ELECIDLE;
  output PIPETX3STARTBLOCK;
  output PIPETX4COMPLIANCE;
  output PIPETX4DATAVALID;
  output PIPETX4ELECIDLE;
  output PIPETX4STARTBLOCK;
  output PIPETX5COMPLIANCE;
  output PIPETX5DATAVALID;
  output PIPETX5ELECIDLE;
  output PIPETX5STARTBLOCK;
  output PIPETX6COMPLIANCE;
  output PIPETX6DATAVALID;
  output PIPETX6ELECIDLE;
  output PIPETX6STARTBLOCK;
  output PIPETX7COMPLIANCE;
  output PIPETX7DATAVALID;
  output PIPETX7ELECIDLE;
  output PIPETX7STARTBLOCK;
  output PIPETXDEEMPH;
  output PIPETXRCVRDET;
  output PIPETXRESET;
  output PIPETXSWING;
  output PLEQINPROGRESS;
  output [11:0] CFGFCCPLD;
  output [11:0] CFGFCNPD;
  output [11:0] CFGFCPD;
  output [11:0] CFGVFSTATUS;
  output [143:0] MIREPLAYRAMWRITEDATA;
  output [143:0] MIREQUESTRAMWRITEDATA;
  output [15:0] CFGPERFUNCSTATUSDATA;
  output [15:0] DBGDATAOUT;
  output [15:0] DRPDO;
  output [17:0] CFGVFPOWERSTATE;
  output [17:0] CFGVFTPHSTMODE;
  output [1:0] CFGDPASUBSTATECHANGE;
  output [1:0] CFGFLRINPROCESS;
  output [1:0] CFGINTERRUPTMSIENABLE;
  output [1:0] CFGINTERRUPTMSIXENABLE;
  output [1:0] CFGINTERRUPTMSIXMASK;
  output [1:0] CFGLINKPOWERSTATE;
  output [1:0] CFGOBFFENABLE;
  output [1:0] CFGPHYLINKSTATUS;
  output [1:0] CFGRCBSTATUS;
  output [1:0] CFGTPHREQUESTERENABLE;
  output [1:0] MIREPLAYRAMREADENABLE;
  output [1:0] MIREPLAYRAMWRITEENABLE;
  output [1:0] PCIERQTAGAV;
  output [1:0] PCIETFCNPDAV;
  output [1:0] PCIETFCNPHAV;
  output [1:0] PIPERX0EQCONTROL;
  output [1:0] PIPERX1EQCONTROL;
  output [1:0] PIPERX2EQCONTROL;
  output [1:0] PIPERX3EQCONTROL;
  output [1:0] PIPERX4EQCONTROL;
  output [1:0] PIPERX5EQCONTROL;
  output [1:0] PIPERX6EQCONTROL;
  output [1:0] PIPERX7EQCONTROL;
  output [1:0] PIPETX0CHARISK;
  output [1:0] PIPETX0EQCONTROL;
  output [1:0] PIPETX0POWERDOWN;
  output [1:0] PIPETX0SYNCHEADER;
  output [1:0] PIPETX1CHARISK;
  output [1:0] PIPETX1EQCONTROL;
  output [1:0] PIPETX1POWERDOWN;
  output [1:0] PIPETX1SYNCHEADER;
  output [1:0] PIPETX2CHARISK;
  output [1:0] PIPETX2EQCONTROL;
  output [1:0] PIPETX2POWERDOWN;
  output [1:0] PIPETX2SYNCHEADER;
  output [1:0] PIPETX3CHARISK;
  output [1:0] PIPETX3EQCONTROL;
  output [1:0] PIPETX3POWERDOWN;
  output [1:0] PIPETX3SYNCHEADER;
  output [1:0] PIPETX4CHARISK;
  output [1:0] PIPETX4EQCONTROL;
  output [1:0] PIPETX4POWERDOWN;
  output [1:0] PIPETX4SYNCHEADER;
  output [1:0] PIPETX5CHARISK;
  output [1:0] PIPETX5EQCONTROL;
  output [1:0] PIPETX5POWERDOWN;
  output [1:0] PIPETX5SYNCHEADER;
  output [1:0] PIPETX6CHARISK;
  output [1:0] PIPETX6EQCONTROL;
  output [1:0] PIPETX6POWERDOWN;
  output [1:0] PIPETX6SYNCHEADER;
  output [1:0] PIPETX7CHARISK;
  output [1:0] PIPETX7EQCONTROL;
  output [1:0] PIPETX7POWERDOWN;
  output [1:0] PIPETX7SYNCHEADER;
  output [1:0] PIPETXRATE;
  output [1:0] PLEQPHASE;
  output [255:0] MAXISCQTDATA;
  output [255:0] MAXISRCTDATA;
  output [2:0] CFGCURRENTSPEED;
  output [2:0] CFGMAXPAYLOAD;
  output [2:0] CFGMAXREADREQ;
  output [2:0] CFGTPHFUNCTIONNUM;
  output [2:0] PIPERX0EQPRESET;
  output [2:0] PIPERX1EQPRESET;
  output [2:0] PIPERX2EQPRESET;
  output [2:0] PIPERX3EQPRESET;
  output [2:0] PIPERX4EQPRESET;
  output [2:0] PIPERX5EQPRESET;
  output [2:0] PIPERX6EQPRESET;
  output [2:0] PIPERX7EQPRESET;
  output [2:0] PIPETXMARGIN;
  output [31:0] CFGEXTWRITEDATA;
  output [31:0] CFGINTERRUPTMSIDATA;
  output [31:0] CFGMGMTREADDATA;
  output [31:0] CFGTPHSTTWRITEDATA;
  output [31:0] PIPETX0DATA;
  output [31:0] PIPETX1DATA;
  output [31:0] PIPETX2DATA;
  output [31:0] PIPETX3DATA;
  output [31:0] PIPETX4DATA;
  output [31:0] PIPETX5DATA;
  output [31:0] PIPETX6DATA;
  output [31:0] PIPETX7DATA;
  output [3:0] CFGEXTWRITEBYTEENABLE;
  output [3:0] CFGNEGOTIATEDWIDTH;
  output [3:0] CFGTPHSTTWRITEBYTEVALID;
  output [3:0] MICOMPLETIONRAMREADENABLEL;
  output [3:0] MICOMPLETIONRAMREADENABLEU;
  output [3:0] MICOMPLETIONRAMWRITEENABLEL;
  output [3:0] MICOMPLETIONRAMWRITEENABLEU;
  output [3:0] MIREQUESTRAMREADENABLE;
  output [3:0] MIREQUESTRAMWRITEENABLE;
  output [3:0] PCIERQSEQNUM;
  output [3:0] PIPERX0EQLPTXPRESET;
  output [3:0] PIPERX1EQLPTXPRESET;
  output [3:0] PIPERX2EQLPTXPRESET;
  output [3:0] PIPERX3EQLPTXPRESET;
  output [3:0] PIPERX4EQLPTXPRESET;
  output [3:0] PIPERX5EQLPTXPRESET;
  output [3:0] PIPERX6EQLPTXPRESET;
  output [3:0] PIPERX7EQLPTXPRESET;
  output [3:0] PIPETX0EQPRESET;
  output [3:0] PIPETX1EQPRESET;
  output [3:0] PIPETX2EQPRESET;
  output [3:0] PIPETX3EQPRESET;
  output [3:0] PIPETX4EQPRESET;
  output [3:0] PIPETX5EQPRESET;
  output [3:0] PIPETX6EQPRESET;
  output [3:0] PIPETX7EQPRESET;
  output [3:0] SAXISCCTREADY;
  output [3:0] SAXISRQTREADY;
  output [4:0] CFGMSGRECEIVEDTYPE;
  output [4:0] CFGTPHSTTADDRESS;
  output [5:0] CFGFUNCTIONPOWERSTATE;
  output [5:0] CFGINTERRUPTMSIMMENABLE;
  output [5:0] CFGINTERRUPTMSIVFENABLE;
  output [5:0] CFGINTERRUPTMSIXVFENABLE;
  output [5:0] CFGINTERRUPTMSIXVFMASK;
  output [5:0] CFGLTSSMSTATE;
  output [5:0] CFGTPHSTMODE;
  output [5:0] CFGVFFLRINPROCESS;
  output [5:0] CFGVFTPHREQUESTERENABLE;
  output [5:0] PCIECQNPREQCOUNT;
  output [5:0] PCIERQTAG;
  output [5:0] PIPERX0EQLPLFFS;
  output [5:0] PIPERX1EQLPLFFS;
  output [5:0] PIPERX2EQLPLFFS;
  output [5:0] PIPERX3EQLPLFFS;
  output [5:0] PIPERX4EQLPLFFS;
  output [5:0] PIPERX5EQLPLFFS;
  output [5:0] PIPERX6EQLPLFFS;
  output [5:0] PIPERX7EQLPLFFS;
  output [5:0] PIPETX0EQDEEMPH;
  output [5:0] PIPETX1EQDEEMPH;
  output [5:0] PIPETX2EQDEEMPH;
  output [5:0] PIPETX3EQDEEMPH;
  output [5:0] PIPETX4EQDEEMPH;
  output [5:0] PIPETX5EQDEEMPH;
  output [5:0] PIPETX6EQDEEMPH;
  output [5:0] PIPETX7EQDEEMPH;
  output [71:0] MICOMPLETIONRAMWRITEDATAL;
  output [71:0] MICOMPLETIONRAMWRITEDATAU;
  output [74:0] MAXISRCTUSER;
  output [7:0] CFGEXTFUNCTIONNUMBER;
  output [7:0] CFGFCCPLH;
  output [7:0] CFGFCNPH;
  output [7:0] CFGFCPH;
  output [7:0] CFGFUNCTIONSTATUS;
  output [7:0] CFGMSGRECEIVEDDATA;
  output [7:0] MAXISCQTKEEP;
  output [7:0] MAXISRCTKEEP;
  output [7:0] PLGEN3PCSRXSLIDE;
  output [84:0] MAXISCQTUSER;
  output [8:0] MIREPLAYRAMADDRESS;
  output [8:0] MIREQUESTRAMREADADDRESSA;
  output [8:0] MIREQUESTRAMREADADDRESSB;
  output [8:0] MIREQUESTRAMWRITEADDRESSA;
  output [8:0] MIREQUESTRAMWRITEADDRESSB;
  output [9:0] CFGEXTREGISTERNUMBER;
  output [9:0] MICOMPLETIONRAMREADADDRESSAL;
  output [9:0] MICOMPLETIONRAMREADADDRESSAU;
  output [9:0] MICOMPLETIONRAMREADADDRESSBL;
  output [9:0] MICOMPLETIONRAMREADADDRESSBU;
  output [9:0] MICOMPLETIONRAMWRITEADDRESSAL;
  output [9:0] MICOMPLETIONRAMWRITEADDRESSAU;
  output [9:0] MICOMPLETIONRAMWRITEADDRESSBL;
  output [9:0] MICOMPLETIONRAMWRITEADDRESSBU;
  input CFGCONFIGSPACEENABLE;
  input CFGERRCORIN;
  input CFGERRUNCORIN;
  input CFGEXTREADDATAVALID;
  input CFGHOTRESETIN;
  input CFGINPUTUPDATEREQUEST;
  input CFGINTERRUPTMSITPHPRESENT;
  input CFGINTERRUPTMSIXINT;
  input CFGLINKTRAININGENABLE;
  input CFGMCUPDATEREQUEST;
  input CFGMGMTREAD;
  input CFGMGMTTYPE1CFGREGACCESS;
  input CFGMGMTWRITE;
  input CFGMSGTRANSMIT;
  input CFGPERFUNCTIONOUTPUTREQUEST;
  input CFGPOWERSTATECHANGEACK;
  input CFGREQPMTRANSITIONL23READY;
  input CFGTPHSTTREADDATAVALID;
  input CORECLK;
  input CORECLKMICOMPLETIONRAML;
  input CORECLKMICOMPLETIONRAMU;
  input CORECLKMIREPLAYRAM;
  input CORECLKMIREQUESTRAM;
  input DRPCLK;
  input DRPEN;
  input DRPWE;
  input MGMTRESETN;
  input MGMTSTICKYRESETN;
  input PCIECQNPREQ;
  input PIPECLK;
  input PIPERESETN;
  input PIPERX0DATAVALID;
  input PIPERX0ELECIDLE;
  input PIPERX0EQDONE;
  input PIPERX0EQLPADAPTDONE;
  input PIPERX0EQLPLFFSSEL;
  input PIPERX0PHYSTATUS;
  input PIPERX0STARTBLOCK;
  input PIPERX0VALID;
  input PIPERX1DATAVALID;
  input PIPERX1ELECIDLE;
  input PIPERX1EQDONE;
  input PIPERX1EQLPADAPTDONE;
  input PIPERX1EQLPLFFSSEL;
  input PIPERX1PHYSTATUS;
  input PIPERX1STARTBLOCK;
  input PIPERX1VALID;
  input PIPERX2DATAVALID;
  input PIPERX2ELECIDLE;
  input PIPERX2EQDONE;
  input PIPERX2EQLPADAPTDONE;
  input PIPERX2EQLPLFFSSEL;
  input PIPERX2PHYSTATUS;
  input PIPERX2STARTBLOCK;
  input PIPERX2VALID;
  input PIPERX3DATAVALID;
  input PIPERX3ELECIDLE;
  input PIPERX3EQDONE;
  input PIPERX3EQLPADAPTDONE;
  input PIPERX3EQLPLFFSSEL;
  input PIPERX3PHYSTATUS;
  input PIPERX3STARTBLOCK;
  input PIPERX3VALID;
  input PIPERX4DATAVALID;
  input PIPERX4ELECIDLE;
  input PIPERX4EQDONE;
  input PIPERX4EQLPADAPTDONE;
  input PIPERX4EQLPLFFSSEL;
  input PIPERX4PHYSTATUS;
  input PIPERX4STARTBLOCK;
  input PIPERX4VALID;
  input PIPERX5DATAVALID;
  input PIPERX5ELECIDLE;
  input PIPERX5EQDONE;
  input PIPERX5EQLPADAPTDONE;
  input PIPERX5EQLPLFFSSEL;
  input PIPERX5PHYSTATUS;
  input PIPERX5STARTBLOCK;
  input PIPERX5VALID;
  input PIPERX6DATAVALID;
  input PIPERX6ELECIDLE;
  input PIPERX6EQDONE;
  input PIPERX6EQLPADAPTDONE;
  input PIPERX6EQLPLFFSSEL;
  input PIPERX6PHYSTATUS;
  input PIPERX6STARTBLOCK;
  input PIPERX6VALID;
  input PIPERX7DATAVALID;
  input PIPERX7ELECIDLE;
  input PIPERX7EQDONE;
  input PIPERX7EQLPADAPTDONE;
  input PIPERX7EQLPLFFSSEL;
  input PIPERX7PHYSTATUS;
  input PIPERX7STARTBLOCK;
  input PIPERX7VALID;
  input PIPETX0EQDONE;
  input PIPETX1EQDONE;
  input PIPETX2EQDONE;
  input PIPETX3EQDONE;
  input PIPETX4EQDONE;
  input PIPETX5EQDONE;
  input PIPETX6EQDONE;
  input PIPETX7EQDONE;
  input PLDISABLESCRAMBLER;
  input PLEQRESETEIEOSCOUNT;
  input PLGEN3PCSDISABLE;
  input RECCLK;
  input RESETN;
  input SAXISCCTLAST;
  input SAXISCCTVALID;
  input SAXISRQTLAST;
  input SAXISRQTVALID;
  input USERCLK;
  input [10:0] DRPADDR;
  input [143:0] MICOMPLETIONRAMREADDATA;
  input [143:0] MIREPLAYRAMREADDATA;
  input [143:0] MIREQUESTRAMREADDATA;
  input [15:0] CFGDEVID;
  input [15:0] CFGSUBSYSID;
  input [15:0] CFGSUBSYSVENDID;
  input [15:0] CFGVENDID;
  input [15:0] DRPDI;
  input [17:0] PIPERX0EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX1EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX2EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX3EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX4EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX5EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX6EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPERX7EQLPNEWTXCOEFFORPRESET;
  input [17:0] PIPETX0EQCOEFF;
  input [17:0] PIPETX1EQCOEFF;
  input [17:0] PIPETX2EQCOEFF;
  input [17:0] PIPETX3EQCOEFF;
  input [17:0] PIPETX4EQCOEFF;
  input [17:0] PIPETX5EQCOEFF;
  input [17:0] PIPETX6EQCOEFF;
  input [17:0] PIPETX7EQCOEFF;
  input [18:0] CFGMGMTADDR;
  input [1:0] CFGFLRDONE;
  input [1:0] CFGINTERRUPTMSITPHTYPE;
  input [1:0] CFGINTERRUPTPENDING;
  input [1:0] PIPERX0CHARISK;
  input [1:0] PIPERX0SYNCHEADER;
  input [1:0] PIPERX1CHARISK;
  input [1:0] PIPERX1SYNCHEADER;
  input [1:0] PIPERX2CHARISK;
  input [1:0] PIPERX2SYNCHEADER;
  input [1:0] PIPERX3CHARISK;
  input [1:0] PIPERX3SYNCHEADER;
  input [1:0] PIPERX4CHARISK;
  input [1:0] PIPERX4SYNCHEADER;
  input [1:0] PIPERX5CHARISK;
  input [1:0] PIPERX5SYNCHEADER;
  input [1:0] PIPERX6CHARISK;
  input [1:0] PIPERX6SYNCHEADER;
  input [1:0] PIPERX7CHARISK;
  input [1:0] PIPERX7SYNCHEADER;
  input [21:0] MAXISCQTREADY;
  input [21:0] MAXISRCTREADY;
  input [255:0] SAXISCCTDATA;
  input [255:0] SAXISRQTDATA;
  input [2:0] CFGDSFUNCTIONNUMBER;
  input [2:0] CFGFCSEL;
  input [2:0] CFGINTERRUPTMSIATTR;
  input [2:0] CFGINTERRUPTMSIFUNCTIONNUMBER;
  input [2:0] CFGMSGTRANSMITTYPE;
  input [2:0] CFGPERFUNCSTATUSCONTROL;
  input [2:0] CFGPERFUNCTIONNUMBER;
  input [2:0] PIPERX0STATUS;
  input [2:0] PIPERX1STATUS;
  input [2:0] PIPERX2STATUS;
  input [2:0] PIPERX3STATUS;
  input [2:0] PIPERX4STATUS;
  input [2:0] PIPERX5STATUS;
  input [2:0] PIPERX6STATUS;
  input [2:0] PIPERX7STATUS;
  input [31:0] CFGEXTREADDATA;
  input [31:0] CFGINTERRUPTMSIINT;
  input [31:0] CFGINTERRUPTMSIXDATA;
  input [31:0] CFGMGMTWRITEDATA;
  input [31:0] CFGMSGTRANSMITDATA;
  input [31:0] CFGTPHSTTREADDATA;
  input [31:0] PIPERX0DATA;
  input [31:0] PIPERX1DATA;
  input [31:0] PIPERX2DATA;
  input [31:0] PIPERX3DATA;
  input [31:0] PIPERX4DATA;
  input [31:0] PIPERX5DATA;
  input [31:0] PIPERX6DATA;
  input [31:0] PIPERX7DATA;
  input [32:0] SAXISCCTUSER;
  input [3:0] CFGINTERRUPTINT;
  input [3:0] CFGINTERRUPTMSISELECT;
  input [3:0] CFGMGMTBYTEENABLE;
  input [4:0] CFGDSDEVICENUMBER;
  input [59:0] SAXISRQTUSER;
  input [5:0] CFGVFFLRDONE;
  input [5:0] PIPEEQFS;
  input [5:0] PIPEEQLF;
  input [63:0] CFGDSN;
  input [63:0] CFGINTERRUPTMSIPENDINGSTATUS;
  input [63:0] CFGINTERRUPTMSIXADDRESS;
  input [7:0] CFGDSBUSNUMBER;
  input [7:0] CFGDSPORTNUMBER;
  input [7:0] CFGREVID;
  input [7:0] PLGEN3PCSRXSYNCDONE;
  input [7:0] SAXISCCTKEEP;
  input [7:0] SAXISRQTKEEP;
  input [8:0] CFGINTERRUPTMSITPHSTTAG;
endmodule

module PCIE_3_1 #(
  parameter ARI_CAP_ENABLE = "FALSE",
  parameter AXISTEN_IF_CC_ALIGNMENT_MODE = "FALSE",
  parameter AXISTEN_IF_CC_PARITY_CHK = "TRUE",
  parameter AXISTEN_IF_CQ_ALIGNMENT_MODE = "FALSE",
  parameter AXISTEN_IF_ENABLE_CLIENT_TAG = "FALSE",
  parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE = 18'h00000,
  parameter AXISTEN_IF_ENABLE_RX_MSG_INTFC = "FALSE",
  parameter AXISTEN_IF_RC_ALIGNMENT_MODE = "FALSE",
  parameter AXISTEN_IF_RC_STRADDLE = "FALSE",
  parameter AXISTEN_IF_RQ_ALIGNMENT_MODE = "FALSE",
  parameter AXISTEN_IF_RQ_PARITY_CHK = "TRUE",
  parameter [1:0] AXISTEN_IF_WIDTH = 2'h2,
  parameter CRM_CORE_CLK_FREQ_500 = "TRUE",
  parameter [1:0] CRM_USER_CLK_FREQ = 2'h2,
  parameter DEBUG_CFG_LOCAL_MGMT_REG_ACCESS_OVERRIDE = "FALSE",
  parameter DEBUG_PL_DISABLE_EI_INFER_IN_L0 = "FALSE",
  parameter DEBUG_TL_DISABLE_RX_TLP_ORDER_CHECKS = "FALSE",
  parameter [7:0] DNSTREAM_LINK_NUM = 8'h00,
  parameter [8:0] LL_ACK_TIMEOUT = 9'h000,
  parameter LL_ACK_TIMEOUT_EN = "FALSE",
  parameter integer LL_ACK_TIMEOUT_FUNC = 0,
  parameter [15:0] LL_CPL_FC_UPDATE_TIMER = 16'h0000,
  parameter LL_CPL_FC_UPDATE_TIMER_OVERRIDE = "FALSE",
  parameter [15:0] LL_FC_UPDATE_TIMER = 16'h0000,
  parameter LL_FC_UPDATE_TIMER_OVERRIDE = "FALSE",
  parameter [15:0] LL_NP_FC_UPDATE_TIMER = 16'h0000,
  parameter LL_NP_FC_UPDATE_TIMER_OVERRIDE = "FALSE",
  parameter [15:0] LL_P_FC_UPDATE_TIMER = 16'h0000,
  parameter LL_P_FC_UPDATE_TIMER_OVERRIDE = "FALSE",
  parameter [8:0] LL_REPLAY_TIMEOUT = 9'h000,
  parameter LL_REPLAY_TIMEOUT_EN = "FALSE",
  parameter integer LL_REPLAY_TIMEOUT_FUNC = 0,
  parameter [9:0] LTR_TX_MESSAGE_MINIMUM_INTERVAL = 10'h0FA,
  parameter LTR_TX_MESSAGE_ON_FUNC_POWER_STATE_CHANGE = "FALSE",
  parameter LTR_TX_MESSAGE_ON_LTR_ENABLE = "FALSE",
  parameter [11:0] MCAP_CAP_NEXTPTR = 12'h000,
  parameter MCAP_CONFIGURE_OVERRIDE = "FALSE",
  parameter MCAP_ENABLE = "FALSE",
  parameter MCAP_EOS_DESIGN_SWITCH = "FALSE",
  parameter [31:0] MCAP_FPGA_BITSTREAM_VERSION = 32'h00000000,
  parameter MCAP_GATE_IO_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_GATE_MEM_ENABLE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INPUT_GATE_DESIGN_SWITCH = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_EOS = "FALSE",
  parameter MCAP_INTERRUPT_ON_MCAP_ERROR = "FALSE",
  parameter [15:0] MCAP_VSEC_ID = 16'h0000,
  parameter [11:0] MCAP_VSEC_LEN = 12'h02C,
  parameter [3:0] MCAP_VSEC_REV = 4'h0,
  parameter PF0_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter PF0_AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter [11:0] PF0_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF0_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [3:0] PF0_ARI_CAP_VER = 4'h1,
  parameter [5:0] PF0_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF0_BAR0_CONTROL = 3'h4,
  parameter [5:0] PF0_BAR1_APERTURE_SIZE = 6'h00,
  parameter [2:0] PF0_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF0_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF0_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF0_BIST_REGISTER = 8'h00,
  parameter [7:0] PF0_CAPABILITY_POINTER = 8'h50,
  parameter [23:0] PF0_CLASS_CODE = 24'h000000,
  parameter [15:0] PF0_DEVICE_ID = 16'h0000,
  parameter PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT = "TRUE",
  parameter PF0_DEV_CAP2_ARI_FORWARD_ENABLE = "FALSE",
  parameter PF0_DEV_CAP2_CPL_TIMEOUT_DISABLE = "TRUE",
  parameter PF0_DEV_CAP2_LTR_SUPPORT = "TRUE",
  parameter [1:0] PF0_DEV_CAP2_OBFF_SUPPORT = 2'h0,
  parameter PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT = "FALSE",
  parameter integer PF0_DEV_CAP_ENDPOINT_L0S_LATENCY = 0,
  parameter integer PF0_DEV_CAP_ENDPOINT_L1_LATENCY = 0,
  parameter PF0_DEV_CAP_EXT_TAG_SUPPORTED = "TRUE",
  parameter PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "TRUE",
  parameter [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF0_DPA_CAP_NEXTPTR = 12'h000,
  parameter [4:0] PF0_DPA_CAP_SUB_STATE_CONTROL = 5'h00,
  parameter PF0_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE",
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00,
  parameter [7:0] PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00,
  parameter [3:0] PF0_DPA_CAP_VER = 4'h1,
  parameter [11:0] PF0_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF0_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF0_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [7:0] PF0_INTERRUPT_LINE = 8'h00,
  parameter [2:0] PF0_INTERRUPT_PIN = 3'h1,
  parameter integer PF0_LINK_CAP_ASPM_SUPPORT = 0,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L0S_EXIT_LATENCY_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN3 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7,
  parameter integer PF0_LINK_CAP_L1_EXIT_LATENCY_GEN3 = 7,
  parameter PF0_LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE",
  parameter [9:0] PF0_LTR_CAP_MAX_NOSNOOP_LAT = 10'h000,
  parameter [9:0] PF0_LTR_CAP_MAX_SNOOP_LAT = 10'h000,
  parameter [11:0] PF0_LTR_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_LTR_CAP_VER = 4'h1,
  parameter [7:0] PF0_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF0_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF0_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF0_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [31:0] PF0_PB_CAP_DATA_REG_D0 = 32'h00000000,
  parameter [31:0] PF0_PB_CAP_DATA_REG_D0_SUSTAINED = 32'h00000000,
  parameter [31:0] PF0_PB_CAP_DATA_REG_D1 = 32'h00000000,
  parameter [31:0] PF0_PB_CAP_DATA_REG_D3HOT = 32'h00000000,
  parameter [11:0] PF0_PB_CAP_NEXTPTR = 12'h000,
  parameter PF0_PB_CAP_SYSTEM_ALLOCATED = "FALSE",
  parameter [3:0] PF0_PB_CAP_VER = 4'h1,
  parameter [7:0] PF0_PM_CAP_ID = 8'h01,
  parameter [7:0] PF0_PM_CAP_NEXTPTR = 8'h00,
  parameter PF0_PM_CAP_PMESUPPORT_D0 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D1 = "TRUE",
  parameter PF0_PM_CAP_PMESUPPORT_D3HOT = "TRUE",
  parameter PF0_PM_CAP_SUPP_D1_STATE = "TRUE",
  parameter [2:0] PF0_PM_CAP_VER_ID = 3'h3,
  parameter PF0_PM_CSR_NOSOFTRESET = "TRUE",
  parameter PF0_RBAR_CAP_ENABLE = "FALSE",
  parameter [11:0] PF0_RBAR_CAP_NEXTPTR = 12'h000,
  parameter [19:0] PF0_RBAR_CAP_SIZE0 = 20'h00000,
  parameter [19:0] PF0_RBAR_CAP_SIZE1 = 20'h00000,
  parameter [19:0] PF0_RBAR_CAP_SIZE2 = 20'h00000,
  parameter [3:0] PF0_RBAR_CAP_VER = 4'h1,
  parameter [2:0] PF0_RBAR_CONTROL_INDEX0 = 3'h0,
  parameter [2:0] PF0_RBAR_CONTROL_INDEX1 = 3'h0,
  parameter [2:0] PF0_RBAR_CONTROL_INDEX2 = 3'h0,
  parameter [4:0] PF0_RBAR_CONTROL_SIZE0 = 5'h00,
  parameter [4:0] PF0_RBAR_CONTROL_SIZE1 = 5'h00,
  parameter [4:0] PF0_RBAR_CONTROL_SIZE2 = 5'h00,
  parameter [2:0] PF0_RBAR_NUM = 3'h1,
  parameter [7:0] PF0_REVISION_ID = 8'h00,
  parameter [11:0] PF0_SECONDARY_PCIE_CAP_NEXTPTR = 12'h000,
  parameter [4:0] PF0_SRIOV_BAR0_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF0_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF0_SRIOV_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF0_SRIOV_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF0_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF0_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF0_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF0_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF0_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF0_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF0_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF0_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF0_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF0_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [15:0] PF0_SUBSYSTEM_ID = 16'h0000,
  parameter PF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF0_TPHR_CAP_ENABLE = "FALSE",
  parameter PF0_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF0_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF0_TPHR_CAP_VER = 4'h1,
  parameter PF0_VC_CAP_ENABLE = "FALSE",
  parameter [11:0] PF0_VC_CAP_NEXTPTR = 12'h000,
  parameter [3:0] PF0_VC_CAP_VER = 4'h1,
  parameter PF1_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter PF1_AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter [11:0] PF1_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF1_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF1_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF1_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF1_BAR0_CONTROL = 3'h4,
  parameter [5:0] PF1_BAR1_APERTURE_SIZE = 6'h00,
  parameter [2:0] PF1_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF1_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF1_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF1_BIST_REGISTER = 8'h00,
  parameter [7:0] PF1_CAPABILITY_POINTER = 8'h50,
  parameter [23:0] PF1_CLASS_CODE = 24'h000000,
  parameter [15:0] PF1_DEVICE_ID = 16'h0000,
  parameter [2:0] PF1_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF1_DPA_CAP_NEXTPTR = 12'h000,
  parameter [4:0] PF1_DPA_CAP_SUB_STATE_CONTROL = 5'h00,
  parameter PF1_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE",
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00,
  parameter [7:0] PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00,
  parameter [3:0] PF1_DPA_CAP_VER = 4'h1,
  parameter [11:0] PF1_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF1_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF1_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [7:0] PF1_INTERRUPT_LINE = 8'h00,
  parameter [2:0] PF1_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF1_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF1_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF1_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF1_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [31:0] PF1_PB_CAP_DATA_REG_D0 = 32'h00000000,
  parameter [31:0] PF1_PB_CAP_DATA_REG_D0_SUSTAINED = 32'h00000000,
  parameter [31:0] PF1_PB_CAP_DATA_REG_D1 = 32'h00000000,
  parameter [31:0] PF1_PB_CAP_DATA_REG_D3HOT = 32'h00000000,
  parameter [11:0] PF1_PB_CAP_NEXTPTR = 12'h000,
  parameter PF1_PB_CAP_SYSTEM_ALLOCATED = "FALSE",
  parameter [3:0] PF1_PB_CAP_VER = 4'h1,
  parameter [7:0] PF1_PM_CAP_ID = 8'h01,
  parameter [7:0] PF1_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] PF1_PM_CAP_VER_ID = 3'h3,
  parameter PF1_RBAR_CAP_ENABLE = "FALSE",
  parameter [11:0] PF1_RBAR_CAP_NEXTPTR = 12'h000,
  parameter [19:0] PF1_RBAR_CAP_SIZE0 = 20'h00000,
  parameter [19:0] PF1_RBAR_CAP_SIZE1 = 20'h00000,
  parameter [19:0] PF1_RBAR_CAP_SIZE2 = 20'h00000,
  parameter [3:0] PF1_RBAR_CAP_VER = 4'h1,
  parameter [2:0] PF1_RBAR_CONTROL_INDEX0 = 3'h0,
  parameter [2:0] PF1_RBAR_CONTROL_INDEX1 = 3'h0,
  parameter [2:0] PF1_RBAR_CONTROL_INDEX2 = 3'h0,
  parameter [4:0] PF1_RBAR_CONTROL_SIZE0 = 5'h00,
  parameter [4:0] PF1_RBAR_CONTROL_SIZE1 = 5'h00,
  parameter [4:0] PF1_RBAR_CONTROL_SIZE2 = 5'h00,
  parameter [2:0] PF1_RBAR_NUM = 3'h1,
  parameter [7:0] PF1_REVISION_ID = 8'h00,
  parameter [4:0] PF1_SRIOV_BAR0_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF1_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF1_SRIOV_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF1_SRIOV_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF1_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF1_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF1_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF1_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF1_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF1_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF1_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF1_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF1_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF1_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [15:0] PF1_SUBSYSTEM_ID = 16'h0000,
  parameter PF1_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF1_TPHR_CAP_ENABLE = "FALSE",
  parameter PF1_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF1_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF1_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF1_TPHR_CAP_VER = 4'h1,
  parameter PF2_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter PF2_AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter [11:0] PF2_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF2_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF2_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF2_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF2_BAR0_CONTROL = 3'h4,
  parameter [5:0] PF2_BAR1_APERTURE_SIZE = 6'h00,
  parameter [2:0] PF2_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF2_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF2_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF2_BIST_REGISTER = 8'h00,
  parameter [7:0] PF2_CAPABILITY_POINTER = 8'h50,
  parameter [23:0] PF2_CLASS_CODE = 24'h000000,
  parameter [15:0] PF2_DEVICE_ID = 16'h0000,
  parameter [2:0] PF2_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF2_DPA_CAP_NEXTPTR = 12'h000,
  parameter [4:0] PF2_DPA_CAP_SUB_STATE_CONTROL = 5'h00,
  parameter PF2_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE",
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00,
  parameter [7:0] PF2_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00,
  parameter [3:0] PF2_DPA_CAP_VER = 4'h1,
  parameter [11:0] PF2_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF2_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF2_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [7:0] PF2_INTERRUPT_LINE = 8'h00,
  parameter [2:0] PF2_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF2_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF2_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF2_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF2_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [31:0] PF2_PB_CAP_DATA_REG_D0 = 32'h00000000,
  parameter [31:0] PF2_PB_CAP_DATA_REG_D0_SUSTAINED = 32'h00000000,
  parameter [31:0] PF2_PB_CAP_DATA_REG_D1 = 32'h00000000,
  parameter [31:0] PF2_PB_CAP_DATA_REG_D3HOT = 32'h00000000,
  parameter [11:0] PF2_PB_CAP_NEXTPTR = 12'h000,
  parameter PF2_PB_CAP_SYSTEM_ALLOCATED = "FALSE",
  parameter [3:0] PF2_PB_CAP_VER = 4'h1,
  parameter [7:0] PF2_PM_CAP_ID = 8'h01,
  parameter [7:0] PF2_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] PF2_PM_CAP_VER_ID = 3'h3,
  parameter PF2_RBAR_CAP_ENABLE = "FALSE",
  parameter [11:0] PF2_RBAR_CAP_NEXTPTR = 12'h000,
  parameter [19:0] PF2_RBAR_CAP_SIZE0 = 20'h00000,
  parameter [19:0] PF2_RBAR_CAP_SIZE1 = 20'h00000,
  parameter [19:0] PF2_RBAR_CAP_SIZE2 = 20'h00000,
  parameter [3:0] PF2_RBAR_CAP_VER = 4'h1,
  parameter [2:0] PF2_RBAR_CONTROL_INDEX0 = 3'h0,
  parameter [2:0] PF2_RBAR_CONTROL_INDEX1 = 3'h0,
  parameter [2:0] PF2_RBAR_CONTROL_INDEX2 = 3'h0,
  parameter [4:0] PF2_RBAR_CONTROL_SIZE0 = 5'h00,
  parameter [4:0] PF2_RBAR_CONTROL_SIZE1 = 5'h00,
  parameter [4:0] PF2_RBAR_CONTROL_SIZE2 = 5'h00,
  parameter [2:0] PF2_RBAR_NUM = 3'h1,
  parameter [7:0] PF2_REVISION_ID = 8'h00,
  parameter [4:0] PF2_SRIOV_BAR0_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF2_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF2_SRIOV_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF2_SRIOV_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF2_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF2_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF2_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF2_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF2_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF2_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF2_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF2_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF2_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF2_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [15:0] PF2_SUBSYSTEM_ID = 16'h0000,
  parameter PF2_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF2_TPHR_CAP_ENABLE = "FALSE",
  parameter PF2_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF2_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF2_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF2_TPHR_CAP_VER = 4'h1,
  parameter PF3_AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter PF3_AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter [11:0] PF3_AER_CAP_NEXTPTR = 12'h000,
  parameter [11:0] PF3_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] PF3_ARI_CAP_NEXT_FUNC = 8'h00,
  parameter [5:0] PF3_BAR0_APERTURE_SIZE = 6'h03,
  parameter [2:0] PF3_BAR0_CONTROL = 3'h4,
  parameter [5:0] PF3_BAR1_APERTURE_SIZE = 6'h00,
  parameter [2:0] PF3_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF3_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF3_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_BAR5_CONTROL = 3'h0,
  parameter [7:0] PF3_BIST_REGISTER = 8'h00,
  parameter [7:0] PF3_CAPABILITY_POINTER = 8'h50,
  parameter [23:0] PF3_CLASS_CODE = 24'h000000,
  parameter [15:0] PF3_DEVICE_ID = 16'h0000,
  parameter [2:0] PF3_DEV_CAP_MAX_PAYLOAD_SIZE = 3'h3,
  parameter [11:0] PF3_DPA_CAP_NEXTPTR = 12'h000,
  parameter [4:0] PF3_DPA_CAP_SUB_STATE_CONTROL = 5'h00,
  parameter PF3_DPA_CAP_SUB_STATE_CONTROL_EN = "TRUE",
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION0 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION1 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION2 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION3 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION4 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION5 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION6 = 8'h00,
  parameter [7:0] PF3_DPA_CAP_SUB_STATE_POWER_ALLOCATION7 = 8'h00,
  parameter [3:0] PF3_DPA_CAP_VER = 4'h1,
  parameter [11:0] PF3_DSN_CAP_NEXTPTR = 12'h10C,
  parameter [4:0] PF3_EXPANSION_ROM_APERTURE_SIZE = 5'h03,
  parameter PF3_EXPANSION_ROM_ENABLE = "FALSE",
  parameter [7:0] PF3_INTERRUPT_LINE = 8'h00,
  parameter [2:0] PF3_INTERRUPT_PIN = 3'h1,
  parameter [7:0] PF3_MSIX_CAP_NEXTPTR = 8'h00,
  parameter integer PF3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer PF3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] PF3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] PF3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer PF3_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] PF3_MSI_CAP_NEXTPTR = 8'h00,
  parameter PF3_MSI_CAP_PERVECMASKCAP = "FALSE",
  parameter [31:0] PF3_PB_CAP_DATA_REG_D0 = 32'h00000000,
  parameter [31:0] PF3_PB_CAP_DATA_REG_D0_SUSTAINED = 32'h00000000,
  parameter [31:0] PF3_PB_CAP_DATA_REG_D1 = 32'h00000000,
  parameter [31:0] PF3_PB_CAP_DATA_REG_D3HOT = 32'h00000000,
  parameter [11:0] PF3_PB_CAP_NEXTPTR = 12'h000,
  parameter PF3_PB_CAP_SYSTEM_ALLOCATED = "FALSE",
  parameter [3:0] PF3_PB_CAP_VER = 4'h1,
  parameter [7:0] PF3_PM_CAP_ID = 8'h01,
  parameter [7:0] PF3_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] PF3_PM_CAP_VER_ID = 3'h3,
  parameter PF3_RBAR_CAP_ENABLE = "FALSE",
  parameter [11:0] PF3_RBAR_CAP_NEXTPTR = 12'h000,
  parameter [19:0] PF3_RBAR_CAP_SIZE0 = 20'h00000,
  parameter [19:0] PF3_RBAR_CAP_SIZE1 = 20'h00000,
  parameter [19:0] PF3_RBAR_CAP_SIZE2 = 20'h00000,
  parameter [3:0] PF3_RBAR_CAP_VER = 4'h1,
  parameter [2:0] PF3_RBAR_CONTROL_INDEX0 = 3'h0,
  parameter [2:0] PF3_RBAR_CONTROL_INDEX1 = 3'h0,
  parameter [2:0] PF3_RBAR_CONTROL_INDEX2 = 3'h0,
  parameter [4:0] PF3_RBAR_CONTROL_SIZE0 = 5'h00,
  parameter [4:0] PF3_RBAR_CONTROL_SIZE1 = 5'h00,
  parameter [4:0] PF3_RBAR_CONTROL_SIZE2 = 5'h00,
  parameter [2:0] PF3_RBAR_NUM = 3'h1,
  parameter [7:0] PF3_REVISION_ID = 8'h00,
  parameter [4:0] PF3_SRIOV_BAR0_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR0_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR1_APERTURE_SIZE = 5'h00,
  parameter [2:0] PF3_SRIOV_BAR1_CONTROL = 3'h0,
  parameter [4:0] PF3_SRIOV_BAR2_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR2_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR3_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR3_CONTROL = 3'h0,
  parameter [4:0] PF3_SRIOV_BAR4_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR4_CONTROL = 3'h4,
  parameter [4:0] PF3_SRIOV_BAR5_APERTURE_SIZE = 5'h03,
  parameter [2:0] PF3_SRIOV_BAR5_CONTROL = 3'h0,
  parameter [15:0] PF3_SRIOV_CAP_INITIAL_VF = 16'h0000,
  parameter [11:0] PF3_SRIOV_CAP_NEXTPTR = 12'h000,
  parameter [15:0] PF3_SRIOV_CAP_TOTAL_VF = 16'h0000,
  parameter [3:0] PF3_SRIOV_CAP_VER = 4'h1,
  parameter [15:0] PF3_SRIOV_FIRST_VF_OFFSET = 16'h0000,
  parameter [15:0] PF3_SRIOV_FUNC_DEP_LINK = 16'h0000,
  parameter [31:0] PF3_SRIOV_SUPPORTED_PAGE_SIZE = 32'h00000000,
  parameter [15:0] PF3_SRIOV_VF_DEVICE_ID = 16'h0000,
  parameter [15:0] PF3_SUBSYSTEM_ID = 16'h0000,
  parameter PF3_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter PF3_TPHR_CAP_ENABLE = "FALSE",
  parameter PF3_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] PF3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] PF3_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] PF3_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] PF3_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] PF3_TPHR_CAP_VER = 4'h1,
  parameter PL_DISABLE_AUTO_EQ_SPEED_CHANGE_TO_GEN3 = "FALSE",
  parameter PL_DISABLE_AUTO_SPEED_CHANGE_TO_GEN2 = "FALSE",
  parameter PL_DISABLE_EI_INFER_IN_L0 = "FALSE",
  parameter PL_DISABLE_GEN3_DC_BALANCE = "FALSE",
  parameter PL_DISABLE_GEN3_LFSR_UPDATE_ON_SKP = "TRUE",
  parameter PL_DISABLE_RETRAIN_ON_FRAMING_ERROR = "FALSE",
  parameter PL_DISABLE_SCRAMBLING = "FALSE",
  parameter PL_DISABLE_SYNC_HEADER_FRAMING_ERROR = "FALSE",
  parameter PL_DISABLE_UPCONFIG_CAPABLE = "FALSE",
  parameter PL_EQ_ADAPT_DISABLE_COEFF_CHECK = "FALSE",
  parameter PL_EQ_ADAPT_DISABLE_PRESET_CHECK = "FALSE",
  parameter [4:0] PL_EQ_ADAPT_ITER_COUNT = 5'h02,
  parameter [1:0] PL_EQ_ADAPT_REJECT_RETRY_COUNT = 2'h1,
  parameter PL_EQ_BYPASS_PHASE23 = "FALSE",
  parameter [2:0] PL_EQ_DEFAULT_GEN3_RX_PRESET_HINT = 3'h3,
  parameter [3:0] PL_EQ_DEFAULT_GEN3_TX_PRESET = 4'h4,
  parameter PL_EQ_PHASE01_RX_ADAPT = "FALSE",
  parameter PL_EQ_SHORT_ADAPT_PHASE = "FALSE",
  parameter [15:0] PL_LANE0_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE1_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE2_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE3_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE4_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE5_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE6_EQ_CONTROL = 16'h3F00,
  parameter [15:0] PL_LANE7_EQ_CONTROL = 16'h3F00,
  parameter [2:0] PL_LINK_CAP_MAX_LINK_SPEED = 3'h4,
  parameter [3:0] PL_LINK_CAP_MAX_LINK_WIDTH = 4'h8,
  parameter integer PL_N_FTS_COMCLK_GEN1 = 255,
  parameter integer PL_N_FTS_COMCLK_GEN2 = 255,
  parameter integer PL_N_FTS_COMCLK_GEN3 = 255,
  parameter integer PL_N_FTS_GEN1 = 255,
  parameter integer PL_N_FTS_GEN2 = 255,
  parameter integer PL_N_FTS_GEN3 = 255,
  parameter PL_REPORT_ALL_PHY_ERRORS = "TRUE",
  parameter PL_SIM_FAST_LINK_TRAINING = "FALSE",
  parameter PL_UPSTREAM_FACING = "TRUE",
  parameter [15:0] PM_ASPML0S_TIMEOUT = 16'h05DC,
  parameter [19:0] PM_ASPML1_ENTRY_DELAY = 20'h00000,
  parameter PM_ENABLE_L23_ENTRY = "FALSE",
  parameter PM_ENABLE_SLOT_POWER_CAPTURE = "TRUE",
  parameter [31:0] PM_L1_REENTRY_DELAY = 32'h00000000,
  parameter [19:0] PM_PME_SERVICE_TIMEOUT_DELAY = 20'h186A0,
  parameter [15:0] PM_PME_TURNOFF_ACK_DELAY = 16'h0064,
  parameter [31:0] SIM_JTAG_IDCODE = 32'h00000000,
  parameter SIM_VERSION = "1.0",
  parameter integer SPARE_BIT0 = 0,
  parameter integer SPARE_BIT1 = 0,
  parameter integer SPARE_BIT2 = 0,
  parameter integer SPARE_BIT3 = 0,
  parameter integer SPARE_BIT4 = 0,
  parameter integer SPARE_BIT5 = 0,
  parameter integer SPARE_BIT6 = 0,
  parameter integer SPARE_BIT7 = 0,
  parameter integer SPARE_BIT8 = 0,
  parameter [7:0] SPARE_BYTE0 = 8'h00,
  parameter [7:0] SPARE_BYTE1 = 8'h00,
  parameter [7:0] SPARE_BYTE2 = 8'h00,
  parameter [7:0] SPARE_BYTE3 = 8'h00,
  parameter [31:0] SPARE_WORD0 = 32'h00000000,
  parameter [31:0] SPARE_WORD1 = 32'h00000000,
  parameter [31:0] SPARE_WORD2 = 32'h00000000,
  parameter [31:0] SPARE_WORD3 = 32'h00000000,
  parameter SRIOV_CAP_ENABLE = "FALSE",
  parameter TL_COMPLETION_RAM_SIZE_16K = "TRUE",
  parameter [23:0] TL_COMPL_TIMEOUT_REG0 = 24'hBEBC20,
  parameter [27:0] TL_COMPL_TIMEOUT_REG1 = 28'h2FAF080,
  parameter [11:0] TL_CREDITS_CD = 12'h3E0,
  parameter [7:0] TL_CREDITS_CH = 8'h20,
  parameter [11:0] TL_CREDITS_NPD = 12'h028,
  parameter [7:0] TL_CREDITS_NPH = 8'h20,
  parameter [11:0] TL_CREDITS_PD = 12'h198,
  parameter [7:0] TL_CREDITS_PH = 8'h20,
  parameter TL_ENABLE_MESSAGE_RID_CHECK_ENABLE = "TRUE",
  parameter TL_EXTENDED_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter TL_LEGACY_CFG_EXTEND_INTERFACE_ENABLE = "FALSE",
  parameter TL_LEGACY_MODE_ENABLE = "FALSE",
  parameter [1:0] TL_PF_ENABLE_REG = 2'h0,
  parameter TL_TX_MUX_STRICT_PRIORITY = "TRUE",
  parameter TWO_LAYER_MODE_DLCMSM_ENABLE = "TRUE",
  parameter TWO_LAYER_MODE_ENABLE = "FALSE",
  parameter TWO_LAYER_MODE_WIDTH_256 = "TRUE",
  parameter [11:0] VF0_ARI_CAP_NEXTPTR = 12'h000,
  parameter [7:0] VF0_CAPABILITY_POINTER = 8'h50,
  parameter integer VF0_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF0_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF0_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF0_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF0_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF0_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF0_PM_CAP_ID = 8'h01,
  parameter [7:0] VF0_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF0_PM_CAP_VER_ID = 3'h3,
  parameter VF0_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF0_TPHR_CAP_ENABLE = "FALSE",
  parameter VF0_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF0_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF0_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF0_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF0_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF0_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF1_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF1_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF1_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF1_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF1_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF1_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF1_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF1_PM_CAP_ID = 8'h01,
  parameter [7:0] VF1_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF1_PM_CAP_VER_ID = 3'h3,
  parameter VF1_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF1_TPHR_CAP_ENABLE = "FALSE",
  parameter VF1_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF1_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF1_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF1_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF1_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF1_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF2_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF2_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF2_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF2_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF2_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF2_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF2_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF2_PM_CAP_ID = 8'h01,
  parameter [7:0] VF2_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF2_PM_CAP_VER_ID = 3'h3,
  parameter VF2_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF2_TPHR_CAP_ENABLE = "FALSE",
  parameter VF2_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF2_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF2_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF2_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF2_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF2_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF3_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF3_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF3_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF3_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF3_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF3_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF3_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF3_PM_CAP_ID = 8'h01,
  parameter [7:0] VF3_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF3_PM_CAP_VER_ID = 3'h3,
  parameter VF3_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF3_TPHR_CAP_ENABLE = "FALSE",
  parameter VF3_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF3_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF3_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF3_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF3_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF3_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF4_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF4_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF4_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF4_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF4_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF4_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF4_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF4_PM_CAP_ID = 8'h01,
  parameter [7:0] VF4_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF4_PM_CAP_VER_ID = 3'h3,
  parameter VF4_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF4_TPHR_CAP_ENABLE = "FALSE",
  parameter VF4_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF4_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF4_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF4_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF4_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF4_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF5_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF5_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF5_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF5_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF5_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF5_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF5_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF5_PM_CAP_ID = 8'h01,
  parameter [7:0] VF5_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF5_PM_CAP_VER_ID = 3'h3,
  parameter VF5_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF5_TPHR_CAP_ENABLE = "FALSE",
  parameter VF5_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF5_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF5_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF5_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF5_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF5_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF6_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF6_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF6_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF6_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF6_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF6_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF6_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF6_PM_CAP_ID = 8'h01,
  parameter [7:0] VF6_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF6_PM_CAP_VER_ID = 3'h3,
  parameter VF6_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF6_TPHR_CAP_ENABLE = "FALSE",
  parameter VF6_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF6_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF6_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF6_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF6_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF6_TPHR_CAP_VER = 4'h1,
  parameter [11:0] VF7_ARI_CAP_NEXTPTR = 12'h000,
  parameter integer VF7_MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] VF7_MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter integer VF7_MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] VF7_MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] VF7_MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter integer VF7_MSI_CAP_MULTIMSGCAP = 0,
  parameter [7:0] VF7_PM_CAP_ID = 8'h01,
  parameter [7:0] VF7_PM_CAP_NEXTPTR = 8'h00,
  parameter [2:0] VF7_PM_CAP_VER_ID = 3'h3,
  parameter VF7_TPHR_CAP_DEV_SPECIFIC_MODE = "TRUE",
  parameter VF7_TPHR_CAP_ENABLE = "FALSE",
  parameter VF7_TPHR_CAP_INT_VEC_MODE = "TRUE",
  parameter [11:0] VF7_TPHR_CAP_NEXTPTR = 12'h000,
  parameter [2:0] VF7_TPHR_CAP_ST_MODE_SEL = 3'h0,
  parameter [1:0] VF7_TPHR_CAP_ST_TABLE_LOC = 2'h0,
  parameter [10:0] VF7_TPHR_CAP_ST_TABLE_SIZE = 11'h000,
  parameter [3:0] VF7_TPHR_CAP_VER = 4'h1
)(
  output [2:0] CFGCURRENTSPEED,
  output [3:0] CFGDPASUBSTATECHANGE,
  output CFGERRCOROUT,
  output CFGERRFATALOUT,
  output CFGERRNONFATALOUT,
  output [7:0] CFGEXTFUNCTIONNUMBER,
  output CFGEXTREADRECEIVED,
  output [9:0] CFGEXTREGISTERNUMBER,
  output [3:0] CFGEXTWRITEBYTEENABLE,
  output [31:0] CFGEXTWRITEDATA,
  output CFGEXTWRITERECEIVED,
  output [11:0] CFGFCCPLD,
  output [7:0] CFGFCCPLH,
  output [11:0] CFGFCNPD,
  output [7:0] CFGFCNPH,
  output [11:0] CFGFCPD,
  output [7:0] CFGFCPH,
  output [3:0] CFGFLRINPROCESS,
  output [11:0] CFGFUNCTIONPOWERSTATE,
  output [15:0] CFGFUNCTIONSTATUS,
  output CFGHOTRESETOUT,
  output [31:0] CFGINTERRUPTMSIDATA,
  output [3:0] CFGINTERRUPTMSIENABLE,
  output CFGINTERRUPTMSIFAIL,
  output CFGINTERRUPTMSIMASKUPDATE,
  output [11:0] CFGINTERRUPTMSIMMENABLE,
  output CFGINTERRUPTMSISENT,
  output [7:0] CFGINTERRUPTMSIVFENABLE,
  output [3:0] CFGINTERRUPTMSIXENABLE,
  output CFGINTERRUPTMSIXFAIL,
  output [3:0] CFGINTERRUPTMSIXMASK,
  output CFGINTERRUPTMSIXSENT,
  output [7:0] CFGINTERRUPTMSIXVFENABLE,
  output [7:0] CFGINTERRUPTMSIXVFMASK,
  output CFGINTERRUPTSENT,
  output [1:0] CFGLINKPOWERSTATE,
  output CFGLOCALERROR,
  output CFGLTRENABLE,
  output [5:0] CFGLTSSMSTATE,
  output [2:0] CFGMAXPAYLOAD,
  output [2:0] CFGMAXREADREQ,
  output [31:0] CFGMGMTREADDATA,
  output CFGMGMTREADWRITEDONE,
  output CFGMSGRECEIVED,
  output [7:0] CFGMSGRECEIVEDDATA,
  output [4:0] CFGMSGRECEIVEDTYPE,
  output CFGMSGTRANSMITDONE,
  output [3:0] CFGNEGOTIATEDWIDTH,
  output [1:0] CFGOBFFENABLE,
  output [15:0] CFGPERFUNCSTATUSDATA,
  output CFGPERFUNCTIONUPDATEDONE,
  output CFGPHYLINKDOWN,
  output [1:0] CFGPHYLINKSTATUS,
  output CFGPLSTATUSCHANGE,
  output CFGPOWERSTATECHANGEINTERRUPT,
  output [3:0] CFGRCBSTATUS,
  output [3:0] CFGTPHFUNCTIONNUM,
  output [3:0] CFGTPHREQUESTERENABLE,
  output [11:0] CFGTPHSTMODE,
  output [4:0] CFGTPHSTTADDRESS,
  output CFGTPHSTTREADENABLE,
  output [3:0] CFGTPHSTTWRITEBYTEVALID,
  output [31:0] CFGTPHSTTWRITEDATA,
  output CFGTPHSTTWRITEENABLE,
  output [7:0] CFGVFFLRINPROCESS,
  output [23:0] CFGVFPOWERSTATE,
  output [15:0] CFGVFSTATUS,
  output [7:0] CFGVFTPHREQUESTERENABLE,
  output [23:0] CFGVFTPHSTMODE,
  output CONFMCAPDESIGNSWITCH,
  output CONFMCAPEOS,
  output CONFMCAPINUSEBYPCIE,
  output CONFREQREADY,
  output [31:0] CONFRESPRDATA,
  output CONFRESPVALID,
  output [15:0] DBGDATAOUT,
  output DBGMCAPCSB,
  output [31:0] DBGMCAPDATA,
  output DBGMCAPEOS,
  output DBGMCAPERROR,
  output DBGMCAPMODE,
  output DBGMCAPRDATAVALID,
  output DBGMCAPRDWRB,
  output DBGMCAPRESET,
  output DBGPLDATABLOCKRECEIVEDAFTEREDS,
  output DBGPLGEN3FRAMINGERRORDETECTED,
  output DBGPLGEN3SYNCHEADERERRORDETECTED,
  output [7:0] DBGPLINFERREDRXELECTRICALIDLE,
  output [15:0] DRPDO,
  output DRPRDY,
  output LL2LMMASTERTLPSENT0,
  output LL2LMMASTERTLPSENT1,
  output [3:0] LL2LMMASTERTLPSENTTLPID0,
  output [3:0] LL2LMMASTERTLPSENTTLPID1,
  output [255:0] LL2LMMAXISRXTDATA,
  output [17:0] LL2LMMAXISRXTUSER,
  output [7:0] LL2LMMAXISRXTVALID,
  output [7:0] LL2LMSAXISTXTREADY,
  output [255:0] MAXISCQTDATA,
  output [7:0] MAXISCQTKEEP,
  output MAXISCQTLAST,
  output [84:0] MAXISCQTUSER,
  output MAXISCQTVALID,
  output [255:0] MAXISRCTDATA,
  output [7:0] MAXISRCTKEEP,
  output MAXISRCTLAST,
  output [74:0] MAXISRCTUSER,
  output MAXISRCTVALID,
  output [9:0] MICOMPLETIONRAMREADADDRESSAL,
  output [9:0] MICOMPLETIONRAMREADADDRESSAU,
  output [9:0] MICOMPLETIONRAMREADADDRESSBL,
  output [9:0] MICOMPLETIONRAMREADADDRESSBU,
  output [3:0] MICOMPLETIONRAMREADENABLEL,
  output [3:0] MICOMPLETIONRAMREADENABLEU,
  output [9:0] MICOMPLETIONRAMWRITEADDRESSAL,
  output [9:0] MICOMPLETIONRAMWRITEADDRESSAU,
  output [9:0] MICOMPLETIONRAMWRITEADDRESSBL,
  output [9:0] MICOMPLETIONRAMWRITEADDRESSBU,
  output [71:0] MICOMPLETIONRAMWRITEDATAL,
  output [71:0] MICOMPLETIONRAMWRITEDATAU,
  output [3:0] MICOMPLETIONRAMWRITEENABLEL,
  output [3:0] MICOMPLETIONRAMWRITEENABLEU,
  output [8:0] MIREPLAYRAMADDRESS,
  output [1:0] MIREPLAYRAMREADENABLE,
  output [143:0] MIREPLAYRAMWRITEDATA,
  output [1:0] MIREPLAYRAMWRITEENABLE,
  output [8:0] MIREQUESTRAMREADADDRESSA,
  output [8:0] MIREQUESTRAMREADADDRESSB,
  output [3:0] MIREQUESTRAMREADENABLE,
  output [8:0] MIREQUESTRAMWRITEADDRESSA,
  output [8:0] MIREQUESTRAMWRITEADDRESSB,
  output [143:0] MIREQUESTRAMWRITEDATA,
  output [3:0] MIREQUESTRAMWRITEENABLE,
  output [5:0] PCIECQNPREQCOUNT,
  output PCIEPERST0B,
  output PCIEPERST1B,
  output [3:0] PCIERQSEQNUM,
  output PCIERQSEQNUMVLD,
  output [5:0] PCIERQTAG,
  output [1:0] PCIERQTAGAV,
  output PCIERQTAGVLD,
  output [1:0] PCIETFCNPDAV,
  output [1:0] PCIETFCNPHAV,
  output [1:0] PIPERX0EQCONTROL,
  output [5:0] PIPERX0EQLPLFFS,
  output [3:0] PIPERX0EQLPTXPRESET,
  output [2:0] PIPERX0EQPRESET,
  output PIPERX0POLARITY,
  output [1:0] PIPERX1EQCONTROL,
  output [5:0] PIPERX1EQLPLFFS,
  output [3:0] PIPERX1EQLPTXPRESET,
  output [2:0] PIPERX1EQPRESET,
  output PIPERX1POLARITY,
  output [1:0] PIPERX2EQCONTROL,
  output [5:0] PIPERX2EQLPLFFS,
  output [3:0] PIPERX2EQLPTXPRESET,
  output [2:0] PIPERX2EQPRESET,
  output PIPERX2POLARITY,
  output [1:0] PIPERX3EQCONTROL,
  output [5:0] PIPERX3EQLPLFFS,
  output [3:0] PIPERX3EQLPTXPRESET,
  output [2:0] PIPERX3EQPRESET,
  output PIPERX3POLARITY,
  output [1:0] PIPERX4EQCONTROL,
  output [5:0] PIPERX4EQLPLFFS,
  output [3:0] PIPERX4EQLPTXPRESET,
  output [2:0] PIPERX4EQPRESET,
  output PIPERX4POLARITY,
  output [1:0] PIPERX5EQCONTROL,
  output [5:0] PIPERX5EQLPLFFS,
  output [3:0] PIPERX5EQLPTXPRESET,
  output [2:0] PIPERX5EQPRESET,
  output PIPERX5POLARITY,
  output [1:0] PIPERX6EQCONTROL,
  output [5:0] PIPERX6EQLPLFFS,
  output [3:0] PIPERX6EQLPTXPRESET,
  output [2:0] PIPERX6EQPRESET,
  output PIPERX6POLARITY,
  output [1:0] PIPERX7EQCONTROL,
  output [5:0] PIPERX7EQLPLFFS,
  output [3:0] PIPERX7EQLPTXPRESET,
  output [2:0] PIPERX7EQPRESET,
  output PIPERX7POLARITY,
  output [1:0] PIPETX0CHARISK,
  output PIPETX0COMPLIANCE,
  output [31:0] PIPETX0DATA,
  output PIPETX0DATAVALID,
  output PIPETX0DEEMPH,
  output PIPETX0ELECIDLE,
  output [1:0] PIPETX0EQCONTROL,
  output [5:0] PIPETX0EQDEEMPH,
  output [3:0] PIPETX0EQPRESET,
  output [2:0] PIPETX0MARGIN,
  output [1:0] PIPETX0POWERDOWN,
  output [1:0] PIPETX0RATE,
  output PIPETX0RCVRDET,
  output PIPETX0RESET,
  output PIPETX0STARTBLOCK,
  output PIPETX0SWING,
  output [1:0] PIPETX0SYNCHEADER,
  output [1:0] PIPETX1CHARISK,
  output PIPETX1COMPLIANCE,
  output [31:0] PIPETX1DATA,
  output PIPETX1DATAVALID,
  output PIPETX1DEEMPH,
  output PIPETX1ELECIDLE,
  output [1:0] PIPETX1EQCONTROL,
  output [5:0] PIPETX1EQDEEMPH,
  output [3:0] PIPETX1EQPRESET,
  output [2:0] PIPETX1MARGIN,
  output [1:0] PIPETX1POWERDOWN,
  output [1:0] PIPETX1RATE,
  output PIPETX1RCVRDET,
  output PIPETX1RESET,
  output PIPETX1STARTBLOCK,
  output PIPETX1SWING,
  output [1:0] PIPETX1SYNCHEADER,
  output [1:0] PIPETX2CHARISK,
  output PIPETX2COMPLIANCE,
  output [31:0] PIPETX2DATA,
  output PIPETX2DATAVALID,
  output PIPETX2DEEMPH,
  output PIPETX2ELECIDLE,
  output [1:0] PIPETX2EQCONTROL,
  output [5:0] PIPETX2EQDEEMPH,
  output [3:0] PIPETX2EQPRESET,
  output [2:0] PIPETX2MARGIN,
  output [1:0] PIPETX2POWERDOWN,
  output [1:0] PIPETX2RATE,
  output PIPETX2RCVRDET,
  output PIPETX2RESET,
  output PIPETX2STARTBLOCK,
  output PIPETX2SWING,
  output [1:0] PIPETX2SYNCHEADER,
  output [1:0] PIPETX3CHARISK,
  output PIPETX3COMPLIANCE,
  output [31:0] PIPETX3DATA,
  output PIPETX3DATAVALID,
  output PIPETX3DEEMPH,
  output PIPETX3ELECIDLE,
  output [1:0] PIPETX3EQCONTROL,
  output [5:0] PIPETX3EQDEEMPH,
  output [3:0] PIPETX3EQPRESET,
  output [2:0] PIPETX3MARGIN,
  output [1:0] PIPETX3POWERDOWN,
  output [1:0] PIPETX3RATE,
  output PIPETX3RCVRDET,
  output PIPETX3RESET,
  output PIPETX3STARTBLOCK,
  output PIPETX3SWING,
  output [1:0] PIPETX3SYNCHEADER,
  output [1:0] PIPETX4CHARISK,
  output PIPETX4COMPLIANCE,
  output [31:0] PIPETX4DATA,
  output PIPETX4DATAVALID,
  output PIPETX4DEEMPH,
  output PIPETX4ELECIDLE,
  output [1:0] PIPETX4EQCONTROL,
  output [5:0] PIPETX4EQDEEMPH,
  output [3:0] PIPETX4EQPRESET,
  output [2:0] PIPETX4MARGIN,
  output [1:0] PIPETX4POWERDOWN,
  output [1:0] PIPETX4RATE,
  output PIPETX4RCVRDET,
  output PIPETX4RESET,
  output PIPETX4STARTBLOCK,
  output PIPETX4SWING,
  output [1:0] PIPETX4SYNCHEADER,
  output [1:0] PIPETX5CHARISK,
  output PIPETX5COMPLIANCE,
  output [31:0] PIPETX5DATA,
  output PIPETX5DATAVALID,
  output PIPETX5DEEMPH,
  output PIPETX5ELECIDLE,
  output [1:0] PIPETX5EQCONTROL,
  output [5:0] PIPETX5EQDEEMPH,
  output [3:0] PIPETX5EQPRESET,
  output [2:0] PIPETX5MARGIN,
  output [1:0] PIPETX5POWERDOWN,
  output [1:0] PIPETX5RATE,
  output PIPETX5RCVRDET,
  output PIPETX5RESET,
  output PIPETX5STARTBLOCK,
  output PIPETX5SWING,
  output [1:0] PIPETX5SYNCHEADER,
  output [1:0] PIPETX6CHARISK,
  output PIPETX6COMPLIANCE,
  output [31:0] PIPETX6DATA,
  output PIPETX6DATAVALID,
  output PIPETX6DEEMPH,
  output PIPETX6ELECIDLE,
  output [1:0] PIPETX6EQCONTROL,
  output [5:0] PIPETX6EQDEEMPH,
  output [3:0] PIPETX6EQPRESET,
  output [2:0] PIPETX6MARGIN,
  output [1:0] PIPETX6POWERDOWN,
  output [1:0] PIPETX6RATE,
  output PIPETX6RCVRDET,
  output PIPETX6RESET,
  output PIPETX6STARTBLOCK,
  output PIPETX6SWING,
  output [1:0] PIPETX6SYNCHEADER,
  output [1:0] PIPETX7CHARISK,
  output PIPETX7COMPLIANCE,
  output [31:0] PIPETX7DATA,
  output PIPETX7DATAVALID,
  output PIPETX7DEEMPH,
  output PIPETX7ELECIDLE,
  output [1:0] PIPETX7EQCONTROL,
  output [5:0] PIPETX7EQDEEMPH,
  output [3:0] PIPETX7EQPRESET,
  output [2:0] PIPETX7MARGIN,
  output [1:0] PIPETX7POWERDOWN,
  output [1:0] PIPETX7RATE,
  output PIPETX7RCVRDET,
  output PIPETX7RESET,
  output PIPETX7STARTBLOCK,
  output PIPETX7SWING,
  output [1:0] PIPETX7SYNCHEADER,
  output PLEQINPROGRESS,
  output [1:0] PLEQPHASE,
  output [3:0] SAXISCCTREADY,
  output [3:0] SAXISRQTREADY,
  output [31:0] SPAREOUT,

  input CFGCONFIGSPACEENABLE,
  input [15:0] CFGDEVID,
  input [7:0] CFGDSBUSNUMBER,
  input [4:0] CFGDSDEVICENUMBER,
  input [2:0] CFGDSFUNCTIONNUMBER,
  input [63:0] CFGDSN,
  input [7:0] CFGDSPORTNUMBER,
  input CFGERRCORIN,
  input CFGERRUNCORIN,
  input [31:0] CFGEXTREADDATA,
  input CFGEXTREADDATAVALID,
  input [2:0] CFGFCSEL,
  input [3:0] CFGFLRDONE,
  input CFGHOTRESETIN,
  input [3:0] CFGINTERRUPTINT,
  input [2:0] CFGINTERRUPTMSIATTR,
  input [3:0] CFGINTERRUPTMSIFUNCTIONNUMBER,
  input [31:0] CFGINTERRUPTMSIINT,
  input [31:0] CFGINTERRUPTMSIPENDINGSTATUS,
  input CFGINTERRUPTMSIPENDINGSTATUSDATAENABLE,
  input [3:0] CFGINTERRUPTMSIPENDINGSTATUSFUNCTIONNUM,
  input [3:0] CFGINTERRUPTMSISELECT,
  input CFGINTERRUPTMSITPHPRESENT,
  input [8:0] CFGINTERRUPTMSITPHSTTAG,
  input [1:0] CFGINTERRUPTMSITPHTYPE,
  input [63:0] CFGINTERRUPTMSIXADDRESS,
  input [31:0] CFGINTERRUPTMSIXDATA,
  input CFGINTERRUPTMSIXINT,
  input [3:0] CFGINTERRUPTPENDING,
  input CFGLINKTRAININGENABLE,
  input [18:0] CFGMGMTADDR,
  input [3:0] CFGMGMTBYTEENABLE,
  input CFGMGMTREAD,
  input CFGMGMTTYPE1CFGREGACCESS,
  input CFGMGMTWRITE,
  input [31:0] CFGMGMTWRITEDATA,
  input CFGMSGTRANSMIT,
  input [31:0] CFGMSGTRANSMITDATA,
  input [2:0] CFGMSGTRANSMITTYPE,
  input [2:0] CFGPERFUNCSTATUSCONTROL,
  input [3:0] CFGPERFUNCTIONNUMBER,
  input CFGPERFUNCTIONOUTPUTREQUEST,
  input CFGPOWERSTATECHANGEACK,
  input CFGREQPMTRANSITIONL23READY,
  input [7:0] CFGREVID,
  input [15:0] CFGSUBSYSID,
  input [15:0] CFGSUBSYSVENDID,
  input [31:0] CFGTPHSTTREADDATA,
  input CFGTPHSTTREADDATAVALID,
  input [15:0] CFGVENDID,
  input [7:0] CFGVFFLRDONE,
  input CONFMCAPREQUESTBYCONF,
  input [31:0] CONFREQDATA,
  input [3:0] CONFREQREGNUM,
  input [1:0] CONFREQTYPE,
  input CONFREQVALID,
  input CORECLK,
  input CORECLKMICOMPLETIONRAML,
  input CORECLKMICOMPLETIONRAMU,
  input CORECLKMIREPLAYRAM,
  input CORECLKMIREQUESTRAM,
  input DBGCFGLOCALMGMTREGOVERRIDE,
  input [3:0] DBGDATASEL,
  input [9:0] DRPADDR,
  input DRPCLK,
  input [15:0] DRPDI,
  input DRPEN,
  input DRPWE,
  input [13:0] LL2LMSAXISTXTUSER,
  input LL2LMSAXISTXTVALID,
  input [3:0] LL2LMTXTLPID0,
  input [3:0] LL2LMTXTLPID1,
  input [21:0] MAXISCQTREADY,
  input [21:0] MAXISRCTREADY,
  input MCAPCLK,
  input MCAPPERST0B,
  input MCAPPERST1B,
  input MGMTRESETN,
  input MGMTSTICKYRESETN,
  input [143:0] MICOMPLETIONRAMREADDATA,
  input [143:0] MIREPLAYRAMREADDATA,
  input [143:0] MIREQUESTRAMREADDATA,
  input PCIECQNPREQ,
  input PIPECLK,
  input [5:0] PIPEEQFS,
  input [5:0] PIPEEQLF,
  input PIPERESETN,
  input [1:0] PIPERX0CHARISK,
  input [31:0] PIPERX0DATA,
  input PIPERX0DATAVALID,
  input PIPERX0ELECIDLE,
  input PIPERX0EQDONE,
  input PIPERX0EQLPADAPTDONE,
  input PIPERX0EQLPLFFSSEL,
  input [17:0] PIPERX0EQLPNEWTXCOEFFORPRESET,
  input PIPERX0PHYSTATUS,
  input PIPERX0STARTBLOCK,
  input [2:0] PIPERX0STATUS,
  input [1:0] PIPERX0SYNCHEADER,
  input PIPERX0VALID,
  input [1:0] PIPERX1CHARISK,
  input [31:0] PIPERX1DATA,
  input PIPERX1DATAVALID,
  input PIPERX1ELECIDLE,
  input PIPERX1EQDONE,
  input PIPERX1EQLPADAPTDONE,
  input PIPERX1EQLPLFFSSEL,
  input [17:0] PIPERX1EQLPNEWTXCOEFFORPRESET,
  input PIPERX1PHYSTATUS,
  input PIPERX1STARTBLOCK,
  input [2:0] PIPERX1STATUS,
  input [1:0] PIPERX1SYNCHEADER,
  input PIPERX1VALID,
  input [1:0] PIPERX2CHARISK,
  input [31:0] PIPERX2DATA,
  input PIPERX2DATAVALID,
  input PIPERX2ELECIDLE,
  input PIPERX2EQDONE,
  input PIPERX2EQLPADAPTDONE,
  input PIPERX2EQLPLFFSSEL,
  input [17:0] PIPERX2EQLPNEWTXCOEFFORPRESET,
  input PIPERX2PHYSTATUS,
  input PIPERX2STARTBLOCK,
  input [2:0] PIPERX2STATUS,
  input [1:0] PIPERX2SYNCHEADER,
  input PIPERX2VALID,
  input [1:0] PIPERX3CHARISK,
  input [31:0] PIPERX3DATA,
  input PIPERX3DATAVALID,
  input PIPERX3ELECIDLE,
  input PIPERX3EQDONE,
  input PIPERX3EQLPADAPTDONE,
  input PIPERX3EQLPLFFSSEL,
  input [17:0] PIPERX3EQLPNEWTXCOEFFORPRESET,
  input PIPERX3PHYSTATUS,
  input PIPERX3STARTBLOCK,
  input [2:0] PIPERX3STATUS,
  input [1:0] PIPERX3SYNCHEADER,
  input PIPERX3VALID,
  input [1:0] PIPERX4CHARISK,
  input [31:0] PIPERX4DATA,
  input PIPERX4DATAVALID,
  input PIPERX4ELECIDLE,
  input PIPERX4EQDONE,
  input PIPERX4EQLPADAPTDONE,
  input PIPERX4EQLPLFFSSEL,
  input [17:0] PIPERX4EQLPNEWTXCOEFFORPRESET,
  input PIPERX4PHYSTATUS,
  input PIPERX4STARTBLOCK,
  input [2:0] PIPERX4STATUS,
  input [1:0] PIPERX4SYNCHEADER,
  input PIPERX4VALID,
  input [1:0] PIPERX5CHARISK,
  input [31:0] PIPERX5DATA,
  input PIPERX5DATAVALID,
  input PIPERX5ELECIDLE,
  input PIPERX5EQDONE,
  input PIPERX5EQLPADAPTDONE,
  input PIPERX5EQLPLFFSSEL,
  input [17:0] PIPERX5EQLPNEWTXCOEFFORPRESET,
  input PIPERX5PHYSTATUS,
  input PIPERX5STARTBLOCK,
  input [2:0] PIPERX5STATUS,
  input [1:0] PIPERX5SYNCHEADER,
  input PIPERX5VALID,
  input [1:0] PIPERX6CHARISK,
  input [31:0] PIPERX6DATA,
  input PIPERX6DATAVALID,
  input PIPERX6ELECIDLE,
  input PIPERX6EQDONE,
  input PIPERX6EQLPADAPTDONE,
  input PIPERX6EQLPLFFSSEL,
  input [17:0] PIPERX6EQLPNEWTXCOEFFORPRESET,
  input PIPERX6PHYSTATUS,
  input PIPERX6STARTBLOCK,
  input [2:0] PIPERX6STATUS,
  input [1:0] PIPERX6SYNCHEADER,
  input PIPERX6VALID,
  input [1:0] PIPERX7CHARISK,
  input [31:0] PIPERX7DATA,
  input PIPERX7DATAVALID,
  input PIPERX7ELECIDLE,
  input PIPERX7EQDONE,
  input PIPERX7EQLPADAPTDONE,
  input PIPERX7EQLPLFFSSEL,
  input [17:0] PIPERX7EQLPNEWTXCOEFFORPRESET,
  input PIPERX7PHYSTATUS,
  input PIPERX7STARTBLOCK,
  input [2:0] PIPERX7STATUS,
  input [1:0] PIPERX7SYNCHEADER,
  input PIPERX7VALID,
  input [17:0] PIPETX0EQCOEFF,
  input PIPETX0EQDONE,
  input [17:0] PIPETX1EQCOEFF,
  input PIPETX1EQDONE,
  input [17:0] PIPETX2EQCOEFF,
  input PIPETX2EQDONE,
  input [17:0] PIPETX3EQCOEFF,
  input PIPETX3EQDONE,
  input [17:0] PIPETX4EQCOEFF,
  input PIPETX4EQDONE,
  input [17:0] PIPETX5EQCOEFF,
  input PIPETX5EQDONE,
  input [17:0] PIPETX6EQCOEFF,
  input PIPETX6EQDONE,
  input [17:0] PIPETX7EQCOEFF,
  input PIPETX7EQDONE,
  input PLEQRESETEIEOSCOUNT,
  input PLGEN2UPSTREAMPREFERDEEMPH,
  input RESETN,
  input [255:0] SAXISCCTDATA,
  input [7:0] SAXISCCTKEEP,
  input SAXISCCTLAST,
  input [32:0] SAXISCCTUSER,
  input SAXISCCTVALID,
  input [255:0] SAXISRQTDATA,
  input [7:0] SAXISRQTKEEP,
  input SAXISRQTLAST,
  input [59:0] SAXISRQTUSER,
  input SAXISRQTVALID,
  input [31:0] SPAREIN,
  input USERCLK
);
endmodule


module PHASER_IN #(
  parameter integer CLKOUT_DIV = 4,
  parameter DQS_BIAS_MODE = "FALSE",
  parameter EN_ISERDES_RST = "FALSE",
  parameter integer FINE_DELAY = 0,
  parameter FREQ_REF_DIV = "NONE",
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real MEMREFCLK_PERIOD = 0.000,
  parameter OUTPUT_CLK_SRC = "PHASE_REF",
  parameter real PHASEREFCLK_PERIOD = 0.000,
  parameter real REFCLK_PERIOD = 0.000,
  parameter integer SEL_CLK_OFFSET = 5,
  parameter SYNC_IN_DIV_RST = "FALSE"
) (
  output [5:0] COUNTERREADVAL,
  output FINEOVERFLOW,
  output ICLK,
  output ICLKDIV,
  output ISERDESRST,
  output RCLK,

  input COUNTERLOADEN,
  input [5:0] COUNTERLOADVAL,
  input COUNTERREADEN,
  input DIVIDERST,
  input EDGEADV,
  input FINEENABLE,
  input FINEINC,
  input FREQREFCLK,
  input MEMREFCLK,
  input PHASEREFCLK,
  input [1:0] RANKSEL,
  input RST,
  input SYNCIN,
  input SYSCLK
);
endmodule // PHASER_IN


module PHASER_IN_PHY #(
  parameter BURST_MODE = "FALSE",
  parameter integer CLKOUT_DIV = 4,
  parameter [0:0] DQS_AUTO_RECAL = 1'b1,
  parameter DQS_BIAS_MODE = "FALSE",
  parameter [2:0] DQS_FIND_PATTERN = 3'b001,
  parameter integer FINE_DELAY = 0,
  parameter FREQ_REF_DIV = "NONE",
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real MEMREFCLK_PERIOD = 0.000,
  parameter OUTPUT_CLK_SRC = "PHASE_REF",
  parameter real PHASEREFCLK_PERIOD = 0.000,
  parameter real REFCLK_PERIOD = 0.000,
  parameter integer SEL_CLK_OFFSET = 5,
  parameter SYNC_IN_DIV_RST = "FALSE",
  parameter WR_CYCLES = "FALSE"
) (
  output [5:0] COUNTERREADVAL,
  output DQSFOUND,
  output DQSOUTOFRANGE,
  output FINEOVERFLOW,
  output ICLK,
  output ICLKDIV,
  output ISERDESRST,
  output PHASELOCKED,
  output RCLK,
  output WRENABLE,

  input BURSTPENDINGPHY,
  input COUNTERLOADEN,
  input [5:0] COUNTERLOADVAL,
  input COUNTERREADEN,
  input [1:0] ENCALIBPHY,
  input FINEENABLE,
  input FINEINC,
  input FREQREFCLK,
  input MEMREFCLK,
  input PHASEREFCLK,
  input [1:0] RANKSELPHY,
  input RST,
  input RSTDQSFIND,
  input SYNCIN,
  input SYSCLK
);
endmodule // PHASER_IN_PHY


module PHASER_OUT (
  COARSEOVERFLOW,
  COUNTERREADVAL,
  FINEOVERFLOW,
  OCLK,
  OCLKDELAYED,
  OCLKDIV,
  OSERDESRST,

  COARSEENABLE,
  COARSEINC,
  COUNTERLOADEN,
  COUNTERLOADVAL,
  COUNTERREADEN,
  DIVIDERST,
  EDGEADV,
  FINEENABLE,
  FINEINC,
  FREQREFCLK,
  MEMREFCLK,
  PHASEREFCLK,
  RST,
  SELFINEOCLKDELAY,
  SYNCIN,
  SYSCLK
);
  parameter LOC = "UNPLACED";
  parameter integer CLKOUT_DIV = 4;
  parameter COARSE_BYPASS = "FALSE";
  parameter integer COARSE_DELAY = 0;
  parameter EN_OSERDES_RST = "FALSE";
  parameter integer FINE_DELAY = 0;
  parameter [0:0] IS_RST_INVERTED = 1'b0;
  parameter real MEMREFCLK_PERIOD = 0.000;
  parameter OCLKDELAY_INV = "FALSE";
  parameter integer OCLK_DELAY = 0;
  parameter OUTPUT_CLK_SRC = "PHASE_REF";
  parameter real PHASEREFCLK_PERIOD = 0.000;
  parameter [2:0] PO = 3'b000;
  parameter real REFCLK_PERIOD = 0.000;
  parameter SYNC_IN_DIV_RST = "FALSE";
  output COARSEOVERFLOW;
  output FINEOVERFLOW;
  output OCLK;
  output OCLKDELAYED;
  output OCLKDIV;
  output OSERDESRST;
  output [8:0] COUNTERREADVAL;
  input COARSEENABLE;
  input COARSEINC;
  input COUNTERLOADEN;
  input COUNTERREADEN;
  input DIVIDERST;
  input EDGEADV;
  input FINEENABLE;
  input FINEINC;
  input FREQREFCLK;
  input MEMREFCLK;
  input PHASEREFCLK;
  input RST;
  input SELFINEOCLKDELAY;
  input SYNCIN;
  input SYSCLK;
  input [8:0] COUNTERLOADVAL;
endmodule // PHASER_OUT


module PHASER_OUT_PHY (
  COARSEOVERFLOW,
  COUNTERREADVAL,
  CTSBUS,
  DQSBUS,
  DTSBUS,
  FINEOVERFLOW,
  OCLK,
  OCLKDELAYED,
  OCLKDIV,
  OSERDESRST,
  RDENABLE,

  BURSTPENDINGPHY,
  COARSEENABLE,
  COARSEINC,
  COUNTERLOADEN,
  COUNTERLOADVAL,
  COUNTERREADEN,
  ENCALIBPHY,
  FINEENABLE,
  FINEINC,
  FREQREFCLK,
  MEMREFCLK,
  PHASEREFCLK,
  RST,
  SELFINEOCLKDELAY,
  SYNCIN,
  SYSCLK
);
  parameter LOC = "UNPLACED";
  parameter integer CLKOUT_DIV = 4;
  parameter COARSE_BYPASS = "FALSE";
  parameter integer COARSE_DELAY = 0;
  parameter DATA_CTL_N = "FALSE";
  parameter DATA_RD_CYCLES = "FALSE";
  parameter integer FINE_DELAY = 0;
  parameter [0:0] IS_RST_INVERTED = 1'b0;
  parameter real MEMREFCLK_PERIOD = 0.000;
  parameter OCLKDELAY_INV = "FALSE";
  parameter integer OCLK_DELAY = 0;
  parameter OUTPUT_CLK_SRC = "PHASE_REF";
  parameter real PHASEREFCLK_PERIOD = 0.000;
  parameter [2:0] PO = 3'b000;
  parameter real REFCLK_PERIOD = 0.000;
  parameter SYNC_IN_DIV_RST = "FALSE";
  output COARSEOVERFLOW;
  output FINEOVERFLOW;
  output OCLK;
  output OCLKDELAYED;
  output OCLKDIV;
  output OSERDESRST;
  output RDENABLE;
  output [1:0] CTSBUS;
  output [1:0] DQSBUS;
  output [1:0] DTSBUS;
  output [8:0] COUNTERREADVAL;
  input BURSTPENDINGPHY;
  input COARSEENABLE;
  input COARSEINC;
  input COUNTERLOADEN;
  input COUNTERREADEN;
  input FINEENABLE;
  input FINEINC;
  input FREQREFCLK;
  input MEMREFCLK;
  input PHASEREFCLK;
  input RST;
  input SELFINEOCLKDELAY;
  input SYNCIN;
  input SYSCLK;
  input [1:0] ENCALIBPHY;
  input [8:0] COUNTERLOADVAL;
endmodule // PHASER_OUT_PHY


module PHASER_REF (
  LOCKED,

  CLKIN,
  PWRDWN,
  RST
);
  parameter LOC = "UNPLACED";
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0;
  parameter [0:0] IS_RST_INVERTED = 1'b0;
  output LOCKED;
  input CLKIN;
  input PWRDWN;
  input RST;
endmodule // PHASER_REF


module PHY_CONTROL (
  AUXOUTPUT,
  INBURSTPENDING,
  INRANKA,
  INRANKB,
  INRANKC,
  INRANKD,
  OUTBURSTPENDING,
  PCENABLECALIB,
  PHYCTLALMOSTFULL,
  PHYCTLEMPTY,
  PHYCTLFULL,
  PHYCTLREADY,

  MEMREFCLK,
  PHYCLK,
  PHYCTLMSTREMPTY,
  PHYCTLWD,
  PHYCTLWRENABLE,
  PLLLOCK,
  READCALIBENABLE,
  REFDLLLOCK,
  RESET,
  SYNCIN,
  WRITECALIBENABLE
);
  parameter LOC = "UNPLACED";
  parameter integer AO_TOGGLE = 0;
  parameter [3:0] AO_WRLVL_EN = 4'b0000;
  parameter BURST_MODE = "FALSE";
  parameter integer CLK_RATIO = 1;
  parameter integer CMD_OFFSET = 0;
  parameter integer CO_DURATION = 0;
  parameter DATA_CTL_A_N = "FALSE";
  parameter DATA_CTL_B_N = "FALSE";
  parameter DATA_CTL_C_N = "FALSE";
  parameter DATA_CTL_D_N = "FALSE";
  parameter DISABLE_SEQ_MATCH = "TRUE";
  parameter integer DI_DURATION = 0;
  parameter integer DO_DURATION = 0;
  parameter integer EVENTS_DELAY = 63;
  parameter integer FOUR_WINDOW_CLOCKS = 63;
  parameter MULTI_REGION = "FALSE";
  parameter PHY_COUNT_ENABLE = "FALSE";
  parameter integer RD_CMD_OFFSET_0 = 0;
  parameter integer RD_CMD_OFFSET_1 = 00;
  parameter integer RD_CMD_OFFSET_2 = 0;
  parameter integer RD_CMD_OFFSET_3 = 0;
  parameter integer RD_DURATION_0 = 0;
  parameter integer RD_DURATION_1 = 0;
  parameter integer RD_DURATION_2 = 0;
  parameter integer RD_DURATION_3 = 0;
  parameter SYNC_MODE = "FALSE";
  parameter integer WR_CMD_OFFSET_0 = 0;
  parameter integer WR_CMD_OFFSET_1 = 0;
  parameter integer WR_CMD_OFFSET_2 = 0;
  parameter integer WR_CMD_OFFSET_3 = 0;
  parameter integer WR_DURATION_0 = 0;
  parameter integer WR_DURATION_1 = 0;
  parameter integer WR_DURATION_2 = 0;
  parameter integer WR_DURATION_3 = 0;
  output PHYCTLALMOSTFULL;
  output PHYCTLEMPTY;
  output PHYCTLFULL;
  output PHYCTLREADY;
  output [1:0] INRANKA;
  output [1:0] INRANKB;
  output [1:0] INRANKC;
  output [1:0] INRANKD;
  output [1:0] PCENABLECALIB;
  output [3:0] AUXOUTPUT;
  output [3:0] INBURSTPENDING;
  output [3:0] OUTBURSTPENDING;
  input MEMREFCLK;
  input PHYCLK;
  input PHYCTLMSTREMPTY;
  input PHYCTLWRENABLE;
  input PLLLOCK;
  input READCALIBENABLE;
  input REFDLLLOCK;
  input RESET;
  input SYNCIN;
  input WRITECALIBENABLE;
  input [31:0] PHYCTLWD;
endmodule // PHY_CONTROL


module PLLE2_ADV #(
  parameter BANDWIDTH = "OPTIMIZED",
  parameter integer CLKFBOUT_MULT = 5,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN1_PERIOD = 0.000,
  parameter real CLKIN2_PERIOD = 0.000,
  parameter integer CLKOUT0_DIVIDE = 1,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter integer CLKOUT2_DIVIDE = 1,
  parameter real CLKOUT2_DUTY_CYCLE = 0.500,
  parameter real CLKOUT2_PHASE = 0.000,
  parameter integer CLKOUT3_DIVIDE = 1,
  parameter real CLKOUT3_DUTY_CYCLE = 0.500,
  parameter real CLKOUT3_PHASE = 0.000,
  parameter integer CLKOUT4_DIVIDE = 1,
  parameter real CLKOUT4_DUTY_CYCLE = 0.500,
  parameter real CLKOUT4_PHASE = 0.000,
  parameter integer CLKOUT5_DIVIDE = 1,
  parameter real CLKOUT5_DUTY_CYCLE = 0.500,
  parameter real CLKOUT5_PHASE = 0.000,
  parameter COMPENSATION = "ZHOLD",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKINSEL_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER1 = 0.010,
  parameter real REF_JITTER2 = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKOUT0,
  output CLKOUT1,
  output CLKOUT2,
  output CLKOUT3,
  output CLKOUT4,
  output CLKOUT5,
  output [15:0] DO,
  output DRDY,
  output LOCKED,

  input CLKFBIN,
  input CLKIN1,
  input CLKIN2,
  input CLKINSEL,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PWRDWN,
  input RST
);
endmodule


module PLLE2_BASE (
  CLKFBOUT,
  CLKOUT0,
  CLKOUT1,
  CLKOUT2,
  CLKOUT3,
  CLKOUT4,
  CLKOUT5,
  LOCKED,
  CLKFBIN,
  CLKIN1,
  PWRDWN,
  RST
);
  parameter BANDWIDTH = "OPTIMIZED";
  parameter integer CLKFBOUT_MULT = 5;
  parameter real CLKFBOUT_PHASE = 0.000;
  parameter real CLKIN1_PERIOD = 0.000;
  parameter integer CLKOUT0_DIVIDE = 1;
  parameter real CLKOUT0_DUTY_CYCLE = 0.500;
  parameter real CLKOUT0_PHASE = 0.000;
  parameter integer CLKOUT1_DIVIDE = 1;
  parameter real CLKOUT1_DUTY_CYCLE = 0.500;
  parameter real CLKOUT1_PHASE = 0.000;
  parameter integer CLKOUT2_DIVIDE = 1;
  parameter real CLKOUT2_DUTY_CYCLE = 0.500;
  parameter real CLKOUT2_PHASE = 0.000;
  parameter integer CLKOUT3_DIVIDE = 1;
  parameter real CLKOUT3_DUTY_CYCLE = 0.500;
  parameter real CLKOUT3_PHASE = 0.000;
  parameter integer CLKOUT4_DIVIDE = 1;
  parameter real CLKOUT4_DUTY_CYCLE = 0.500;
  parameter real CLKOUT4_PHASE = 0.000;
  parameter integer CLKOUT5_DIVIDE = 1;
  parameter real CLKOUT5_DUTY_CYCLE = 0.500;
  parameter real CLKOUT5_PHASE = 0.000;
  parameter integer DIVCLK_DIVIDE = 1;
  parameter real REF_JITTER1 = 0.010;
  parameter STARTUP_WAIT = "FALSE";
    parameter LOC = "UNPLACED";
  output CLKFBOUT;
  output CLKOUT0;
  output CLKOUT1;
  output CLKOUT2;
  output CLKOUT3;
  output CLKOUT4;
  output CLKOUT5;
  output LOCKED;
  input CLKFBIN;
  input CLKIN1;
  input PWRDWN;
  input RST;
endmodule


module PLLE3_ADV #(
  parameter integer CLKFBOUT_MULT = 5,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN_PERIOD = 0.000,
  parameter integer CLKOUT0_DIVIDE = 1,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUTPHY_MODE = "VCO_2X",
  parameter COMPENSATION = "AUTO",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUTPHY,
  output [15:0] DO,
  output DRDY,
  output LOCKED,

  input CLKFBIN,
  input CLKIN,
  input CLKOUTPHYEN,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PWRDWN,
  input RST
);
endmodule


module PLLE3_BASE #(
  parameter integer CLKFBOUT_MULT = 5,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN_PERIOD = 0.000,
  parameter integer CLKOUT0_DIVIDE = 1,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUTPHY_MODE = "VCO_2X",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUTPHY,
  output LOCKED,

  input CLKFBIN,
  input CLKIN,
  input CLKOUTPHYEN,
  input PWRDWN,
  input RST
);
endmodule


module PLLE4_ADV #(
  parameter integer CLKFBOUT_MULT = 5,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN_PERIOD = 0.000,
  parameter integer CLKOUT0_DIVIDE = 1,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUTPHY_MODE = "VCO_2X",
  parameter COMPENSATION = "AUTO",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUTPHY,
  output [15:0] DO,
  output DRDY,
  output LOCKED,

  input CLKFBIN,
  input CLKIN,
  input CLKOUTPHYEN,
  input [6:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input PWRDWN,
  input RST
);
endmodule


module PLLE4_BASE #(
  parameter integer CLKFBOUT_MULT = 5,
  parameter real CLKFBOUT_PHASE = 0.000,
  parameter real CLKIN_PERIOD = 0.000,
  parameter integer CLKOUT0_DIVIDE = 1,
  parameter real CLKOUT0_DUTY_CYCLE = 0.500,
  parameter real CLKOUT0_PHASE = 0.000,
  parameter integer CLKOUT1_DIVIDE = 1,
  parameter real CLKOUT1_DUTY_CYCLE = 0.500,
  parameter real CLKOUT1_PHASE = 0.000,
  parameter CLKOUTPHY_MODE = "VCO_2X",
  parameter integer DIVCLK_DIVIDE = 1,
  parameter [0:0] IS_CLKFBIN_INVERTED = 1'b0,
  parameter [0:0] IS_CLKIN_INVERTED = 1'b0,
  parameter [0:0] IS_PWRDWN_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter real REF_JITTER = 0.010,
  parameter STARTUP_WAIT = "FALSE"
)(
  output CLKFBOUT,
  output CLKOUT0,
  output CLKOUT0B,
  output CLKOUT1,
  output CLKOUT1B,
  output CLKOUTPHY,
  output LOCKED,

  input CLKFBIN,
  input CLKIN,
  input CLKOUTPHYEN,
  input PWRDWN,
  input RST
);
endmodule


module PS7
(
  output [1:0] DMA0DATYPE,
  output DMA0DAVALID,
  output DMA0DRREADY,
  output DMA0RSTN,
  output [1:0] DMA1DATYPE,
  output DMA1DAVALID,
  output DMA1DRREADY,
  output DMA1RSTN,
  output [1:0] DMA2DATYPE,
  output DMA2DAVALID,
  output DMA2DRREADY,
  output DMA2RSTN,
  output [1:0] DMA3DATYPE,
  output DMA3DAVALID,
  output DMA3DRREADY,
  output DMA3RSTN,
  output EMIOCAN0PHYTX,
  output EMIOCAN1PHYTX,
  output [7:0] EMIOENET0GMIITXD,
  output EMIOENET0GMIITXEN,
  output EMIOENET0GMIITXER,
  output EMIOENET0MDIOMDC,
  output EMIOENET0MDIOO,
  output EMIOENET0MDIOTN,
  output EMIOENET0PTPDELAYREQRX,
  output EMIOENET0PTPDELAYREQTX,
  output EMIOENET0PTPPDELAYREQRX,
  output EMIOENET0PTPPDELAYREQTX,
  output EMIOENET0PTPPDELAYRESPRX,
  output EMIOENET0PTPPDELAYRESPTX,
  output EMIOENET0PTPSYNCFRAMERX,
  output EMIOENET0PTPSYNCFRAMETX,
  output EMIOENET0SOFRX,
  output EMIOENET0SOFTX,
  output [7:0] EMIOENET1GMIITXD,
  output EMIOENET1GMIITXEN,
  output EMIOENET1GMIITXER,
  output EMIOENET1MDIOMDC,
  output EMIOENET1MDIOO,
  output EMIOENET1MDIOTN,
  output EMIOENET1PTPDELAYREQRX,
  output EMIOENET1PTPDELAYREQTX,
  output EMIOENET1PTPPDELAYREQRX,
  output EMIOENET1PTPPDELAYREQTX,
  output EMIOENET1PTPPDELAYRESPRX,
  output EMIOENET1PTPPDELAYRESPTX,
  output EMIOENET1PTPSYNCFRAMERX,
  output EMIOENET1PTPSYNCFRAMETX,
  output EMIOENET1SOFRX,
  output EMIOENET1SOFTX,
  output [63:0] EMIOGPIOO,
  output [63:0] EMIOGPIOTN,
  output EMIOI2C0SCLO,
  output EMIOI2C0SCLTN,
  output EMIOI2C0SDAO,
  output EMIOI2C0SDATN,
  output EMIOI2C1SCLO,
  output EMIOI2C1SCLTN,
  output EMIOI2C1SDAO,
  output EMIOI2C1SDATN,
  output EMIOPJTAGTDO,
  output EMIOPJTAGTDTN,
  output EMIOSDIO0BUSPOW,
  output [2:0] EMIOSDIO0BUSVOLT,
  output EMIOSDIO0CLK,
  output EMIOSDIO0CMDO,
  output EMIOSDIO0CMDTN,
  output [3:0] EMIOSDIO0DATAO,
  output [3:0] EMIOSDIO0DATATN,
  output EMIOSDIO0LED,
  output EMIOSDIO1BUSPOW,
  output [2:0] EMIOSDIO1BUSVOLT,
  output EMIOSDIO1CLK,
  output EMIOSDIO1CMDO,
  output EMIOSDIO1CMDTN,
  output [3:0] EMIOSDIO1DATAO,
  output [3:0] EMIOSDIO1DATATN,
  output EMIOSDIO1LED,
  output EMIOSPI0MO,
  output EMIOSPI0MOTN,
  output EMIOSPI0SCLKO,
  output EMIOSPI0SCLKTN,
  output EMIOSPI0SO,
  output EMIOSPI0SSNTN,
  output [2:0] EMIOSPI0SSON,
  output EMIOSPI0STN,
  output EMIOSPI1MO,
  output EMIOSPI1MOTN,
  output EMIOSPI1SCLKO,
  output EMIOSPI1SCLKTN,
  output EMIOSPI1SO,
  output EMIOSPI1SSNTN,
  output [2:0] EMIOSPI1SSON,
  output EMIOSPI1STN,
  output EMIOTRACECTL,
  output [31:0] EMIOTRACEDATA,
  output [2:0] EMIOTTC0WAVEO,
  output [2:0] EMIOTTC1WAVEO,
  output EMIOUART0DTRN,
  output EMIOUART0RTSN,
  output EMIOUART0TX,
  output EMIOUART1DTRN,
  output EMIOUART1RTSN,
  output EMIOUART1TX,
  output [1:0] EMIOUSB0PORTINDCTL,
  output EMIOUSB0VBUSPWRSELECT,
  output [1:0] EMIOUSB1PORTINDCTL,
  output EMIOUSB1VBUSPWRSELECT,
  output EMIOWDTRSTO,
  output EVENTEVENTO,
  output [1:0] EVENTSTANDBYWFE,
  output [1:0] EVENTSTANDBYWFI,
  output [3:0] FCLKCLK,
  output [3:0] FCLKRESETN,
  output [3:0] FTMTF2PTRIGACK,
  output [31:0] FTMTP2FDEBUG,
  output [3:0] FTMTP2FTRIG,
  output [28:0] IRQP2F,
  output [31:0] MAXIGP0ARADDR,
  output [1:0] MAXIGP0ARBURST,
  output [3:0] MAXIGP0ARCACHE,
  output MAXIGP0ARESETN,
  output [11:0] MAXIGP0ARID,
  output [3:0] MAXIGP0ARLEN,
  output [1:0] MAXIGP0ARLOCK,
  output [2:0] MAXIGP0ARPROT,
  output [3:0] MAXIGP0ARQOS,
  output [1:0] MAXIGP0ARSIZE,
  output MAXIGP0ARVALID,
  output [31:0] MAXIGP0AWADDR,
  output [1:0] MAXIGP0AWBURST,
  output [3:0] MAXIGP0AWCACHE,
  output [11:0] MAXIGP0AWID,
  output [3:0] MAXIGP0AWLEN,
  output [1:0] MAXIGP0AWLOCK,
  output [2:0] MAXIGP0AWPROT,
  output [3:0] MAXIGP0AWQOS,
  output [1:0] MAXIGP0AWSIZE,
  output MAXIGP0AWVALID,
  output MAXIGP0BREADY,
  output MAXIGP0RREADY,
  output [31:0] MAXIGP0WDATA,
  output [11:0] MAXIGP0WID,
  output MAXIGP0WLAST,
  output [3:0] MAXIGP0WSTRB,
  output MAXIGP0WVALID,
  output [31:0] MAXIGP1ARADDR,
  output [1:0] MAXIGP1ARBURST,
  output [3:0] MAXIGP1ARCACHE,
  output MAXIGP1ARESETN,
  output [11:0] MAXIGP1ARID,
  output [3:0] MAXIGP1ARLEN,
  output [1:0] MAXIGP1ARLOCK,
  output [2:0] MAXIGP1ARPROT,
  output [3:0] MAXIGP1ARQOS,
  output [1:0] MAXIGP1ARSIZE,
  output MAXIGP1ARVALID,
  output [31:0] MAXIGP1AWADDR,
  output [1:0] MAXIGP1AWBURST,
  output [3:0] MAXIGP1AWCACHE,
  output [11:0] MAXIGP1AWID,
  output [3:0] MAXIGP1AWLEN,
  output [1:0] MAXIGP1AWLOCK,
  output [2:0] MAXIGP1AWPROT,
  output [3:0] MAXIGP1AWQOS,
  output [1:0] MAXIGP1AWSIZE,
  output MAXIGP1AWVALID,
  output MAXIGP1BREADY,
  output MAXIGP1RREADY,
  output [31:0] MAXIGP1WDATA,
  output [11:0] MAXIGP1WID,
  output MAXIGP1WLAST,
  output [3:0] MAXIGP1WSTRB,
  output MAXIGP1WVALID,
  output SAXIACPARESETN,
  output SAXIACPARREADY,
  output SAXIACPAWREADY,
  output [2:0] SAXIACPBID,
  output [1:0] SAXIACPBRESP,
  output SAXIACPBVALID,
  output [63:0] SAXIACPRDATA,
  output [2:0] SAXIACPRID,
  output SAXIACPRLAST,
  output [1:0] SAXIACPRRESP,
  output SAXIACPRVALID,
  output SAXIACPWREADY,
  output SAXIGP0ARESETN,
  output SAXIGP0ARREADY,
  output SAXIGP0AWREADY,
  output [5:0] SAXIGP0BID,
  output [1:0] SAXIGP0BRESP,
  output SAXIGP0BVALID,
  output [31:0] SAXIGP0RDATA,
  output [5:0] SAXIGP0RID,
  output SAXIGP0RLAST,
  output [1:0] SAXIGP0RRESP,
  output SAXIGP0RVALID,
  output SAXIGP0WREADY,
  output SAXIGP1ARESETN,
  output SAXIGP1ARREADY,
  output SAXIGP1AWREADY,
  output [5:0] SAXIGP1BID,
  output [1:0] SAXIGP1BRESP,
  output SAXIGP1BVALID,
  output [31:0] SAXIGP1RDATA,
  output [5:0] SAXIGP1RID,
  output SAXIGP1RLAST,
  output [1:0] SAXIGP1RRESP,
  output SAXIGP1RVALID,
  output SAXIGP1WREADY,
  output SAXIHP0ARESETN,
  output SAXIHP0ARREADY,
  output SAXIHP0AWREADY,
  output [5:0] SAXIHP0BID,
  output [1:0] SAXIHP0BRESP,
  output SAXIHP0BVALID,
  output [2:0] SAXIHP0RACOUNT,
  output [7:0] SAXIHP0RCOUNT,
  output [63:0] SAXIHP0RDATA,
  output [5:0] SAXIHP0RID,
  output SAXIHP0RLAST,
  output [1:0] SAXIHP0RRESP,
  output SAXIHP0RVALID,
  output [5:0] SAXIHP0WACOUNT,
  output [7:0] SAXIHP0WCOUNT,
  output SAXIHP0WREADY,
  output SAXIHP1ARESETN,
  output SAXIHP1ARREADY,
  output SAXIHP1AWREADY,
  output [5:0] SAXIHP1BID,
  output [1:0] SAXIHP1BRESP,
  output SAXIHP1BVALID,
  output [2:0] SAXIHP1RACOUNT,
  output [7:0] SAXIHP1RCOUNT,
  output [63:0] SAXIHP1RDATA,
  output [5:0] SAXIHP1RID,
  output SAXIHP1RLAST,
  output [1:0] SAXIHP1RRESP,
  output SAXIHP1RVALID,
  output [5:0] SAXIHP1WACOUNT,
  output [7:0] SAXIHP1WCOUNT,
  output SAXIHP1WREADY,
  output SAXIHP2ARESETN,
  output SAXIHP2ARREADY,
  output SAXIHP2AWREADY,
  output [5:0] SAXIHP2BID,
  output [1:0] SAXIHP2BRESP,
  output SAXIHP2BVALID,
  output [2:0] SAXIHP2RACOUNT,
  output [7:0] SAXIHP2RCOUNT,
  output [63:0] SAXIHP2RDATA,
  output [5:0] SAXIHP2RID,
  output SAXIHP2RLAST,
  output [1:0] SAXIHP2RRESP,
  output SAXIHP2RVALID,
  output [5:0] SAXIHP2WACOUNT,
  output [7:0] SAXIHP2WCOUNT,
  output SAXIHP2WREADY,
  output SAXIHP3ARESETN,
  output SAXIHP3ARREADY,
  output SAXIHP3AWREADY,
  output [5:0] SAXIHP3BID,
  output [1:0] SAXIHP3BRESP,
  output SAXIHP3BVALID,
  output [2:0] SAXIHP3RACOUNT,
  output [7:0] SAXIHP3RCOUNT,
  output [63:0] SAXIHP3RDATA,
  output [5:0] SAXIHP3RID,
  output SAXIHP3RLAST,
  output [1:0] SAXIHP3RRESP,
  output SAXIHP3RVALID,
  output [5:0] SAXIHP3WACOUNT,
  output [7:0] SAXIHP3WCOUNT,
  output SAXIHP3WREADY,

  inout [14:0] DDRA,
  inout [2:0] DDRBA,
  inout DDRCASB,
  inout DDRCKE,
  inout DDRCKN,
  inout DDRCKP,
  inout DDRCSB,
  inout [3:0] DDRDM,
  inout [31:0] DDRDQ,
  inout [3:0] DDRDQSN,
  inout [3:0] DDRDQSP,
  inout DDRDRSTB,
  inout DDRODT,
  inout DDRRASB,
  inout DDRVRN,
  inout DDRVRP,
  inout DDRWEB,
  inout [53:0] MIO,
  inout PSCLK,
  inout PSPORB,
  inout PSSRSTB,

  input [3:0] DDRARB,
  input DMA0ACLK,
  input DMA0DAREADY,
  input DMA0DRLAST,
  input [1:0] DMA0DRTYPE,
  input DMA0DRVALID,
  input DMA1ACLK,
  input DMA1DAREADY,
  input DMA1DRLAST,
  input [1:0] DMA1DRTYPE,
  input DMA1DRVALID,
  input DMA2ACLK,
  input DMA2DAREADY,
  input DMA2DRLAST,
  input [1:0] DMA2DRTYPE,
  input DMA2DRVALID,
  input DMA3ACLK,
  input DMA3DAREADY,
  input DMA3DRLAST,
  input [1:0] DMA3DRTYPE,
  input DMA3DRVALID,
  input EMIOCAN0PHYRX,
  input EMIOCAN1PHYRX,
  input EMIOENET0EXTINTIN,
  input EMIOENET0GMIICOL,
  input EMIOENET0GMIICRS,
  input EMIOENET0GMIIRXCLK,
  input [7:0] EMIOENET0GMIIRXD,
  input EMIOENET0GMIIRXDV,
  input EMIOENET0GMIIRXER,
  input EMIOENET0GMIITXCLK,
  input EMIOENET0MDIOI,
  input EMIOENET1EXTINTIN,
  input EMIOENET1GMIICOL,
  input EMIOENET1GMIICRS,
  input EMIOENET1GMIIRXCLK,
  input [7:0] EMIOENET1GMIIRXD,
  input EMIOENET1GMIIRXDV,
  input EMIOENET1GMIIRXER,
  input EMIOENET1GMIITXCLK,
  input EMIOENET1MDIOI,
  input [63:0] EMIOGPIOI,
  input EMIOI2C0SCLI,
  input EMIOI2C0SDAI,
  input EMIOI2C1SCLI,
  input EMIOI2C1SDAI,
  input EMIOPJTAGTCK,
  input EMIOPJTAGTDI,
  input EMIOPJTAGTMS,
  input EMIOSDIO0CDN,
  input EMIOSDIO0CLKFB,
  input EMIOSDIO0CMDI,
  input [3:0] EMIOSDIO0DATAI,
  input EMIOSDIO0WP,
  input EMIOSDIO1CDN,
  input EMIOSDIO1CLKFB,
  input EMIOSDIO1CMDI,
  input [3:0] EMIOSDIO1DATAI,
  input EMIOSDIO1WP,
  input EMIOSPI0MI,
  input EMIOSPI0SCLKI,
  input EMIOSPI0SI,
  input EMIOSPI0SSIN,
  input EMIOSPI1MI,
  input EMIOSPI1SCLKI,
  input EMIOSPI1SI,
  input EMIOSPI1SSIN,
  input EMIOSRAMINTIN,
  input EMIOTRACECLK,
  input [2:0] EMIOTTC0CLKI,
  input [2:0] EMIOTTC1CLKI,
  input EMIOUART0CTSN,
  input EMIOUART0DCDN,
  input EMIOUART0DSRN,
  input EMIOUART0RIN,
  input EMIOUART0RX,
  input EMIOUART1CTSN,
  input EMIOUART1DCDN,
  input EMIOUART1DSRN,
  input EMIOUART1RIN,
  input EMIOUART1RX,
  input EMIOUSB0VBUSPWRFAULT,
  input EMIOUSB1VBUSPWRFAULT,
  input EMIOWDTCLKI,
  input EVENTEVENTI,
  input [3:0] FCLKCLKTRIGN,
  input FPGAIDLEN,
  input [3:0] FTMDTRACEINATID,
  input FTMDTRACEINCLOCK,
  input [31:0] FTMDTRACEINDATA,
  input FTMDTRACEINVALID,
  input [31:0] FTMTF2PDEBUG,
  input [3:0] FTMTF2PTRIG,
  input [3:0] FTMTP2FTRIGACK,
  input [19:0] IRQF2P,
  input MAXIGP0ACLK,
  input MAXIGP0ARREADY,
  input MAXIGP0AWREADY,
  input [11:0] MAXIGP0BID,
  input [1:0] MAXIGP0BRESP,
  input MAXIGP0BVALID,
  input [31:0] MAXIGP0RDATA,
  input [11:0] MAXIGP0RID,
  input MAXIGP0RLAST,
  input [1:0] MAXIGP0RRESP,
  input MAXIGP0RVALID,
  input MAXIGP0WREADY,
  input MAXIGP1ACLK,
  input MAXIGP1ARREADY,
  input MAXIGP1AWREADY,
  input [11:0] MAXIGP1BID,
  input [1:0] MAXIGP1BRESP,
  input MAXIGP1BVALID,
  input [31:0] MAXIGP1RDATA,
  input [11:0] MAXIGP1RID,
  input MAXIGP1RLAST,
  input [1:0] MAXIGP1RRESP,
  input MAXIGP1RVALID,
  input MAXIGP1WREADY,
  input SAXIACPACLK,
  input [31:0] SAXIACPARADDR,
  input [1:0] SAXIACPARBURST,
  input [3:0] SAXIACPARCACHE,
  input [2:0] SAXIACPARID,
  input [3:0] SAXIACPARLEN,
  input [1:0] SAXIACPARLOCK,
  input [2:0] SAXIACPARPROT,
  input [3:0] SAXIACPARQOS,
  input [1:0] SAXIACPARSIZE,
  input [4:0] SAXIACPARUSER,
  input SAXIACPARVALID,
  input [31:0] SAXIACPAWADDR,
  input [1:0] SAXIACPAWBURST,
  input [3:0] SAXIACPAWCACHE,
  input [2:0] SAXIACPAWID,
  input [3:0] SAXIACPAWLEN,
  input [1:0] SAXIACPAWLOCK,
  input [2:0] SAXIACPAWPROT,
  input [3:0] SAXIACPAWQOS,
  input [1:0] SAXIACPAWSIZE,
  input [4:0] SAXIACPAWUSER,
  input SAXIACPAWVALID,
  input SAXIACPBREADY,
  input SAXIACPRREADY,
  input [63:0] SAXIACPWDATA,
  input [2:0] SAXIACPWID,
  input SAXIACPWLAST,
  input [7:0] SAXIACPWSTRB,
  input SAXIACPWVALID,
  input SAXIGP0ACLK,
  input [31:0] SAXIGP0ARADDR,
  input [1:0] SAXIGP0ARBURST,
  input [3:0] SAXIGP0ARCACHE,
  input [5:0] SAXIGP0ARID,
  input [3:0] SAXIGP0ARLEN,
  input [1:0] SAXIGP0ARLOCK,
  input [2:0] SAXIGP0ARPROT,
  input [3:0] SAXIGP0ARQOS,
  input [1:0] SAXIGP0ARSIZE,
  input SAXIGP0ARVALID,
  input [31:0] SAXIGP0AWADDR,
  input [1:0] SAXIGP0AWBURST,
  input [3:0] SAXIGP0AWCACHE,
  input [5:0] SAXIGP0AWID,
  input [3:0] SAXIGP0AWLEN,
  input [1:0] SAXIGP0AWLOCK,
  input [2:0] SAXIGP0AWPROT,
  input [3:0] SAXIGP0AWQOS,
  input [1:0] SAXIGP0AWSIZE,
  input SAXIGP0AWVALID,
  input SAXIGP0BREADY,
  input SAXIGP0RREADY,
  input [31:0] SAXIGP0WDATA,
  input [5:0] SAXIGP0WID,
  input SAXIGP0WLAST,
  input [3:0] SAXIGP0WSTRB,
  input SAXIGP0WVALID,
  input SAXIGP1ACLK,
  input [31:0] SAXIGP1ARADDR,
  input [1:0] SAXIGP1ARBURST,
  input [3:0] SAXIGP1ARCACHE,
  input [5:0] SAXIGP1ARID,
  input [3:0] SAXIGP1ARLEN,
  input [1:0] SAXIGP1ARLOCK,
  input [2:0] SAXIGP1ARPROT,
  input [3:0] SAXIGP1ARQOS,
  input [1:0] SAXIGP1ARSIZE,
  input SAXIGP1ARVALID,
  input [31:0] SAXIGP1AWADDR,
  input [1:0] SAXIGP1AWBURST,
  input [3:0] SAXIGP1AWCACHE,
  input [5:0] SAXIGP1AWID,
  input [3:0] SAXIGP1AWLEN,
  input [1:0] SAXIGP1AWLOCK,
  input [2:0] SAXIGP1AWPROT,
  input [3:0] SAXIGP1AWQOS,
  input [1:0] SAXIGP1AWSIZE,
  input SAXIGP1AWVALID,
  input SAXIGP1BREADY,
  input SAXIGP1RREADY,
  input [31:0] SAXIGP1WDATA,
  input [5:0] SAXIGP1WID,
  input SAXIGP1WLAST,
  input [3:0] SAXIGP1WSTRB,
  input SAXIGP1WVALID,
  input SAXIHP0ACLK,
  input [31:0] SAXIHP0ARADDR,
  input [1:0] SAXIHP0ARBURST,
  input [3:0] SAXIHP0ARCACHE,
  input [5:0] SAXIHP0ARID,
  input [3:0] SAXIHP0ARLEN,
  input [1:0] SAXIHP0ARLOCK,
  input [2:0] SAXIHP0ARPROT,
  input [3:0] SAXIHP0ARQOS,
  input [1:0] SAXIHP0ARSIZE,
  input SAXIHP0ARVALID,
  input [31:0] SAXIHP0AWADDR,
  input [1:0] SAXIHP0AWBURST,
  input [3:0] SAXIHP0AWCACHE,
  input [5:0] SAXIHP0AWID,
  input [3:0] SAXIHP0AWLEN,
  input [1:0] SAXIHP0AWLOCK,
  input [2:0] SAXIHP0AWPROT,
  input [3:0] SAXIHP0AWQOS,
  input [1:0] SAXIHP0AWSIZE,
  input SAXIHP0AWVALID,
  input SAXIHP0BREADY,
  input SAXIHP0RDISSUECAP1EN,
  input SAXIHP0RREADY,
  input [63:0] SAXIHP0WDATA,
  input [5:0] SAXIHP0WID,
  input SAXIHP0WLAST,
  input SAXIHP0WRISSUECAP1EN,
  input [7:0] SAXIHP0WSTRB,
  input SAXIHP0WVALID,
  input SAXIHP1ACLK,
  input [31:0] SAXIHP1ARADDR,
  input [1:0] SAXIHP1ARBURST,
  input [3:0] SAXIHP1ARCACHE,
  input [5:0] SAXIHP1ARID,
  input [3:0] SAXIHP1ARLEN,
  input [1:0] SAXIHP1ARLOCK,
  input [2:0] SAXIHP1ARPROT,
  input [3:0] SAXIHP1ARQOS,
  input [1:0] SAXIHP1ARSIZE,
  input SAXIHP1ARVALID,
  input [31:0] SAXIHP1AWADDR,
  input [1:0] SAXIHP1AWBURST,
  input [3:0] SAXIHP1AWCACHE,
  input [5:0] SAXIHP1AWID,
  input [3:0] SAXIHP1AWLEN,
  input [1:0] SAXIHP1AWLOCK,
  input [2:0] SAXIHP1AWPROT,
  input [3:0] SAXIHP1AWQOS,
  input [1:0] SAXIHP1AWSIZE,
  input SAXIHP1AWVALID,
  input SAXIHP1BREADY,
  input SAXIHP1RDISSUECAP1EN,
  input SAXIHP1RREADY,
  input [63:0] SAXIHP1WDATA,
  input [5:0] SAXIHP1WID,
  input SAXIHP1WLAST,
  input SAXIHP1WRISSUECAP1EN,
  input [7:0] SAXIHP1WSTRB,
  input SAXIHP1WVALID,
  input SAXIHP2ACLK,
  input [31:0] SAXIHP2ARADDR,
  input [1:0] SAXIHP2ARBURST,
  input [3:0] SAXIHP2ARCACHE,
  input [5:0] SAXIHP2ARID,
  input [3:0] SAXIHP2ARLEN,
  input [1:0] SAXIHP2ARLOCK,
  input [2:0] SAXIHP2ARPROT,
  input [3:0] SAXIHP2ARQOS,
  input [1:0] SAXIHP2ARSIZE,
  input SAXIHP2ARVALID,
  input [31:0] SAXIHP2AWADDR,
  input [1:0] SAXIHP2AWBURST,
  input [3:0] SAXIHP2AWCACHE,
  input [5:0] SAXIHP2AWID,
  input [3:0] SAXIHP2AWLEN,
  input [1:0] SAXIHP2AWLOCK,
  input [2:0] SAXIHP2AWPROT,
  input [3:0] SAXIHP2AWQOS,
  input [1:0] SAXIHP2AWSIZE,
  input SAXIHP2AWVALID,
  input SAXIHP2BREADY,
  input SAXIHP2RDISSUECAP1EN,
  input SAXIHP2RREADY,
  input [63:0] SAXIHP2WDATA,
  input [5:0] SAXIHP2WID,
  input SAXIHP2WLAST,
  input SAXIHP2WRISSUECAP1EN,
  input [7:0] SAXIHP2WSTRB,
  input SAXIHP2WVALID,
  input SAXIHP3ACLK,
  input [31:0] SAXIHP3ARADDR,
  input [1:0] SAXIHP3ARBURST,
  input [3:0] SAXIHP3ARCACHE,
  input [5:0] SAXIHP3ARID,
  input [3:0] SAXIHP3ARLEN,
  input [1:0] SAXIHP3ARLOCK,
  input [2:0] SAXIHP3ARPROT,
  input [3:0] SAXIHP3ARQOS,
  input [1:0] SAXIHP3ARSIZE,
  input SAXIHP3ARVALID,
  input [31:0] SAXIHP3AWADDR,
  input [1:0] SAXIHP3AWBURST,
  input [3:0] SAXIHP3AWCACHE,
  input [5:0] SAXIHP3AWID,
  input [3:0] SAXIHP3AWLEN,
  input [1:0] SAXIHP3AWLOCK,
  input [2:0] SAXIHP3AWPROT,
  input [3:0] SAXIHP3AWQOS,
  input [1:0] SAXIHP3AWSIZE,
  input SAXIHP3AWVALID,
  input SAXIHP3BREADY,
  input SAXIHP3RDISSUECAP1EN,
  input SAXIHP3RREADY,
  input [63:0] SAXIHP3WDATA,
  input [5:0] SAXIHP3WID,
  input SAXIHP3WLAST,
  input SAXIHP3WRISSUECAP1EN,
  input [7:0] SAXIHP3WSTRB,
  input SAXIHP3WVALID
);
endmodule


module PS8
(
  output [7:0] ADMA2PLCACK,
  output [7:0] ADMA2PLTVLD,
  output DPAUDIOREFCLK,
  output DPAUXDATAOEN,
  output DPAUXDATAOUT,
  output DPLIVEVIDEODEOUT,
  output [31:0] DPMAXISMIXEDAUDIOTDATA,
  output DPMAXISMIXEDAUDIOTID,
  output DPMAXISMIXEDAUDIOTVALID,
  output DPSAXISAUDIOTREADY,
  output DPVIDEOOUTHSYNC,
  output [35:0] DPVIDEOOUTPIXEL1,
  output DPVIDEOOUTVSYNC,
  output DPVIDEOREFCLK,
  output EMIOCAN0PHYTX,
  output EMIOCAN1PHYTX,
  output [1:0] EMIOENET0DMABUSWIDTH,
  output EMIOENET0DMATXENDTOG,
  output [93:0] EMIOENET0GEMTSUTIMERCNT,
  output [7:0] EMIOENET0GMIITXD,
  output EMIOENET0GMIITXEN,
  output EMIOENET0GMIITXER,
  output EMIOENET0MDIOMDC,
  output EMIOENET0MDIOO,
  output EMIOENET0MDIOTN,
  output [7:0] EMIOENET0RXWDATA,
  output EMIOENET0RXWEOP,
  output EMIOENET0RXWERR,
  output EMIOENET0RXWFLUSH,
  output EMIOENET0RXWSOP,
  output [44:0] EMIOENET0RXWSTATUS,
  output EMIOENET0RXWWR,
  output [2:0] EMIOENET0SPEEDMODE,
  output EMIOENET0TXRRD,
  output [3:0] EMIOENET0TXRSTATUS,
  output [1:0] EMIOENET1DMABUSWIDTH,
  output EMIOENET1DMATXENDTOG,
  output [7:0] EMIOENET1GMIITXD,
  output EMIOENET1GMIITXEN,
  output EMIOENET1GMIITXER,
  output EMIOENET1MDIOMDC,
  output EMIOENET1MDIOO,
  output EMIOENET1MDIOTN,
  output [7:0] EMIOENET1RXWDATA,
  output EMIOENET1RXWEOP,
  output EMIOENET1RXWERR,
  output EMIOENET1RXWFLUSH,
  output EMIOENET1RXWSOP,
  output [44:0] EMIOENET1RXWSTATUS,
  output EMIOENET1RXWWR,
  output [2:0] EMIOENET1SPEEDMODE,
  output EMIOENET1TXRRD,
  output [3:0] EMIOENET1TXRSTATUS,
  output [1:0] EMIOENET2DMABUSWIDTH,
  output EMIOENET2DMATXENDTOG,
  output [7:0] EMIOENET2GMIITXD,
  output EMIOENET2GMIITXEN,
  output EMIOENET2GMIITXER,
  output EMIOENET2MDIOMDC,
  output EMIOENET2MDIOO,
  output EMIOENET2MDIOTN,
  output [7:0] EMIOENET2RXWDATA,
  output EMIOENET2RXWEOP,
  output EMIOENET2RXWERR,
  output EMIOENET2RXWFLUSH,
  output EMIOENET2RXWSOP,
  output [44:0] EMIOENET2RXWSTATUS,
  output EMIOENET2RXWWR,
  output [2:0] EMIOENET2SPEEDMODE,
  output EMIOENET2TXRRD,
  output [3:0] EMIOENET2TXRSTATUS,
  output [1:0] EMIOENET3DMABUSWIDTH,
  output EMIOENET3DMATXENDTOG,
  output [7:0] EMIOENET3GMIITXD,
  output EMIOENET3GMIITXEN,
  output EMIOENET3GMIITXER,
  output EMIOENET3MDIOMDC,
  output EMIOENET3MDIOO,
  output EMIOENET3MDIOTN,
  output [7:0] EMIOENET3RXWDATA,
  output EMIOENET3RXWEOP,
  output EMIOENET3RXWERR,
  output EMIOENET3RXWFLUSH,
  output EMIOENET3RXWSOP,
  output [44:0] EMIOENET3RXWSTATUS,
  output EMIOENET3RXWWR,
  output [2:0] EMIOENET3SPEEDMODE,
  output EMIOENET3TXRRD,
  output [3:0] EMIOENET3TXRSTATUS,
  output EMIOGEM0DELAYREQRX,
  output EMIOGEM0DELAYREQTX,
  output EMIOGEM0PDELAYREQRX,
  output EMIOGEM0PDELAYREQTX,
  output EMIOGEM0PDELAYRESPRX,
  output EMIOGEM0PDELAYRESPTX,
  output EMIOGEM0RXSOF,
  output EMIOGEM0SYNCFRAMERX,
  output EMIOGEM0SYNCFRAMETX,
  output EMIOGEM0TSUTIMERCMPVAL,
  output EMIOGEM0TXRFIXEDLAT,
  output EMIOGEM0TXSOF,
  output EMIOGEM1DELAYREQRX,
  output EMIOGEM1DELAYREQTX,
  output EMIOGEM1PDELAYREQRX,
  output EMIOGEM1PDELAYREQTX,
  output EMIOGEM1PDELAYRESPRX,
  output EMIOGEM1PDELAYRESPTX,
  output EMIOGEM1RXSOF,
  output EMIOGEM1SYNCFRAMERX,
  output EMIOGEM1SYNCFRAMETX,
  output EMIOGEM1TSUTIMERCMPVAL,
  output EMIOGEM1TXRFIXEDLAT,
  output EMIOGEM1TXSOF,
  output EMIOGEM2DELAYREQRX,
  output EMIOGEM2DELAYREQTX,
  output EMIOGEM2PDELAYREQRX,
  output EMIOGEM2PDELAYREQTX,
  output EMIOGEM2PDELAYRESPRX,
  output EMIOGEM2PDELAYRESPTX,
  output EMIOGEM2RXSOF,
  output EMIOGEM2SYNCFRAMERX,
  output EMIOGEM2SYNCFRAMETX,
  output EMIOGEM2TSUTIMERCMPVAL,
  output EMIOGEM2TXRFIXEDLAT,
  output EMIOGEM2TXSOF,
  output EMIOGEM3DELAYREQRX,
  output EMIOGEM3DELAYREQTX,
  output EMIOGEM3PDELAYREQRX,
  output EMIOGEM3PDELAYREQTX,
  output EMIOGEM3PDELAYRESPRX,
  output EMIOGEM3PDELAYRESPTX,
  output EMIOGEM3RXSOF,
  output EMIOGEM3SYNCFRAMERX,
  output EMIOGEM3SYNCFRAMETX,
  output EMIOGEM3TSUTIMERCMPVAL,
  output EMIOGEM3TXRFIXEDLAT,
  output EMIOGEM3TXSOF,
  output [95:0] EMIOGPIOO,
  output [95:0] EMIOGPIOTN,
  output EMIOI2C0SCLO,
  output EMIOI2C0SCLTN,
  output EMIOI2C0SDAO,
  output EMIOI2C0SDATN,
  output EMIOI2C1SCLO,
  output EMIOI2C1SCLTN,
  output EMIOI2C1SDAO,
  output EMIOI2C1SDATN,
  output EMIOSDIO0BUSPOWER,
  output [2:0] EMIOSDIO0BUSVOLT,
  output EMIOSDIO0CLKOUT,
  output EMIOSDIO0CMDENA,
  output EMIOSDIO0CMDOUT,
  output [7:0] EMIOSDIO0DATAENA,
  output [7:0] EMIOSDIO0DATAOUT,
  output EMIOSDIO0LEDCONTROL,
  output EMIOSDIO1BUSPOWER,
  output [2:0] EMIOSDIO1BUSVOLT,
  output EMIOSDIO1CLKOUT,
  output EMIOSDIO1CMDENA,
  output EMIOSDIO1CMDOUT,
  output [7:0] EMIOSDIO1DATAENA,
  output [7:0] EMIOSDIO1DATAOUT,
  output EMIOSDIO1LEDCONTROL,
  output EMIOSPI0MO,
  output EMIOSPI0MOTN,
  output EMIOSPI0SCLKO,
  output EMIOSPI0SCLKTN,
  output EMIOSPI0SO,
  output EMIOSPI0SSNTN,
  output [2:0] EMIOSPI0SSON,
  output EMIOSPI0STN,
  output EMIOSPI1MO,
  output EMIOSPI1MOTN,
  output EMIOSPI1SCLKO,
  output EMIOSPI1SCLKTN,
  output EMIOSPI1SO,
  output EMIOSPI1SSNTN,
  output [2:0] EMIOSPI1SSON,
  output EMIOSPI1STN,
  output [2:0] EMIOTTC0WAVEO,
  output [2:0] EMIOTTC1WAVEO,
  output [2:0] EMIOTTC2WAVEO,
  output [2:0] EMIOTTC3WAVEO,
  output EMIOU2DSPORTVBUSCTRLUSB30,
  output EMIOU2DSPORTVBUSCTRLUSB31,
  output EMIOU3DSPORTVBUSCTRLUSB30,
  output EMIOU3DSPORTVBUSCTRLUSB31,
  output EMIOUART0DTRN,
  output EMIOUART0RTSN,
  output EMIOUART0TX,
  output EMIOUART1DTRN,
  output EMIOUART1RTSN,
  output EMIOUART1TX,
  output EMIOWDT0RSTO,
  output EMIOWDT1RSTO,
  output FMIOGEM0FIFORXCLKTOPLBUFG,
  output FMIOGEM0FIFOTXCLKTOPLBUFG,
  output FMIOGEM1FIFORXCLKTOPLBUFG,
  output FMIOGEM1FIFOTXCLKTOPLBUFG,
  output FMIOGEM2FIFORXCLKTOPLBUFG,
  output FMIOGEM2FIFOTXCLKTOPLBUFG,
  output FMIOGEM3FIFORXCLKTOPLBUFG,
  output FMIOGEM3FIFOTXCLKTOPLBUFG,
  output FMIOGEMTSUCLKTOPLBUFG,
  output [31:0] FTMGPO,
  output [7:0] GDMA2PLCACK,
  output [7:0] GDMA2PLTVLD,
  output [39:0] MAXIGP0ARADDR,
  output [1:0] MAXIGP0ARBURST,
  output [3:0] MAXIGP0ARCACHE,
  output [15:0] MAXIGP0ARID,
  output [7:0] MAXIGP0ARLEN,
  output MAXIGP0ARLOCK,
  output [2:0] MAXIGP0ARPROT,
  output [3:0] MAXIGP0ARQOS,
  output [2:0] MAXIGP0ARSIZE,
  output [15:0] MAXIGP0ARUSER,
  output MAXIGP0ARVALID,
  output [39:0] MAXIGP0AWADDR,
  output [1:0] MAXIGP0AWBURST,
  output [3:0] MAXIGP0AWCACHE,
  output [15:0] MAXIGP0AWID,
  output [7:0] MAXIGP0AWLEN,
  output MAXIGP0AWLOCK,
  output [2:0] MAXIGP0AWPROT,
  output [3:0] MAXIGP0AWQOS,
  output [2:0] MAXIGP0AWSIZE,
  output [15:0] MAXIGP0AWUSER,
  output MAXIGP0AWVALID,
  output MAXIGP0BREADY,
  output MAXIGP0RREADY,
  output [127:0] MAXIGP0WDATA,
  output MAXIGP0WLAST,
  output [15:0] MAXIGP0WSTRB,
  output MAXIGP0WVALID,
  output [39:0] MAXIGP1ARADDR,
  output [1:0] MAXIGP1ARBURST,
  output [3:0] MAXIGP1ARCACHE,
  output [15:0] MAXIGP1ARID,
  output [7:0] MAXIGP1ARLEN,
  output MAXIGP1ARLOCK,
  output [2:0] MAXIGP1ARPROT,
  output [3:0] MAXIGP1ARQOS,
  output [2:0] MAXIGP1ARSIZE,
  output [15:0] MAXIGP1ARUSER,
  output MAXIGP1ARVALID,
  output [39:0] MAXIGP1AWADDR,
  output [1:0] MAXIGP1AWBURST,
  output [3:0] MAXIGP1AWCACHE,
  output [15:0] MAXIGP1AWID,
  output [7:0] MAXIGP1AWLEN,
  output MAXIGP1AWLOCK,
  output [2:0] MAXIGP1AWPROT,
  output [3:0] MAXIGP1AWQOS,
  output [2:0] MAXIGP1AWSIZE,
  output [15:0] MAXIGP1AWUSER,
  output MAXIGP1AWVALID,
  output MAXIGP1BREADY,
  output MAXIGP1RREADY,
  output [127:0] MAXIGP1WDATA,
  output MAXIGP1WLAST,
  output [15:0] MAXIGP1WSTRB,
  output MAXIGP1WVALID,
  output [39:0] MAXIGP2ARADDR,
  output [1:0] MAXIGP2ARBURST,
  output [3:0] MAXIGP2ARCACHE,
  output [15:0] MAXIGP2ARID,
  output [7:0] MAXIGP2ARLEN,
  output MAXIGP2ARLOCK,
  output [2:0] MAXIGP2ARPROT,
  output [3:0] MAXIGP2ARQOS,
  output [2:0] MAXIGP2ARSIZE,
  output [15:0] MAXIGP2ARUSER,
  output MAXIGP2ARVALID,
  output [39:0] MAXIGP2AWADDR,
  output [1:0] MAXIGP2AWBURST,
  output [3:0] MAXIGP2AWCACHE,
  output [15:0] MAXIGP2AWID,
  output [7:0] MAXIGP2AWLEN,
  output MAXIGP2AWLOCK,
  output [2:0] MAXIGP2AWPROT,
  output [3:0] MAXIGP2AWQOS,
  output [2:0] MAXIGP2AWSIZE,
  output [15:0] MAXIGP2AWUSER,
  output MAXIGP2AWVALID,
  output MAXIGP2BREADY,
  output MAXIGP2RREADY,
  output [127:0] MAXIGP2WDATA,
  output MAXIGP2WLAST,
  output [15:0] MAXIGP2WSTRB,
  output MAXIGP2WVALID,
  output OSCRTCCLK,
  output [3:0] PLCLK,
  output PMUAIBAFIFMFPDREQ,
  output PMUAIBAFIFMLPDREQ,
  output [46:0] PMUERRORTOPL,
  output [31:0] PMUPLGPO,
  output PSPLEVENTO,
  output [63:0] PSPLIRQFPD,
  output [99:0] PSPLIRQLPD,
  output [3:0] PSPLSTANDBYWFE,
  output [3:0] PSPLSTANDBYWFI,
  output PSPLTRACECTL,
  output [31:0] PSPLTRACEDATA,
  output [3:0] PSPLTRIGACK,
  output [3:0] PSPLTRIGGER,
  output PSS_ALTO_CORE_PAD_MGTTXN0OUT,
  output PSS_ALTO_CORE_PAD_MGTTXN1OUT,
  output PSS_ALTO_CORE_PAD_MGTTXN2OUT,
  output PSS_ALTO_CORE_PAD_MGTTXN3OUT,
  output PSS_ALTO_CORE_PAD_MGTTXP0OUT,
  output PSS_ALTO_CORE_PAD_MGTTXP1OUT,
  output PSS_ALTO_CORE_PAD_MGTTXP2OUT,
  output PSS_ALTO_CORE_PAD_MGTTXP3OUT,
  output PSS_ALTO_CORE_PAD_PADO,
  output RPUEVENTO0,
  output RPUEVENTO1,
  output [43:0] SACEFPDACADDR,
  output [2:0] SACEFPDACPROT,
  output [3:0] SACEFPDACSNOOP,
  output SACEFPDACVALID,
  output SACEFPDARREADY,
  output SACEFPDAWREADY,
  output [5:0] SACEFPDBID,
  output [1:0] SACEFPDBRESP,
  output SACEFPDBUSER,
  output SACEFPDBVALID,
  output SACEFPDCDREADY,
  output SACEFPDCRREADY,
  output [127:0] SACEFPDRDATA,
  output [5:0] SACEFPDRID,
  output SACEFPDRLAST,
  output [3:0] SACEFPDRRESP,
  output SACEFPDRUSER,
  output SACEFPDRVALID,
  output SACEFPDWREADY,
  output SAXIACPARREADY,
  output SAXIACPAWREADY,
  output [4:0] SAXIACPBID,
  output [1:0] SAXIACPBRESP,
  output SAXIACPBVALID,
  output [127:0] SAXIACPRDATA,
  output [4:0] SAXIACPRID,
  output SAXIACPRLAST,
  output [1:0] SAXIACPRRESP,
  output SAXIACPRVALID,
  output SAXIACPWREADY,
  output SAXIGP0ARREADY,
  output SAXIGP0AWREADY,
  output [5:0] SAXIGP0BID,
  output [1:0] SAXIGP0BRESP,
  output SAXIGP0BVALID,
  output [3:0] SAXIGP0RACOUNT,
  output [7:0] SAXIGP0RCOUNT,
  output [127:0] SAXIGP0RDATA,
  output [5:0] SAXIGP0RID,
  output SAXIGP0RLAST,
  output [1:0] SAXIGP0RRESP,
  output SAXIGP0RVALID,
  output [3:0] SAXIGP0WACOUNT,
  output [7:0] SAXIGP0WCOUNT,
  output SAXIGP0WREADY,
  output SAXIGP1ARREADY,
  output SAXIGP1AWREADY,
  output [5:0] SAXIGP1BID,
  output [1:0] SAXIGP1BRESP,
  output SAXIGP1BVALID,
  output [3:0] SAXIGP1RACOUNT,
  output [7:0] SAXIGP1RCOUNT,
  output [127:0] SAXIGP1RDATA,
  output [5:0] SAXIGP1RID,
  output SAXIGP1RLAST,
  output [1:0] SAXIGP1RRESP,
  output SAXIGP1RVALID,
  output [3:0] SAXIGP1WACOUNT,
  output [7:0] SAXIGP1WCOUNT,
  output SAXIGP1WREADY,
  output SAXIGP2ARREADY,
  output SAXIGP2AWREADY,
  output [5:0] SAXIGP2BID,
  output [1:0] SAXIGP2BRESP,
  output SAXIGP2BVALID,
  output [3:0] SAXIGP2RACOUNT,
  output [7:0] SAXIGP2RCOUNT,
  output [127:0] SAXIGP2RDATA,
  output [5:0] SAXIGP2RID,
  output SAXIGP2RLAST,
  output [1:0] SAXIGP2RRESP,
  output SAXIGP2RVALID,
  output [3:0] SAXIGP2WACOUNT,
  output [7:0] SAXIGP2WCOUNT,
  output SAXIGP2WREADY,
  output SAXIGP3ARREADY,
  output SAXIGP3AWREADY,
  output [5:0] SAXIGP3BID,
  output [1:0] SAXIGP3BRESP,
  output SAXIGP3BVALID,
  output [3:0] SAXIGP3RACOUNT,
  output [7:0] SAXIGP3RCOUNT,
  output [127:0] SAXIGP3RDATA,
  output [5:0] SAXIGP3RID,
  output SAXIGP3RLAST,
  output [1:0] SAXIGP3RRESP,
  output SAXIGP3RVALID,
  output [3:0] SAXIGP3WACOUNT,
  output [7:0] SAXIGP3WCOUNT,
  output SAXIGP3WREADY,
  output SAXIGP4ARREADY,
  output SAXIGP4AWREADY,
  output [5:0] SAXIGP4BID,
  output [1:0] SAXIGP4BRESP,
  output SAXIGP4BVALID,
  output [3:0] SAXIGP4RACOUNT,
  output [7:0] SAXIGP4RCOUNT,
  output [127:0] SAXIGP4RDATA,
  output [5:0] SAXIGP4RID,
  output SAXIGP4RLAST,
  output [1:0] SAXIGP4RRESP,
  output SAXIGP4RVALID,
  output [3:0] SAXIGP4WACOUNT,
  output [7:0] SAXIGP4WCOUNT,
  output SAXIGP4WREADY,
  output SAXIGP5ARREADY,
  output SAXIGP5AWREADY,
  output [5:0] SAXIGP5BID,
  output [1:0] SAXIGP5BRESP,
  output SAXIGP5BVALID,
  output [3:0] SAXIGP5RACOUNT,
  output [7:0] SAXIGP5RCOUNT,
  output [127:0] SAXIGP5RDATA,
  output [5:0] SAXIGP5RID,
  output SAXIGP5RLAST,
  output [1:0] SAXIGP5RRESP,
  output SAXIGP5RVALID,
  output [3:0] SAXIGP5WACOUNT,
  output [7:0] SAXIGP5WCOUNT,
  output SAXIGP5WREADY,
  output SAXIGP6ARREADY,
  output SAXIGP6AWREADY,
  output [5:0] SAXIGP6BID,
  output [1:0] SAXIGP6BRESP,
  output SAXIGP6BVALID,
  output [3:0] SAXIGP6RACOUNT,
  output [7:0] SAXIGP6RCOUNT,
  output [127:0] SAXIGP6RDATA,
  output [5:0] SAXIGP6RID,
  output SAXIGP6RLAST,
  output [1:0] SAXIGP6RRESP,
  output SAXIGP6RVALID,
  output [3:0] SAXIGP6WACOUNT,
  output [7:0] SAXIGP6WCOUNT,
  output SAXIGP6WREADY,

  inout [3:0] PSS_ALTO_CORE_PAD_BOOTMODE,
  inout PSS_ALTO_CORE_PAD_CLK,
  inout PSS_ALTO_CORE_PAD_DONEB,
  inout [17:0] PSS_ALTO_CORE_PAD_DRAMA,
  inout PSS_ALTO_CORE_PAD_DRAMACTN,
  inout PSS_ALTO_CORE_PAD_DRAMALERTN,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMBA,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMBG,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMCK,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMCKE,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMCKN,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMCSN,
  inout [8:0] PSS_ALTO_CORE_PAD_DRAMDM,
  inout [71:0] PSS_ALTO_CORE_PAD_DRAMDQ,
  inout [8:0] PSS_ALTO_CORE_PAD_DRAMDQS,
  inout [8:0] PSS_ALTO_CORE_PAD_DRAMDQSN,
  inout [1:0] PSS_ALTO_CORE_PAD_DRAMODT,
  inout PSS_ALTO_CORE_PAD_DRAMPARITY,
  inout PSS_ALTO_CORE_PAD_DRAMRAMRSTN,
  inout PSS_ALTO_CORE_PAD_ERROROUT,
  inout PSS_ALTO_CORE_PAD_ERRORSTATUS,
  inout PSS_ALTO_CORE_PAD_INITB,
  inout PSS_ALTO_CORE_PAD_JTAGTCK,
  inout PSS_ALTO_CORE_PAD_JTAGTDI,
  inout PSS_ALTO_CORE_PAD_JTAGTDO,
  inout PSS_ALTO_CORE_PAD_JTAGTMS,
  inout [77:0] PSS_ALTO_CORE_PAD_MIO,
  inout PSS_ALTO_CORE_PAD_PORB,
  inout PSS_ALTO_CORE_PAD_PROGB,
  inout PSS_ALTO_CORE_PAD_RCALIBINOUT,
  inout PSS_ALTO_CORE_PAD_SRSTB,
  inout PSS_ALTO_CORE_PAD_ZQ,

  input [7:0] ADMAFCICLK,
  input AIBPMUAFIFMFPDACK,
  input AIBPMUAFIFMLPDACK,
  input DDRCEXTREFRESHRANK0REQ,
  input DDRCEXTREFRESHRANK1REQ,
  input DDRCREFRESHPLCLK,
  input DPAUXDATAIN,
  input DPEXTERNALCUSTOMEVENT1,
  input DPEXTERNALCUSTOMEVENT2,
  input DPEXTERNALVSYNCEVENT,
  input DPHOTPLUGDETECT,
  input [7:0] DPLIVEGFXALPHAIN,
  input [35:0] DPLIVEGFXPIXEL1IN,
  input DPLIVEVIDEOINDE,
  input DPLIVEVIDEOINHSYNC,
  input [35:0] DPLIVEVIDEOINPIXEL1,
  input DPLIVEVIDEOINVSYNC,
  input DPMAXISMIXEDAUDIOTREADY,
  input DPSAXISAUDIOCLK,
  input [31:0] DPSAXISAUDIOTDATA,
  input DPSAXISAUDIOTID,
  input DPSAXISAUDIOTVALID,
  input DPVIDEOINCLK,
  input EMIOCAN0PHYRX,
  input EMIOCAN1PHYRX,
  input EMIOENET0DMATXSTATUSTOG,
  input EMIOENET0EXTINTIN,
  input EMIOENET0GMIICOL,
  input EMIOENET0GMIICRS,
  input EMIOENET0GMIIRXCLK,
  input [7:0] EMIOENET0GMIIRXD,
  input EMIOENET0GMIIRXDV,
  input EMIOENET0GMIIRXER,
  input EMIOENET0GMIITXCLK,
  input EMIOENET0MDIOI,
  input EMIOENET0RXWOVERFLOW,
  input EMIOENET0TXRCONTROL,
  input [7:0] EMIOENET0TXRDATA,
  input EMIOENET0TXRDATARDY,
  input EMIOENET0TXREOP,
  input EMIOENET0TXRERR,
  input EMIOENET0TXRFLUSHED,
  input EMIOENET0TXRSOP,
  input EMIOENET0TXRUNDERFLOW,
  input EMIOENET0TXRVALID,
  input EMIOENET1DMATXSTATUSTOG,
  input EMIOENET1EXTINTIN,
  input EMIOENET1GMIICOL,
  input EMIOENET1GMIICRS,
  input EMIOENET1GMIIRXCLK,
  input [7:0] EMIOENET1GMIIRXD,
  input EMIOENET1GMIIRXDV,
  input EMIOENET1GMIIRXER,
  input EMIOENET1GMIITXCLK,
  input EMIOENET1MDIOI,
  input EMIOENET1RXWOVERFLOW,
  input EMIOENET1TXRCONTROL,
  input [7:0] EMIOENET1TXRDATA,
  input EMIOENET1TXRDATARDY,
  input EMIOENET1TXREOP,
  input EMIOENET1TXRERR,
  input EMIOENET1TXRFLUSHED,
  input EMIOENET1TXRSOP,
  input EMIOENET1TXRUNDERFLOW,
  input EMIOENET1TXRVALID,
  input EMIOENET2DMATXSTATUSTOG,
  input EMIOENET2EXTINTIN,
  input EMIOENET2GMIICOL,
  input EMIOENET2GMIICRS,
  input EMIOENET2GMIIRXCLK,
  input [7:0] EMIOENET2GMIIRXD,
  input EMIOENET2GMIIRXDV,
  input EMIOENET2GMIIRXER,
  input EMIOENET2GMIITXCLK,
  input EMIOENET2MDIOI,
  input EMIOENET2RXWOVERFLOW,
  input EMIOENET2TXRCONTROL,
  input [7:0] EMIOENET2TXRDATA,
  input EMIOENET2TXRDATARDY,
  input EMIOENET2TXREOP,
  input EMIOENET2TXRERR,
  input EMIOENET2TXRFLUSHED,
  input EMIOENET2TXRSOP,
  input EMIOENET2TXRUNDERFLOW,
  input EMIOENET2TXRVALID,
  input EMIOENET3DMATXSTATUSTOG,
  input EMIOENET3EXTINTIN,
  input EMIOENET3GMIICOL,
  input EMIOENET3GMIICRS,
  input EMIOENET3GMIIRXCLK,
  input [7:0] EMIOENET3GMIIRXD,
  input EMIOENET3GMIIRXDV,
  input EMIOENET3GMIIRXER,
  input EMIOENET3GMIITXCLK,
  input EMIOENET3MDIOI,
  input EMIOENET3RXWOVERFLOW,
  input EMIOENET3TXRCONTROL,
  input [7:0] EMIOENET3TXRDATA,
  input EMIOENET3TXRDATARDY,
  input EMIOENET3TXREOP,
  input EMIOENET3TXRERR,
  input EMIOENET3TXRFLUSHED,
  input EMIOENET3TXRSOP,
  input EMIOENET3TXRUNDERFLOW,
  input EMIOENET3TXRVALID,
  input EMIOENETTSUCLK,
  input [1:0] EMIOGEM0TSUINCCTRL,
  input [1:0] EMIOGEM1TSUINCCTRL,
  input [1:0] EMIOGEM2TSUINCCTRL,
  input [1:0] EMIOGEM3TSUINCCTRL,
  input [95:0] EMIOGPIOI,
  input EMIOHUBPORTOVERCRNTUSB20,
  input EMIOHUBPORTOVERCRNTUSB21,
  input EMIOHUBPORTOVERCRNTUSB30,
  input EMIOHUBPORTOVERCRNTUSB31,
  input EMIOI2C0SCLI,
  input EMIOI2C0SDAI,
  input EMIOI2C1SCLI,
  input EMIOI2C1SDAI,
  input EMIOSDIO0CDN,
  input EMIOSDIO0CMDIN,
  input [7:0] EMIOSDIO0DATAIN,
  input EMIOSDIO0FBCLKIN,
  input EMIOSDIO0WP,
  input EMIOSDIO1CDN,
  input EMIOSDIO1CMDIN,
  input [7:0] EMIOSDIO1DATAIN,
  input EMIOSDIO1FBCLKIN,
  input EMIOSDIO1WP,
  input EMIOSPI0MI,
  input EMIOSPI0SCLKI,
  input EMIOSPI0SI,
  input EMIOSPI0SSIN,
  input EMIOSPI1MI,
  input EMIOSPI1SCLKI,
  input EMIOSPI1SI,
  input EMIOSPI1SSIN,
  input [2:0] EMIOTTC0CLKI,
  input [2:0] EMIOTTC1CLKI,
  input [2:0] EMIOTTC2CLKI,
  input [2:0] EMIOTTC3CLKI,
  input EMIOUART0CTSN,
  input EMIOUART0DCDN,
  input EMIOUART0DSRN,
  input EMIOUART0RIN,
  input EMIOUART0RX,
  input EMIOUART1CTSN,
  input EMIOUART1DCDN,
  input EMIOUART1DSRN,
  input EMIOUART1RIN,
  input EMIOUART1RX,
  input EMIOWDT0CLKI,
  input EMIOWDT1CLKI,
  input FMIOGEM0FIFORXCLKFROMPL,
  input FMIOGEM0FIFOTXCLKFROMPL,
  input FMIOGEM0SIGNALDETECT,
  input FMIOGEM1FIFORXCLKFROMPL,
  input FMIOGEM1FIFOTXCLKFROMPL,
  input FMIOGEM1SIGNALDETECT,
  input FMIOGEM2FIFORXCLKFROMPL,
  input FMIOGEM2FIFOTXCLKFROMPL,
  input FMIOGEM2SIGNALDETECT,
  input FMIOGEM3FIFORXCLKFROMPL,
  input FMIOGEM3FIFOTXCLKFROMPL,
  input FMIOGEM3SIGNALDETECT,
  input FMIOGEMTSUCLKFROMPL,
  input [31:0] FTMGPI,
  input [7:0] GDMAFCICLK,
  input MAXIGP0ACLK,
  input MAXIGP0ARREADY,
  input MAXIGP0AWREADY,
  input [15:0] MAXIGP0BID,
  input [1:0] MAXIGP0BRESP,
  input MAXIGP0BVALID,
  input [127:0] MAXIGP0RDATA,
  input [15:0] MAXIGP0RID,
  input MAXIGP0RLAST,
  input [1:0] MAXIGP0RRESP,
  input MAXIGP0RVALID,
  input MAXIGP0WREADY,
  input MAXIGP1ACLK,
  input MAXIGP1ARREADY,
  input MAXIGP1AWREADY,
  input [15:0] MAXIGP1BID,
  input [1:0] MAXIGP1BRESP,
  input MAXIGP1BVALID,
  input [127:0] MAXIGP1RDATA,
  input [15:0] MAXIGP1RID,
  input MAXIGP1RLAST,
  input [1:0] MAXIGP1RRESP,
  input MAXIGP1RVALID,
  input MAXIGP1WREADY,
  input MAXIGP2ACLK,
  input MAXIGP2ARREADY,
  input MAXIGP2AWREADY,
  input [15:0] MAXIGP2BID,
  input [1:0] MAXIGP2BRESP,
  input MAXIGP2BVALID,
  input [127:0] MAXIGP2RDATA,
  input [15:0] MAXIGP2RID,
  input MAXIGP2RLAST,
  input [1:0] MAXIGP2RRESP,
  input MAXIGP2RVALID,
  input MAXIGP2WREADY,
  input NFIQ0LPDRPU,
  input NFIQ1LPDRPU,
  input NIRQ0LPDRPU,
  input NIRQ1LPDRPU,
  input [7:0] PL2ADMACVLD,
  input [7:0] PL2ADMATACK,
  input [7:0] PL2GDMACVLD,
  input [7:0] PL2GDMATACK,
  input PLACECLK,
  input PLACPINACT,
  input [3:0] PLFPGASTOP,
  input [2:0] PLLAUXREFCLKFPD,
  input [1:0] PLLAUXREFCLKLPD,
  input [31:0] PLPMUGPI,
  input [3:0] PLPSAPUGICFIQ,
  input [3:0] PLPSAPUGICIRQ,
  input PLPSEVENTI,
  input [7:0] PLPSIRQ0,
  input [7:0] PLPSIRQ1,
  input PLPSTRACECLK,
  input [3:0] PLPSTRIGACK,
  input [3:0] PLPSTRIGGER,
  input [3:0] PMUERRORFROMPL,
  input PSS_ALTO_CORE_PAD_MGTRXN0IN,
  input PSS_ALTO_CORE_PAD_MGTRXN1IN,
  input PSS_ALTO_CORE_PAD_MGTRXN2IN,
  input PSS_ALTO_CORE_PAD_MGTRXN3IN,
  input PSS_ALTO_CORE_PAD_MGTRXP0IN,
  input PSS_ALTO_CORE_PAD_MGTRXP1IN,
  input PSS_ALTO_CORE_PAD_MGTRXP2IN,
  input PSS_ALTO_CORE_PAD_MGTRXP3IN,
  input PSS_ALTO_CORE_PAD_PADI,
  input PSS_ALTO_CORE_PAD_REFN0IN,
  input PSS_ALTO_CORE_PAD_REFN1IN,
  input PSS_ALTO_CORE_PAD_REFN2IN,
  input PSS_ALTO_CORE_PAD_REFN3IN,
  input PSS_ALTO_CORE_PAD_REFP0IN,
  input PSS_ALTO_CORE_PAD_REFP1IN,
  input PSS_ALTO_CORE_PAD_REFP2IN,
  input PSS_ALTO_CORE_PAD_REFP3IN,
  input RPUEVENTI0,
  input RPUEVENTI1,
  input SACEFPDACREADY,
  input [43:0] SACEFPDARADDR,
  input [1:0] SACEFPDARBAR,
  input [1:0] SACEFPDARBURST,
  input [3:0] SACEFPDARCACHE,
  input [1:0] SACEFPDARDOMAIN,
  input [5:0] SACEFPDARID,
  input [7:0] SACEFPDARLEN,
  input SACEFPDARLOCK,
  input [2:0] SACEFPDARPROT,
  input [3:0] SACEFPDARQOS,
  input [3:0] SACEFPDARREGION,
  input [2:0] SACEFPDARSIZE,
  input [3:0] SACEFPDARSNOOP,
  input [15:0] SACEFPDARUSER,
  input SACEFPDARVALID,
  input [43:0] SACEFPDAWADDR,
  input [1:0] SACEFPDAWBAR,
  input [1:0] SACEFPDAWBURST,
  input [3:0] SACEFPDAWCACHE,
  input [1:0] SACEFPDAWDOMAIN,
  input [5:0] SACEFPDAWID,
  input [7:0] SACEFPDAWLEN,
  input SACEFPDAWLOCK,
  input [2:0] SACEFPDAWPROT,
  input [3:0] SACEFPDAWQOS,
  input [3:0] SACEFPDAWREGION,
  input [2:0] SACEFPDAWSIZE,
  input [2:0] SACEFPDAWSNOOP,
  input [15:0] SACEFPDAWUSER,
  input SACEFPDAWVALID,
  input SACEFPDBREADY,
  input [127:0] SACEFPDCDDATA,
  input SACEFPDCDLAST,
  input SACEFPDCDVALID,
  input [4:0] SACEFPDCRRESP,
  input SACEFPDCRVALID,
  input SACEFPDRACK,
  input SACEFPDRREADY,
  input SACEFPDWACK,
  input [127:0] SACEFPDWDATA,
  input SACEFPDWLAST,
  input [15:0] SACEFPDWSTRB,
  input SACEFPDWUSER,
  input SACEFPDWVALID,
  input SAXIACPACLK,
  input [39:0] SAXIACPARADDR,
  input [1:0] SAXIACPARBURST,
  input [3:0] SAXIACPARCACHE,
  input [4:0] SAXIACPARID,
  input [7:0] SAXIACPARLEN,
  input SAXIACPARLOCK,
  input [2:0] SAXIACPARPROT,
  input [3:0] SAXIACPARQOS,
  input [2:0] SAXIACPARSIZE,
  input [1:0] SAXIACPARUSER,
  input SAXIACPARVALID,
  input [39:0] SAXIACPAWADDR,
  input [1:0] SAXIACPAWBURST,
  input [3:0] SAXIACPAWCACHE,
  input [4:0] SAXIACPAWID,
  input [7:0] SAXIACPAWLEN,
  input SAXIACPAWLOCK,
  input [2:0] SAXIACPAWPROT,
  input [3:0] SAXIACPAWQOS,
  input [2:0] SAXIACPAWSIZE,
  input [1:0] SAXIACPAWUSER,
  input SAXIACPAWVALID,
  input SAXIACPBREADY,
  input SAXIACPRREADY,
  input [127:0] SAXIACPWDATA,
  input SAXIACPWLAST,
  input [15:0] SAXIACPWSTRB,
  input SAXIACPWVALID,
  input [48:0] SAXIGP0ARADDR,
  input [1:0] SAXIGP0ARBURST,
  input [3:0] SAXIGP0ARCACHE,
  input [5:0] SAXIGP0ARID,
  input [7:0] SAXIGP0ARLEN,
  input SAXIGP0ARLOCK,
  input [2:0] SAXIGP0ARPROT,
  input [3:0] SAXIGP0ARQOS,
  input [2:0] SAXIGP0ARSIZE,
  input SAXIGP0ARUSER,
  input SAXIGP0ARVALID,
  input [48:0] SAXIGP0AWADDR,
  input [1:0] SAXIGP0AWBURST,
  input [3:0] SAXIGP0AWCACHE,
  input [5:0] SAXIGP0AWID,
  input [7:0] SAXIGP0AWLEN,
  input SAXIGP0AWLOCK,
  input [2:0] SAXIGP0AWPROT,
  input [3:0] SAXIGP0AWQOS,
  input [2:0] SAXIGP0AWSIZE,
  input SAXIGP0AWUSER,
  input SAXIGP0AWVALID,
  input SAXIGP0BREADY,
  input SAXIGP0RCLK,
  input SAXIGP0RREADY,
  input SAXIGP0WCLK,
  input [127:0] SAXIGP0WDATA,
  input SAXIGP0WLAST,
  input [15:0] SAXIGP0WSTRB,
  input SAXIGP0WVALID,
  input [48:0] SAXIGP1ARADDR,
  input [1:0] SAXIGP1ARBURST,
  input [3:0] SAXIGP1ARCACHE,
  input [5:0] SAXIGP1ARID,
  input [7:0] SAXIGP1ARLEN,
  input SAXIGP1ARLOCK,
  input [2:0] SAXIGP1ARPROT,
  input [3:0] SAXIGP1ARQOS,
  input [2:0] SAXIGP1ARSIZE,
  input SAXIGP1ARUSER,
  input SAXIGP1ARVALID,
  input [48:0] SAXIGP1AWADDR,
  input [1:0] SAXIGP1AWBURST,
  input [3:0] SAXIGP1AWCACHE,
  input [5:0] SAXIGP1AWID,
  input [7:0] SAXIGP1AWLEN,
  input SAXIGP1AWLOCK,
  input [2:0] SAXIGP1AWPROT,
  input [3:0] SAXIGP1AWQOS,
  input [2:0] SAXIGP1AWSIZE,
  input SAXIGP1AWUSER,
  input SAXIGP1AWVALID,
  input SAXIGP1BREADY,
  input SAXIGP1RCLK,
  input SAXIGP1RREADY,
  input SAXIGP1WCLK,
  input [127:0] SAXIGP1WDATA,
  input SAXIGP1WLAST,
  input [15:0] SAXIGP1WSTRB,
  input SAXIGP1WVALID,
  input [48:0] SAXIGP2ARADDR,
  input [1:0] SAXIGP2ARBURST,
  input [3:0] SAXIGP2ARCACHE,
  input [5:0] SAXIGP2ARID,
  input [7:0] SAXIGP2ARLEN,
  input SAXIGP2ARLOCK,
  input [2:0] SAXIGP2ARPROT,
  input [3:0] SAXIGP2ARQOS,
  input [2:0] SAXIGP2ARSIZE,
  input SAXIGP2ARUSER,
  input SAXIGP2ARVALID,
  input [48:0] SAXIGP2AWADDR,
  input [1:0] SAXIGP2AWBURST,
  input [3:0] SAXIGP2AWCACHE,
  input [5:0] SAXIGP2AWID,
  input [7:0] SAXIGP2AWLEN,
  input SAXIGP2AWLOCK,
  input [2:0] SAXIGP2AWPROT,
  input [3:0] SAXIGP2AWQOS,
  input [2:0] SAXIGP2AWSIZE,
  input SAXIGP2AWUSER,
  input SAXIGP2AWVALID,
  input SAXIGP2BREADY,
  input SAXIGP2RCLK,
  input SAXIGP2RREADY,
  input SAXIGP2WCLK,
  input [127:0] SAXIGP2WDATA,
  input SAXIGP2WLAST,
  input [15:0] SAXIGP2WSTRB,
  input SAXIGP2WVALID,
  input [48:0] SAXIGP3ARADDR,
  input [1:0] SAXIGP3ARBURST,
  input [3:0] SAXIGP3ARCACHE,
  input [5:0] SAXIGP3ARID,
  input [7:0] SAXIGP3ARLEN,
  input SAXIGP3ARLOCK,
  input [2:0] SAXIGP3ARPROT,
  input [3:0] SAXIGP3ARQOS,
  input [2:0] SAXIGP3ARSIZE,
  input SAXIGP3ARUSER,
  input SAXIGP3ARVALID,
  input [48:0] SAXIGP3AWADDR,
  input [1:0] SAXIGP3AWBURST,
  input [3:0] SAXIGP3AWCACHE,
  input [5:0] SAXIGP3AWID,
  input [7:0] SAXIGP3AWLEN,
  input SAXIGP3AWLOCK,
  input [2:0] SAXIGP3AWPROT,
  input [3:0] SAXIGP3AWQOS,
  input [2:0] SAXIGP3AWSIZE,
  input SAXIGP3AWUSER,
  input SAXIGP3AWVALID,
  input SAXIGP3BREADY,
  input SAXIGP3RCLK,
  input SAXIGP3RREADY,
  input SAXIGP3WCLK,
  input [127:0] SAXIGP3WDATA,
  input SAXIGP3WLAST,
  input [15:0] SAXIGP3WSTRB,
  input SAXIGP3WVALID,
  input [48:0] SAXIGP4ARADDR,
  input [1:0] SAXIGP4ARBURST,
  input [3:0] SAXIGP4ARCACHE,
  input [5:0] SAXIGP4ARID,
  input [7:0] SAXIGP4ARLEN,
  input SAXIGP4ARLOCK,
  input [2:0] SAXIGP4ARPROT,
  input [3:0] SAXIGP4ARQOS,
  input [2:0] SAXIGP4ARSIZE,
  input SAXIGP4ARUSER,
  input SAXIGP4ARVALID,
  input [48:0] SAXIGP4AWADDR,
  input [1:0] SAXIGP4AWBURST,
  input [3:0] SAXIGP4AWCACHE,
  input [5:0] SAXIGP4AWID,
  input [7:0] SAXIGP4AWLEN,
  input SAXIGP4AWLOCK,
  input [2:0] SAXIGP4AWPROT,
  input [3:0] SAXIGP4AWQOS,
  input [2:0] SAXIGP4AWSIZE,
  input SAXIGP4AWUSER,
  input SAXIGP4AWVALID,
  input SAXIGP4BREADY,
  input SAXIGP4RCLK,
  input SAXIGP4RREADY,
  input SAXIGP4WCLK,
  input [127:0] SAXIGP4WDATA,
  input SAXIGP4WLAST,
  input [15:0] SAXIGP4WSTRB,
  input SAXIGP4WVALID,
  input [48:0] SAXIGP5ARADDR,
  input [1:0] SAXIGP5ARBURST,
  input [3:0] SAXIGP5ARCACHE,
  input [5:0] SAXIGP5ARID,
  input [7:0] SAXIGP5ARLEN,
  input SAXIGP5ARLOCK,
  input [2:0] SAXIGP5ARPROT,
  input [3:0] SAXIGP5ARQOS,
  input [2:0] SAXIGP5ARSIZE,
  input SAXIGP5ARUSER,
  input SAXIGP5ARVALID,
  input [48:0] SAXIGP5AWADDR,
  input [1:0] SAXIGP5AWBURST,
  input [3:0] SAXIGP5AWCACHE,
  input [5:0] SAXIGP5AWID,
  input [7:0] SAXIGP5AWLEN,
  input SAXIGP5AWLOCK,
  input [2:0] SAXIGP5AWPROT,
  input [3:0] SAXIGP5AWQOS,
  input [2:0] SAXIGP5AWSIZE,
  input SAXIGP5AWUSER,
  input SAXIGP5AWVALID,
  input SAXIGP5BREADY,
  input SAXIGP5RCLK,
  input SAXIGP5RREADY,
  input SAXIGP5WCLK,
  input [127:0] SAXIGP5WDATA,
  input SAXIGP5WLAST,
  input [15:0] SAXIGP5WSTRB,
  input SAXIGP5WVALID,
  input [48:0] SAXIGP6ARADDR,
  input [1:0] SAXIGP6ARBURST,
  input [3:0] SAXIGP6ARCACHE,
  input [5:0] SAXIGP6ARID,
  input [7:0] SAXIGP6ARLEN,
  input SAXIGP6ARLOCK,
  input [2:0] SAXIGP6ARPROT,
  input [3:0] SAXIGP6ARQOS,
  input [2:0] SAXIGP6ARSIZE,
  input SAXIGP6ARUSER,
  input SAXIGP6ARVALID,
  input [48:0] SAXIGP6AWADDR,
  input [1:0] SAXIGP6AWBURST,
  input [3:0] SAXIGP6AWCACHE,
  input [5:0] SAXIGP6AWID,
  input [7:0] SAXIGP6AWLEN,
  input SAXIGP6AWLOCK,
  input [2:0] SAXIGP6AWPROT,
  input [3:0] SAXIGP6AWQOS,
  input [2:0] SAXIGP6AWSIZE,
  input SAXIGP6AWUSER,
  input SAXIGP6AWVALID,
  input SAXIGP6BREADY,
  input SAXIGP6RCLK,
  input SAXIGP6RREADY,
  input SAXIGP6WCLK,
  input [127:0] SAXIGP6WDATA,
  input SAXIGP6WLAST,
  input [15:0] SAXIGP6WSTRB,
  input SAXIGP6WVALID,
  input [59:0] STMEVENT
);
endmodule


module PULLDOWN (O);
    parameter LOC = "UNPLACED";
    output O;
endmodule


module PULLUP (O);
    parameter LOC = "UNPLACED";
    output O;
endmodule


module RAM128X1D #(
    parameter [127:0] INIT = 128'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output DPO,
    output SPO,

    input [6:0] A,
    input D,
    input [6:0] DPRA,
    input WCLK,
    input WE
);
endmodule


module RAM128X1S #(
    parameter [127:0] INIT = 128'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output O,

    input  A0,
    input  A1,
    input  A2,
    input  A3,
    input  A4,
    input  A5,
    input  A6,
    input D,
    input WCLK,
    input WE
);
endmodule


module RAM256X1D #(
    parameter [255:0] INIT = 256'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output DPO,
    output SPO,

    input [7:0] A,
    input D,
    input [7:0] DPRA,
    input WCLK,
    input WE
);
endmodule


module RAM256X1S #(
    parameter [255:0] INIT = 256'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output O,

    input [7:0] A,
    input D,
    input WCLK,
    input WE
);
endmodule


module RAM32M #(
  parameter [63:0] INIT_A = 64'h0000000000000000,
  parameter [63:0] INIT_B = 64'h0000000000000000,
  parameter [63:0] INIT_C = 64'h0000000000000000,
  parameter [63:0] INIT_D = 64'h0000000000000000,
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output [1:0] DOA,
  output [1:0] DOB,
  output [1:0] DOC,
  output [1:0] DOD,

  input [4:0] ADDRA,
  input [4:0] ADDRB,
  input [4:0] ADDRC,
  input [4:0] ADDRD,
  input [1:0] DIA,
  input [1:0] DIB,
  input [1:0] DIC,
  input [1:0] DID,
  input WCLK,
  input WE
);
endmodule


module RAM32M16 #(
  parameter [63:0] INIT_A = 64'h0000000000000000,
  parameter [63:0] INIT_B = 64'h0000000000000000,
  parameter [63:0] INIT_C = 64'h0000000000000000,
  parameter [63:0] INIT_D = 64'h0000000000000000,
  parameter [63:0] INIT_E = 64'h0000000000000000,
  parameter [63:0] INIT_F = 64'h0000000000000000,
  parameter [63:0] INIT_G = 64'h0000000000000000,
  parameter [63:0] INIT_H = 64'h0000000000000000,
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output [1:0] DOA,
  output [1:0] DOB,
  output [1:0] DOC,
  output [1:0] DOD,
  output [1:0] DOE,
  output [1:0] DOF,
  output [1:0] DOG,
  output [1:0] DOH,

  input [4:0] ADDRA,
  input [4:0] ADDRB,
  input [4:0] ADDRC,
  input [4:0] ADDRD,
  input [4:0] ADDRE,
  input [4:0] ADDRF,
  input [4:0] ADDRG,
  input [4:0] ADDRH,
  input [1:0] DIA,
  input [1:0] DIB,
  input [1:0] DIC,
  input [1:0] DID,
  input [1:0] DIE,
  input [1:0] DIF,
  input [1:0] DIG,
  input [1:0] DIH,
  input WCLK,
  input WE
);
endmodule


module RAM32X16DR8 #(
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output DOA,
  output DOB,
  output DOC,
  output DOD,
  output DOE,
  output DOF,
  output DOG,
  output [1:0] DOH,

  input [5:0] ADDRA,
  input [5:0] ADDRB,
  input [5:0] ADDRC,
  input [5:0] ADDRD,
  input [5:0] ADDRE,
  input [5:0] ADDRF,
  input [5:0] ADDRG,
  input [4:0] ADDRH,
  input [1:0] DIA,
  input [1:0] DIB,
  input [1:0] DIC,
  input [1:0] DID,
  input [1:0] DIE,
  input [1:0] DIF,
  input [1:0] DIG,
  input [1:0] DIH,
  input WCLK,
  input WE
);
endmodule


module RAM32X1D #(
    parameter [31:0] INIT = 32'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output DPO,
    output SPO,

    input  A0,
    input  A1,
    input  A2,
    input  A3,
    input  A4,
    input D,
    input  DPRA0,
    input  DPRA1,
    input  DPRA2,
    input  DPRA3,
    input  DPRA4,
    input WCLK,
    input WE
);
endmodule


module RAM32X1S #(
    parameter [31:0] INIT = 32'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output O,

    input  A0,
    input  A1,
    input  A2,
    input  A3,
    input  A4,
    input D,
    input WCLK,
    input WE
);
endmodule


module RAM512X1S #(
    parameter [511:0] INIT = 512'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output O,

    input [8:0] A,
    input D,
    input WCLK,
    input WE
);
endmodule


module RAM64M #(
  parameter [63:0] INIT_A = 64'h0000000000000000,
  parameter [63:0] INIT_B = 64'h0000000000000000,
  parameter [63:0] INIT_C = 64'h0000000000000000,
  parameter [63:0] INIT_D = 64'h0000000000000000,
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output DOA,
  output DOB,
  output DOC,
  output DOD,

  input [5:0] ADDRA,
  input [5:0] ADDRB,
  input [5:0] ADDRC,
  input [5:0] ADDRD,
  input DIA,
  input DIB,
  input DIC,
  input DID,
  input WCLK,
  input WE
);
endmodule


module RAM64M8 #(
  parameter [63:0] INIT_A = 64'h0000000000000000,
  parameter [63:0] INIT_B = 64'h0000000000000000,
  parameter [63:0] INIT_C = 64'h0000000000000000,
  parameter [63:0] INIT_D = 64'h0000000000000000,
  parameter [63:0] INIT_E = 64'h0000000000000000,
  parameter [63:0] INIT_F = 64'h0000000000000000,
  parameter [63:0] INIT_G = 64'h0000000000000000,
  parameter [63:0] INIT_H = 64'h0000000000000000,
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output DOA,
  output DOB,
  output DOC,
  output DOD,
  output DOE,
  output DOF,
  output DOG,
  output DOH,

  input [5:0] ADDRA,
  input [5:0] ADDRB,
  input [5:0] ADDRC,
  input [5:0] ADDRD,
  input [5:0] ADDRE,
  input [5:0] ADDRF,
  input [5:0] ADDRG,
  input [5:0] ADDRH,
  input DIA,
  input DIB,
  input DIC,
  input DID,
  input DIE,
  input DIF,
  input DIG,
  input DIH,
  input WCLK,
  input WE
);
endmodule


module RAM64X1D #(
    parameter [63:0] INIT = 64'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output DPO,
    output SPO,

    input  A0,
    input  A1,
    input  A2,
    input  A3,
    input  A4,
    input  A5,
    input D,
    input  DPRA0,
    input  DPRA1,
    input  DPRA2,
    input  DPRA3,
    input  DPRA4,
    input  DPRA5,
    input WCLK,
    input WE
);
endmodule


module RAM64X1S #(
    parameter [63:0] INIT = 64'h0,
    parameter [0:0] IS_WCLK_INVERTED = 1'b0
) (
    output O,

    input  A0,
    input  A1,
    input  A2,
    input  A3,
    input  A4,
    input  A5,
    input D,
    input WCLK,
    input WE
);
endmodule


module RAM64X8SW #(
  parameter [63:0] INIT_A = 64'h0000000000000000,
  parameter [63:0] INIT_B = 64'h0000000000000000,
  parameter [63:0] INIT_C = 64'h0000000000000000,
  parameter [63:0] INIT_D = 64'h0000000000000000,
  parameter [63:0] INIT_E = 64'h0000000000000000,
  parameter [63:0] INIT_F = 64'h0000000000000000,
  parameter [63:0] INIT_G = 64'h0000000000000000,
  parameter [63:0] INIT_H = 64'h0000000000000000,
  parameter [0:0] IS_WCLK_INVERTED = 1'b0
)(
  output [7:0] O,

  input [5:0] A,
  input D,
  input WCLK,
  input WE,
  input [2:0] WSEL
);
endmodule

    
module RAMB18E1 (DOADO, DOBDO, DOPADOP, DOPBDOP,
       ADDRARDADDR, ADDRBWRADDR, CLKARDCLK, CLKBWRCLK, DIADI, DIBDI, DIPADIP, DIPBDIP, ENARDEN, ENBWREN, REGCEAREGCE, REGCEB, RSTRAMARSTRAM, RSTRAMB, RSTREGARSTREG, RSTREGB, WEA, WEBWE);
    parameter integer DOA_REG = 0;
    parameter integer DOB_REG = 0;
    parameter [255:0] INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [17:0] INIT_A = 18'h0;
    parameter [17:0] INIT_B = 18'h0;
    parameter INIT_FILE = "NONE";
    parameter IS_CLKARDCLK_INVERTED = 1'b0;
    parameter IS_CLKBWRCLK_INVERTED = 1'b0;
    parameter IS_ENARDEN_INVERTED = 1'b0;
    parameter IS_ENBWREN_INVERTED = 1'b0;
    parameter IS_RSTRAMARSTRAM_INVERTED = 1'b0;
    parameter IS_RSTRAMB_INVERTED = 1'b0;
    parameter IS_RSTREGARSTREG_INVERTED = 1'b0;
    parameter IS_RSTREGB_INVERTED = 1'b0;
    parameter LOC = "UNPLACED";
    parameter RAM_MODE = "TDP";
    parameter RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE";
    parameter integer READ_WIDTH_A = 0;
    parameter integer READ_WIDTH_B = 0;
    parameter RSTREG_PRIORITY_A = "RSTREG";
    parameter RSTREG_PRIORITY_B = "RSTREG";
    parameter SIM_COLLISION_CHECK = "ALL";
    parameter SIM_DEVICE = "7SERIES";
    parameter [17:0] SRVAL_A = 18'h0;
    parameter [17:0] SRVAL_B = 18'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter integer WRITE_WIDTH_A = 0;
    parameter integer WRITE_WIDTH_B = 0;
    output [15:0] DOADO;
    output [15:0] DOBDO;
    output [1:0] DOPADOP;
    output [1:0] DOPBDOP;
    input CLKARDCLK;
    input CLKBWRCLK;
    input ENARDEN;
    input ENBWREN;
    input REGCEAREGCE;
    input REGCEB;
    input RSTRAMARSTRAM;
    input RSTRAMB;
    input RSTREGARSTREG;
    input RSTREGB;
    input [13:0] ADDRARDADDR;
    input [13:0] ADDRBWRADDR;
    input [15:0] DIADI;
    input [15:0] DIBDI;
    input [1:0] DIPADIP;
    input [1:0] DIPBDIP;
    input [1:0] WEA;
    input [3:0] WEBWE;
endmodule


module SIM_CONFIGE3 #( 
  parameter DEVICE_ID = 32'h0,
  parameter ICAP_SUPPORT = "FALSE",
  parameter ICAP_WIDTH = "X8"
) (
  output AVAIL,
  output CSOB,
  output PRDONE,
  output PRERROR,
  inout  DONE,
  input  CCLK,
  input  CSB,
  inout  [31:0] D,
  inout  INITB,
  input  [2:0] M,
  input  PROGB,
  input  RDWRB
);
endmodule


module SRL16E #(
  parameter [15:0] INIT = 16'h0000,
  parameter [0:0] IS_CLK_INVERTED = 1'b0
)(
  output Q,
  
  input A0,
  input A1,
  input A2,
  input A3,
  input CE,
  input CLK,
  input D
);
endmodule


module SRLC16E #(
  parameter [15:0] INIT = 16'h0000,
  parameter [0:0] IS_CLK_INVERTED = 1'b0
)(
  output Q,
  output Q15,
  
  input A0,
  input A1,
  input A2,
  input A3,
  input CE,
  input CLK,
  input D
);
endmodule


module SRLC32E #(
  parameter [31:0] INIT = 32'h00000000,
  parameter [0:0] IS_CLK_INVERTED = 1'b0
)(
  output Q,
  output Q31,
  
  input [4:0] A,
  input CE,
  input CLK,
  input D
);
endmodule


module STARTUPE2 #(
  parameter PROG_USR = "FALSE",
  parameter real SIM_CCLK_FREQ = 0.0
)(
  output CFGCLK,
  output CFGMCLK,
  output EOS,
  output PREQ,

  input CLK,
  input GSR,
  input GTS,
  input KEYCLEARB,
  input PACK,
  input USRCCLKO,
  input USRCCLKTS,
  input USRDONEO,
  input USRDONETS
);
endmodule


module STARTUPE3 #(
  parameter PROG_USR = "FALSE",
  parameter real SIM_CCLK_FREQ = 0.0
)(
  output CFGCLK,
  output CFGMCLK,
  output [3:0] DI,
  output EOS,
  output PREQ,

  input [3:0] DO,
  input [3:0] DTS,
  input FCSBO,
  input FCSBTS,
  input GSR,
  input GTS,
  input KEYCLEARB,
  input PACK,
  input USRCCLKO,
  input USRCCLKTS,
  input USRDONEO,
  input USRDONETS
);
endmodule


  module SYSMONE1 #(
  parameter [15:0] INIT_40 = 16'h0000,
  parameter [15:0] INIT_41 = 16'h0000,
  parameter [15:0] INIT_42 = 16'h0000,
  parameter [15:0] INIT_43 = 16'h0000,
  parameter [15:0] INIT_44 = 16'h0000,
  parameter [15:0] INIT_45 = 16'h0000,
  parameter [15:0] INIT_46 = 16'h0000,
  parameter [15:0] INIT_47 = 16'h0000,
  parameter [15:0] INIT_48 = 16'h0000,
  parameter [15:0] INIT_49 = 16'h0000,
  parameter [15:0] INIT_4A = 16'h0000,
  parameter [15:0] INIT_4B = 16'h0000,
  parameter [15:0] INIT_4C = 16'h0000,
  parameter [15:0] INIT_4D = 16'h0000,
  parameter [15:0] INIT_4E = 16'h0000,
  parameter [15:0] INIT_4F = 16'h0000,
  parameter [15:0] INIT_50 = 16'h0000,
  parameter [15:0] INIT_51 = 16'h0000,
  parameter [15:0] INIT_52 = 16'h0000,
  parameter [15:0] INIT_53 = 16'h0000,
  parameter [15:0] INIT_54 = 16'h0000,
  parameter [15:0] INIT_55 = 16'h0000,
  parameter [15:0] INIT_56 = 16'h0000,
  parameter [15:0] INIT_57 = 16'h0000,
  parameter [15:0] INIT_58 = 16'h0000,
  parameter [15:0] INIT_59 = 16'h0000,
  parameter [15:0] INIT_5A = 16'h0000,
  parameter [15:0] INIT_5B = 16'h0000,
  parameter [15:0] INIT_5C = 16'h0000,
  parameter [15:0] INIT_5D = 16'h0000,
  parameter [15:0] INIT_5E = 16'h0000,
  parameter [15:0] INIT_5F = 16'h0000,
  parameter [15:0] INIT_60 = 16'h0000,
  parameter [15:0] INIT_61 = 16'h0000,
  parameter [15:0] INIT_62 = 16'h0000,
  parameter [15:0] INIT_63 = 16'h0000,
  parameter [15:0] INIT_64 = 16'h0000,
  parameter [15:0] INIT_65 = 16'h0000,
  parameter [15:0] INIT_66 = 16'h0000,
  parameter [15:0] INIT_67 = 16'h0000,
  parameter [15:0] INIT_68 = 16'h0000,
  parameter [15:0] INIT_69 = 16'h0000,
  parameter [15:0] INIT_6A = 16'h0000,
  parameter [15:0] INIT_6B = 16'h0000,
  parameter [15:0] INIT_6C = 16'h0000,
  parameter [15:0] INIT_6D = 16'h0000,
  parameter [15:0] INIT_6E = 16'h0000,
  parameter [15:0] INIT_6F = 16'h0000,
  parameter [15:0] INIT_70 = 16'h0000,
  parameter [15:0] INIT_71 = 16'h0000,
  parameter [15:0] INIT_72 = 16'h0000,
  parameter [15:0] INIT_73 = 16'h0000,
  parameter [15:0] INIT_74 = 16'h0000,
  parameter [15:0] INIT_75 = 16'h0000,
  parameter [15:0] INIT_76 = 16'h0000,
  parameter [15:0] INIT_77 = 16'h0000,
  parameter [15:0] INIT_78 = 16'h0000,
  parameter [15:0] INIT_79 = 16'h0000,
  parameter [15:0] INIT_7A = 16'h0000,
  parameter [15:0] INIT_7B = 16'h0000,
  parameter [15:0] INIT_7C = 16'h0000,
  parameter [15:0] INIT_7D = 16'h0000,
  parameter [15:0] INIT_7E = 16'h0000,
  parameter [15:0] INIT_7F = 16'h0000,
  parameter [0:0] IS_CONVSTCLK_INVERTED = 1'b0,
  parameter [0:0] IS_DCLK_INVERTED = 1'b0,
  parameter SIM_MONITOR_FILE = "design.txt",
  parameter integer SYSMON_VUSER0_BANK = 0,
  parameter SYSMON_VUSER0_MONITOR = "NONE",
  parameter integer SYSMON_VUSER1_BANK = 0,
  parameter SYSMON_VUSER1_MONITOR = "NONE",
  parameter integer SYSMON_VUSER2_BANK = 0,
  parameter SYSMON_VUSER2_MONITOR = "NONE",
  parameter integer SYSMON_VUSER3_BANK = 0,
  parameter SYSMON_VUSER3_MONITOR = "NONE"        
)(

  output [15:0] ALM,
  output BUSY,
  output [5:0] CHANNEL,
  output [15:0] DO,
  output DRDY,
  output EOC,
  output EOS,
  output I2C_SCLK_TS,
  output I2C_SDA_TS,
  output JTAGBUSY,
  output JTAGLOCKED,
  output JTAGMODIFIED,
  output [4:0] MUXADDR,
  output OT,
  
  input CONVST,
  input CONVSTCLK,
  input [7:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input I2C_SCLK,
  input I2C_SDA,
  input RESET,
  input [15:0] VAUXN,
  input [15:0] VAUXP,
  input VN,
  input VP
  );
endmodule 


  module SYSMONE4 #(
  parameter [15:0] COMMON_N_SOURCE = 16'hFFFF,
  parameter [15:0] INIT_40 = 16'h0000,
  parameter [15:0] INIT_41 = 16'h0000,
  parameter [15:0] INIT_42 = 16'h0000,
  parameter [15:0] INIT_43 = 16'h0000,
  parameter [15:0] INIT_44 = 16'h0000,
  parameter [15:0] INIT_45 = 16'h0000,
  parameter [15:0] INIT_46 = 16'h0000,
  parameter [15:0] INIT_47 = 16'h0000,
  parameter [15:0] INIT_48 = 16'h0000,
  parameter [15:0] INIT_49 = 16'h0000,
  parameter [15:0] INIT_4A = 16'h0000,
  parameter [15:0] INIT_4B = 16'h0000,
  parameter [15:0] INIT_4C = 16'h0000,
  parameter [15:0] INIT_4D = 16'h0000,
  parameter [15:0] INIT_4E = 16'h0000,
  parameter [15:0] INIT_4F = 16'h0000,
  parameter [15:0] INIT_50 = 16'h0000,
  parameter [15:0] INIT_51 = 16'h0000,
  parameter [15:0] INIT_52 = 16'h0000,
  parameter [15:0] INIT_53 = 16'h0000,
  parameter [15:0] INIT_54 = 16'h0000,
  parameter [15:0] INIT_55 = 16'h0000,
  parameter [15:0] INIT_56 = 16'h0000,
  parameter [15:0] INIT_57 = 16'h0000,
  parameter [15:0] INIT_58 = 16'h0000,
  parameter [15:0] INIT_59 = 16'h0000,
  parameter [15:0] INIT_5A = 16'h0000,
  parameter [15:0] INIT_5B = 16'h0000,
  parameter [15:0] INIT_5C = 16'h0000,
  parameter [15:0] INIT_5D = 16'h0000,
  parameter [15:0] INIT_5E = 16'h0000,
  parameter [15:0] INIT_5F = 16'h0000,
  parameter [15:0] INIT_60 = 16'h0000,
  parameter [15:0] INIT_61 = 16'h0000,
  parameter [15:0] INIT_62 = 16'h0000,
  parameter [15:0] INIT_63 = 16'h0000,
  parameter [15:0] INIT_64 = 16'h0000,
  parameter [15:0] INIT_65 = 16'h0000,
  parameter [15:0] INIT_66 = 16'h0000,
  parameter [15:0] INIT_67 = 16'h0000,
  parameter [15:0] INIT_68 = 16'h0000,
  parameter [15:0] INIT_69 = 16'h0000,
  parameter [15:0] INIT_6A = 16'h0000,
  parameter [15:0] INIT_6B = 16'h0000,
  parameter [15:0] INIT_6C = 16'h0000,
  parameter [15:0] INIT_6D = 16'h0000,
  parameter [15:0] INIT_6E = 16'h0000,
  parameter [15:0] INIT_6F = 16'h0000,
  parameter [15:0] INIT_70 = 16'h0000,
  parameter [15:0] INIT_71 = 16'h0000,
  parameter [15:0] INIT_72 = 16'h0000,
  parameter [15:0] INIT_73 = 16'h0000,
  parameter [15:0] INIT_74 = 16'h0000,
  parameter [15:0] INIT_75 = 16'h0000,
  parameter [15:0] INIT_76 = 16'h0000,
  parameter [15:0] INIT_77 = 16'h0000,
  parameter [15:0] INIT_78 = 16'h0000,
  parameter [15:0] INIT_79 = 16'h0000,
  parameter [15:0] INIT_7A = 16'h0000,
  parameter [15:0] INIT_7B = 16'h0000,
  parameter [15:0] INIT_7C = 16'h0000,
  parameter [15:0] INIT_7D = 16'h0000,
  parameter [15:0] INIT_7E = 16'h0000,
  parameter [15:0] INIT_7F = 16'h0000,
  parameter [0:0] IS_CONVSTCLK_INVERTED = 1'b0,
  parameter [0:0] IS_DCLK_INVERTED = 1'b0,
  parameter SIM_DEVICE = "ULTRASCALE_PLUS",   
  parameter SIM_MONITOR_FILE = "design.txt",
  parameter integer SYSMON_VUSER0_BANK = 0,
  parameter SYSMON_VUSER0_MONITOR = "NONE",
  parameter integer SYSMON_VUSER1_BANK = 0,
  parameter SYSMON_VUSER1_MONITOR = "NONE",
  parameter integer SYSMON_VUSER2_BANK = 0,
  parameter SYSMON_VUSER2_MONITOR = "NONE",
  parameter integer SYSMON_VUSER3_BANK = 0,
  parameter SYSMON_VUSER3_MONITOR = "NONE"        
)(
  output [15:0] ADC_DATA,
  output [15:0] ALM,
  output BUSY,
  output [5:0] CHANNEL,
  output [15:0] DO,
  output DRDY,
  output EOC,
  output EOS,
  output I2C_SCLK_TS,
  output I2C_SDA_TS,
  output JTAGBUSY,
  output JTAGLOCKED,
  output JTAGMODIFIED,
  output [4:0] MUXADDR,
  output OT,
  output SMBALERT_TS,
  
  input CONVST,
  input CONVSTCLK,
  input [7:0] DADDR,
  input DCLK,
  input DEN,
  input [15:0] DI,
  input DWE,
  input I2C_SCLK,
  input I2C_SDA,
  input RESET,
  input [15:0] VAUXN,
  input [15:0] VAUXP,
  input VN,
  input VP
  );
endmodule 


module TX_BITSLICE #(
  parameter integer DATA_WIDTH = 8,
  parameter DELAY_FORMAT = "TIME",
  parameter DELAY_TYPE = "FIXED",
  parameter integer DELAY_VALUE = 0,
  parameter ENABLE_PRE_EMPHASIS = "FALSE",
  parameter [0:0] INIT = 1'b1,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_RST_DLY_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter NATIVE_ODELAY_BYPASS = "FALSE",
  parameter OUTPUT_PHASE_90 = "FALSE",
  parameter real REFCLK_FREQUENCY = 300.0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter real SIM_VERSION = 2.0,
  parameter TBYTE_CTL = "TBYTE_IN",
  parameter UPDATE_MODE = "ASYNC"
)(
  output [8:0] CNTVALUEOUT,
  output O,
  output [39:0] RX_BIT_CTRL_OUT,
  output [39:0] TX_BIT_CTRL_OUT,
  output T_OUT,

  input CE,
  input CLK,
  input [8:0] CNTVALUEIN,
  input [7:0] D,
  input EN_VTC,
  input INC,
  input LOAD,
  input RST,
  input RST_DLY,
  input [39:0] RX_BIT_CTRL_IN,
  input T,
  input TBYTE_IN,
  input [39:0] TX_BIT_CTRL_IN
);
endmodule


module TX_BITSLICE_TRI #(
  parameter integer DATA_WIDTH = 8,
  parameter DELAY_FORMAT = "TIME",
  parameter DELAY_TYPE = "FIXED",
  parameter integer DELAY_VALUE = 0,
  parameter [0:0] INIT = 1'b1,
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_RST_DLY_INVERTED = 1'b0,
  parameter [0:0] IS_RST_INVERTED = 1'b0,
  parameter NATIVE_ODELAY_BYPASS = "FALSE",
  parameter OUTPUT_PHASE_90 = "FALSE",
  parameter real REFCLK_FREQUENCY = 300.0,
  parameter SIM_DEVICE = "ULTRASCALE",
  parameter real SIM_VERSION = 2.0,
  parameter UPDATE_MODE = "ASYNC"
)(
  output [39:0] BIT_CTRL_OUT,
  output [8:0] CNTVALUEOUT,
  output TRI_OUT,

  input [39:0] BIT_CTRL_IN,
  input CE,
  input CLK,
  input [8:0] CNTVALUEIN,
  input EN_VTC,
  input INC,
  input LOAD,
  input RST,
  input RST_DLY
);
endmodule


module URAM288 #(
  parameter integer AUTO_SLEEP_LATENCY = 8,
  parameter integer AVG_CONS_INACTIVE_CYCLES = 10,
  parameter BWE_MODE_A = "PARITY_INTERLEAVED",
  parameter BWE_MODE_B = "PARITY_INTERLEAVED",
  parameter CASCADE_ORDER_A = "NONE",
  parameter CASCADE_ORDER_B = "NONE",
  parameter EN_AUTO_SLEEP_MODE = "FALSE",
  parameter EN_ECC_RD_A = "FALSE",
  parameter EN_ECC_RD_B = "FALSE",
  parameter EN_ECC_WR_A = "FALSE",
  parameter EN_ECC_WR_B = "FALSE",
  parameter IREG_PRE_A = "FALSE",
  parameter IREG_PRE_B = "FALSE",
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_EN_A_INVERTED = 1'b0,
  parameter [0:0] IS_EN_B_INVERTED = 1'b0,
  parameter [0:0] IS_RDB_WR_A_INVERTED = 1'b0,
  parameter [0:0] IS_RDB_WR_B_INVERTED = 1'b0,
  parameter [0:0] IS_RST_A_INVERTED = 1'b0,
  parameter [0:0] IS_RST_B_INVERTED = 1'b0,
  parameter MATRIX_ID = "NONE",
  parameter integer NUM_UNIQUE_SELF_ADDR_A = 1,
  parameter integer NUM_UNIQUE_SELF_ADDR_B = 1,
  parameter integer NUM_URAM_IN_MATRIX = 1,
  parameter OREG_A = "FALSE",
  parameter OREG_B = "FALSE",
  parameter OREG_ECC_A = "FALSE",
  parameter OREG_ECC_B = "FALSE",
  parameter REG_CAS_A = "FALSE",
  parameter REG_CAS_B = "FALSE",
  parameter RST_MODE_A = "SYNC",
  parameter RST_MODE_B = "SYNC",
  parameter [10:0] SELF_ADDR_A = 11'h000,
  parameter [10:0] SELF_ADDR_B = 11'h000,
  parameter [10:0] SELF_MASK_A = 11'h7FF,
  parameter [10:0] SELF_MASK_B = 11'h7FF,
  parameter USE_EXT_CE_A = "FALSE",
  parameter USE_EXT_CE_B = "FALSE"
)(
  output [22:0] CAS_OUT_ADDR_A,
  output [22:0] CAS_OUT_ADDR_B,
  output [8:0] CAS_OUT_BWE_A,
  output [8:0] CAS_OUT_BWE_B,
  output CAS_OUT_DBITERR_A,
  output CAS_OUT_DBITERR_B,
  output [71:0] CAS_OUT_DIN_A,
  output [71:0] CAS_OUT_DIN_B,
  output [71:0] CAS_OUT_DOUT_A,
  output [71:0] CAS_OUT_DOUT_B,
  output CAS_OUT_EN_A,
  output CAS_OUT_EN_B,
  output CAS_OUT_RDACCESS_A,
  output CAS_OUT_RDACCESS_B,
  output CAS_OUT_RDB_WR_A,
  output CAS_OUT_RDB_WR_B,
  output CAS_OUT_SBITERR_A,
  output CAS_OUT_SBITERR_B,
  output DBITERR_A,
  output DBITERR_B,
  output [71:0] DOUT_A,
  output [71:0] DOUT_B,
  output RDACCESS_A,
  output RDACCESS_B,
  output SBITERR_A,
  output SBITERR_B,

  input [22:0] ADDR_A,
  input [22:0] ADDR_B,
  input [8:0] BWE_A,
  input [8:0] BWE_B,
  input [22:0] CAS_IN_ADDR_A,
  input [22:0] CAS_IN_ADDR_B,
  input [8:0] CAS_IN_BWE_A,
  input [8:0] CAS_IN_BWE_B,
  input CAS_IN_DBITERR_A,
  input CAS_IN_DBITERR_B,
  input [71:0] CAS_IN_DIN_A,
  input [71:0] CAS_IN_DIN_B,
  input [71:0] CAS_IN_DOUT_A,
  input [71:0] CAS_IN_DOUT_B,
  input CAS_IN_EN_A,
  input CAS_IN_EN_B,
  input CAS_IN_RDACCESS_A,
  input CAS_IN_RDACCESS_B,
  input CAS_IN_RDB_WR_A,
  input CAS_IN_RDB_WR_B,
  input CAS_IN_SBITERR_A,
  input CAS_IN_SBITERR_B,
  input CLK,
  input [71:0] DIN_A,
  input [71:0] DIN_B,
  input EN_A,
  input EN_B,
  input INJECT_DBITERR_A,
  input INJECT_DBITERR_B,
  input INJECT_SBITERR_A,
  input INJECT_SBITERR_B,
  input OREG_CE_A,
  input OREG_CE_B,
  input OREG_ECC_CE_A,
  input OREG_ECC_CE_B,
  input RDB_WR_A,
  input RDB_WR_B,
  input RST_A,
  input RST_B,
  input SLEEP
);
endmodule


module URAM288_BASE #(
  parameter integer AUTO_SLEEP_LATENCY = 8,
  parameter integer AVG_CONS_INACTIVE_CYCLES = 10,
  parameter BWE_MODE_A = "PARITY_INTERLEAVED",
  parameter BWE_MODE_B = "PARITY_INTERLEAVED",
  parameter EN_AUTO_SLEEP_MODE = "FALSE",
  parameter EN_ECC_RD_A = "FALSE",
  parameter EN_ECC_RD_B = "FALSE",
  parameter EN_ECC_WR_A = "FALSE",
  parameter EN_ECC_WR_B = "FALSE",
  parameter IREG_PRE_A = "FALSE",
  parameter IREG_PRE_B = "FALSE",
  parameter [0:0] IS_CLK_INVERTED = 1'b0,
  parameter [0:0] IS_EN_A_INVERTED = 1'b0,
  parameter [0:0] IS_EN_B_INVERTED = 1'b0,
  parameter [0:0] IS_RDB_WR_A_INVERTED = 1'b0,
  parameter [0:0] IS_RDB_WR_B_INVERTED = 1'b0,
  parameter [0:0] IS_RST_A_INVERTED = 1'b0,
  parameter [0:0] IS_RST_B_INVERTED = 1'b0,
  parameter OREG_A = "FALSE",
  parameter OREG_B = "FALSE",
  parameter OREG_ECC_A = "FALSE",
  parameter OREG_ECC_B = "FALSE",
  parameter RST_MODE_A = "SYNC",
  parameter RST_MODE_B = "SYNC",
  parameter USE_EXT_CE_A = "FALSE",
  parameter USE_EXT_CE_B = "FALSE"
)(
  output DBITERR_A,
  output DBITERR_B,
  output [71:0] DOUT_A,
  output [71:0] DOUT_B,
  output SBITERR_A,
  output SBITERR_B,

  input [22:0] ADDR_A,
  input [22:0] ADDR_B,
  input [8:0] BWE_A,
  input [8:0] BWE_B,
  input CLK,
  input [71:0] DIN_A,
  input [71:0] DIN_B,
  input EN_A,
  input EN_B,
  input INJECT_DBITERR_A,
  input INJECT_DBITERR_B,
  input INJECT_SBITERR_A,
  input INJECT_SBITERR_B,
  input OREG_CE_A,
  input OREG_CE_B,
  input OREG_ECC_CE_A,
  input OREG_ECC_CE_B,
  input RDB_WR_A,
  input RDB_WR_B,
  input RST_A,
  input RST_B,
  input SLEEP
);
endmodule


module USR_ACCESSE2 (
  CFGCLK,
  DATA,
  DATAVALID
);
    parameter LOC = "UNPLACED";
  output CFGCLK;
  output DATAVALID;
  output [31:0] DATA;
endmodule


module VCC(P);
    parameter LOC = "UNPLACED";
    output P;
endmodule


module VCU #(
  parameter integer CORECLKREQ = 667,
  parameter integer DECHORRESOLUTION = 3840,
  parameter DECODERCHROMAFORMAT = "4_2_2",
  parameter DECODERCODING = "H.265",
  parameter integer DECODERCOLORDEPTH = 10,
  parameter integer DECODERNUMCORES = 2,
  parameter integer DECVERTRESOLUTION = 2160,
  parameter ENABLEDECODER = "TRUE",
  parameter ENABLEENCODER = "TRUE",
  parameter integer ENCHORRESOLUTION = 3840,
  parameter ENCODERCHROMAFORMAT = "4_2_2",
  parameter ENCODERCODING = "H.265",
  parameter integer ENCODERCOLORDEPTH = 10,
  parameter integer ENCODERNUMCORES = 4,
  parameter integer ENCVERTRESOLUTION = 2160
)(
  output VCUPLARREADYAXILITEAPB,
  output VCUPLAWREADYAXILITEAPB,
  output [1:0] VCUPLBRESPAXILITEAPB,
  output VCUPLBVALIDAXILITEAPB,
  output VCUPLCORESTATUSCLKPLL,
  output [43:0] VCUPLDECARADDR0,
  output [43:0] VCUPLDECARADDR1,
  output [1:0] VCUPLDECARBURST0,
  output [1:0] VCUPLDECARBURST1,
  output [3:0] VCUPLDECARCACHE0,
  output [3:0] VCUPLDECARCACHE1,
  output [3:0] VCUPLDECARID0,
  output [3:0] VCUPLDECARID1,
  output [7:0] VCUPLDECARLEN0,
  output [7:0] VCUPLDECARLEN1,
  output VCUPLDECARPROT0,
  output VCUPLDECARPROT1,
  output [3:0] VCUPLDECARQOS0,
  output [3:0] VCUPLDECARQOS1,
  output [2:0] VCUPLDECARSIZE0,
  output [2:0] VCUPLDECARSIZE1,
  output VCUPLDECARVALID0,
  output VCUPLDECARVALID1,
  output [43:0] VCUPLDECAWADDR0,
  output [43:0] VCUPLDECAWADDR1,
  output [1:0] VCUPLDECAWBURST0,
  output [1:0] VCUPLDECAWBURST1,
  output [3:0] VCUPLDECAWCACHE0,
  output [3:0] VCUPLDECAWCACHE1,
  output [3:0] VCUPLDECAWID0,
  output [3:0] VCUPLDECAWID1,
  output [7:0] VCUPLDECAWLEN0,
  output [7:0] VCUPLDECAWLEN1,
  output VCUPLDECAWPROT0,
  output VCUPLDECAWPROT1,
  output [3:0] VCUPLDECAWQOS0,
  output [3:0] VCUPLDECAWQOS1,
  output [2:0] VCUPLDECAWSIZE0,
  output [2:0] VCUPLDECAWSIZE1,
  output VCUPLDECAWVALID0,
  output VCUPLDECAWVALID1,
  output VCUPLDECBREADY0,
  output VCUPLDECBREADY1,
  output VCUPLDECRREADY0,
  output VCUPLDECRREADY1,
  output [127:0] VCUPLDECWDATA0,
  output [127:0] VCUPLDECWDATA1,
  output VCUPLDECWLAST0,
  output VCUPLDECWLAST1,
  output VCUPLDECWVALID0,
  output VCUPLDECWVALID1,
  output [16:0] VCUPLENCALL2CADDR,
  output VCUPLENCALL2CRVALID,
  output [319:0] VCUPLENCALL2CWDATA,
  output VCUPLENCALL2CWVALID,
  output [43:0] VCUPLENCARADDR0,
  output [43:0] VCUPLENCARADDR1,
  output [1:0] VCUPLENCARBURST0,
  output [1:0] VCUPLENCARBURST1,
  output [3:0] VCUPLENCARCACHE0,
  output [3:0] VCUPLENCARCACHE1,
  output [3:0] VCUPLENCARID0,
  output [3:0] VCUPLENCARID1,
  output [7:0] VCUPLENCARLEN0,
  output [7:0] VCUPLENCARLEN1,
  output VCUPLENCARPROT0,
  output VCUPLENCARPROT1,
  output [3:0] VCUPLENCARQOS0,
  output [3:0] VCUPLENCARQOS1,
  output [2:0] VCUPLENCARSIZE0,
  output [2:0] VCUPLENCARSIZE1,
  output VCUPLENCARVALID0,
  output VCUPLENCARVALID1,
  output [43:0] VCUPLENCAWADDR0,
  output [43:0] VCUPLENCAWADDR1,
  output [1:0] VCUPLENCAWBURST0,
  output [1:0] VCUPLENCAWBURST1,
  output [3:0] VCUPLENCAWCACHE0,
  output [3:0] VCUPLENCAWCACHE1,
  output [3:0] VCUPLENCAWID0,
  output [3:0] VCUPLENCAWID1,
  output [7:0] VCUPLENCAWLEN0,
  output [7:0] VCUPLENCAWLEN1,
  output VCUPLENCAWPROT0,
  output VCUPLENCAWPROT1,
  output [3:0] VCUPLENCAWQOS0,
  output [3:0] VCUPLENCAWQOS1,
  output [2:0] VCUPLENCAWSIZE0,
  output [2:0] VCUPLENCAWSIZE1,
  output VCUPLENCAWVALID0,
  output VCUPLENCAWVALID1,
  output VCUPLENCBREADY0,
  output VCUPLENCBREADY1,
  output VCUPLENCRREADY0,
  output VCUPLENCRREADY1,
  output [127:0] VCUPLENCWDATA0,
  output [127:0] VCUPLENCWDATA1,
  output VCUPLENCWLAST0,
  output VCUPLENCWLAST1,
  output VCUPLENCWVALID0,
  output VCUPLENCWVALID1,
  output [43:0] VCUPLMCUMAXIICDCARADDR,
  output [1:0] VCUPLMCUMAXIICDCARBURST,
  output [3:0] VCUPLMCUMAXIICDCARCACHE,
  output [2:0] VCUPLMCUMAXIICDCARID,
  output [7:0] VCUPLMCUMAXIICDCARLEN,
  output VCUPLMCUMAXIICDCARLOCK,
  output [2:0] VCUPLMCUMAXIICDCARPROT,
  output [3:0] VCUPLMCUMAXIICDCARQOS,
  output [2:0] VCUPLMCUMAXIICDCARSIZE,
  output VCUPLMCUMAXIICDCARVALID,
  output [43:0] VCUPLMCUMAXIICDCAWADDR,
  output [1:0] VCUPLMCUMAXIICDCAWBURST,
  output [3:0] VCUPLMCUMAXIICDCAWCACHE,
  output [2:0] VCUPLMCUMAXIICDCAWID,
  output [7:0] VCUPLMCUMAXIICDCAWLEN,
  output VCUPLMCUMAXIICDCAWLOCK,
  output [2:0] VCUPLMCUMAXIICDCAWPROT,
  output [3:0] VCUPLMCUMAXIICDCAWQOS,
  output [2:0] VCUPLMCUMAXIICDCAWSIZE,
  output VCUPLMCUMAXIICDCAWVALID,
  output VCUPLMCUMAXIICDCBREADY,
  output VCUPLMCUMAXIICDCRREADY,
  output [31:0] VCUPLMCUMAXIICDCWDATA,
  output VCUPLMCUMAXIICDCWLAST,
  output [3:0] VCUPLMCUMAXIICDCWSTRB,
  output VCUPLMCUMAXIICDCWVALID,
  output VCUPLMCUSTATUSCLKPLL,
  output VCUPLPINTREQ,
  output VCUPLPLLSTATUSPLLLOCK,
  output VCUPLPWRSUPPLYSTATUSVCCAUX,
  output VCUPLPWRSUPPLYSTATUSVCUINT,
  output [31:0] VCUPLRDATAAXILITEAPB,
  output [1:0] VCUPLRRESPAXILITEAPB,
  output VCUPLRVALIDAXILITEAPB,
  output VCUPLWREADYAXILITEAPB,

  input INITPLVCUGASKETCLAMPCONTROLLVLSHVCCINTD,
  input [19:0] PLVCUARADDRAXILITEAPB,
  input [2:0] PLVCUARPROTAXILITEAPB,
  input PLVCUARVALIDAXILITEAPB,
  input [19:0] PLVCUAWADDRAXILITEAPB,
  input [2:0] PLVCUAWPROTAXILITEAPB,
  input PLVCUAWVALIDAXILITEAPB,
  input PLVCUAXIDECCLK,
  input PLVCUAXIENCCLK,
  input PLVCUAXILITECLK,
  input PLVCUAXIMCUCLK,
  input PLVCUBREADYAXILITEAPB,
  input PLVCUCORECLK,
  input PLVCUDECARREADY0,
  input PLVCUDECARREADY1,
  input PLVCUDECAWREADY0,
  input PLVCUDECAWREADY1,
  input [3:0] PLVCUDECBID0,
  input [3:0] PLVCUDECBID1,
  input [1:0] PLVCUDECBRESP0,
  input [1:0] PLVCUDECBRESP1,
  input PLVCUDECBVALID0,
  input PLVCUDECBVALID1,
  input [127:0] PLVCUDECRDATA0,
  input [127:0] PLVCUDECRDATA1,
  input [3:0] PLVCUDECRID0,
  input [3:0] PLVCUDECRID1,
  input PLVCUDECRLAST0,
  input PLVCUDECRLAST1,
  input [1:0] PLVCUDECRRESP0,
  input [1:0] PLVCUDECRRESP1,
  input PLVCUDECRVALID0,
  input PLVCUDECRVALID1,
  input PLVCUDECWREADY0,
  input PLVCUDECWREADY1,
  input [319:0] PLVCUENCALL2CRDATA,
  input PLVCUENCALL2CRREADY,
  input PLVCUENCARREADY0,
  input PLVCUENCARREADY1,
  input PLVCUENCAWREADY0,
  input PLVCUENCAWREADY1,
  input [3:0] PLVCUENCBID0,
  input [3:0] PLVCUENCBID1,
  input [1:0] PLVCUENCBRESP0,
  input [1:0] PLVCUENCBRESP1,
  input PLVCUENCBVALID0,
  input PLVCUENCBVALID1,
  input PLVCUENCL2CCLK,
  input [127:0] PLVCUENCRDATA0,
  input [127:0] PLVCUENCRDATA1,
  input [3:0] PLVCUENCRID0,
  input [3:0] PLVCUENCRID1,
  input PLVCUENCRLAST0,
  input PLVCUENCRLAST1,
  input [1:0] PLVCUENCRRESP0,
  input [1:0] PLVCUENCRRESP1,
  input PLVCUENCRVALID0,
  input PLVCUENCRVALID1,
  input PLVCUENCWREADY0,
  input PLVCUENCWREADY1,
  input PLVCUMCUCLK,
  input PLVCUMCUMAXIICDCARREADY,
  input PLVCUMCUMAXIICDCAWREADY,
  input [2:0] PLVCUMCUMAXIICDCBID,
  input [1:0] PLVCUMCUMAXIICDCBRESP,
  input PLVCUMCUMAXIICDCBVALID,
  input [31:0] PLVCUMCUMAXIICDCRDATA,
  input [2:0] PLVCUMCUMAXIICDCRID,
  input PLVCUMCUMAXIICDCRLAST,
  input [1:0] PLVCUMCUMAXIICDCRRESP,
  input PLVCUMCUMAXIICDCRVALID,
  input PLVCUMCUMAXIICDCWREADY,
  input PLVCUPLLREFCLKPL,
  input PLVCURAWRSTN,
  input PLVCURREADYAXILITEAPB,
  input [31:0] PLVCUWDATAAXILITEAPB,
  input [3:0] PLVCUWSTRBAXILITEAPB,
  input PLVCUWVALIDAXILITEAPB
);
endmodule


module XADC (
        ALM,
        BUSY,
        CHANNEL,
        DO,
        DRDY,
        EOC,
        EOS,
        JTAGBUSY,
        JTAGLOCKED,
        JTAGMODIFIED,
        MUXADDR,
        OT,
        CONVST,
        CONVSTCLK,
        DADDR,
        DCLK,
        DEN,
        DI,
        DWE,
        RESET,
        VAUXN,
        VAUXP,
        VN,
        VP

);
  output BUSY;
  output DRDY;
  output EOC;
  output EOS;
  output JTAGBUSY;
  output JTAGLOCKED;
  output JTAGMODIFIED;
  output OT;
  output [15:0] DO;
  output [7:0] ALM;
  output [4:0] CHANNEL;
  output [4:0] MUXADDR;
  input CONVST;
  input CONVSTCLK;
  input DCLK;
  input DEN;
  input DWE;
  input RESET;
  input VN;
  input VP;
  input [15:0] DI;
  input [15:0] VAUXN;
  input [15:0] VAUXP;
  input [6:0] DADDR;
  parameter  [15:0] INIT_40 = 16'h0;
  parameter  [15:0] INIT_41 = 16'h0;
  parameter  [15:0] INIT_42 = 16'h0800;
  parameter  [15:0] INIT_43 = 16'h0;
  parameter  [15:0] INIT_44 = 16'h0;
  parameter  [15:0] INIT_45 = 16'h0;
  parameter  [15:0] INIT_46 = 16'h0;
  parameter  [15:0] INIT_47 = 16'h0;
  parameter  [15:0] INIT_48 = 16'h0;
  parameter  [15:0] INIT_49 = 16'h0;
  parameter  [15:0] INIT_4A = 16'h0;
  parameter  [15:0] INIT_4B = 16'h0;
  parameter  [15:0] INIT_4C = 16'h0;
  parameter  [15:0] INIT_4D = 16'h0;
  parameter  [15:0] INIT_4E = 16'h0;
  parameter  [15:0] INIT_4F = 16'h0;
  parameter  [15:0] INIT_50 = 16'h0;
  parameter  [15:0] INIT_51 = 16'h0;
  parameter  [15:0] INIT_52 = 16'h0;
  parameter  [15:0] INIT_53 = 16'h0;
  parameter  [15:0] INIT_54 = 16'h0;
  parameter  [15:0] INIT_55 = 16'h0;
  parameter  [15:0] INIT_56 = 16'h0;
  parameter  [15:0] INIT_57 = 16'h0;
  parameter  [15:0] INIT_58 = 16'h0;
  parameter  [15:0] INIT_59 = 16'h0;
  parameter  [15:0] INIT_5A = 16'h0;
  parameter  [15:0] INIT_5B = 16'h0;
  parameter  [15:0] INIT_5C = 16'h0;
  parameter  [15:0] INIT_5D = 16'h0;
  parameter  [15:0] INIT_5E = 16'h0;
  parameter  [15:0] INIT_5F = 16'h0;
  parameter IS_CONVSTCLK_INVERTED = 1'b0;
  parameter IS_DCLK_INVERTED = 1'b0;
  parameter SIM_DEVICE = "7SERIES";
  parameter SIM_MONITOR_FILE = "design.txt";
endmodule 


module XORCY (O, CI, LI);
    output O;
    input  CI, LI;
endmodule


module ZHOLD_DELAY #(
   parameter [0:0] IS_DLYIN_INVERTED = 1'b0 ,
   parameter ZHOLD_FABRIC = "DEFAULT", // {"DEFAULT", "0", .... "31"}
   parameter ZHOLD_IFF = "DEFAULT"  // {"DEFAULT", "0", .... "31"}
) (
   output    DLYFABRIC,
   output    DLYIFF,
   input     DLYIN
);
endmodule // ZHOLD_DELAY

