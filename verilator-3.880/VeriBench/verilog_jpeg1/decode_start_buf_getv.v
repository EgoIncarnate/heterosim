// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decode_start_buf_getv (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        n,
        CurHuffReadBuf_address0,
        CurHuffReadBuf_ce0,
        CurHuffReadBuf_q0,
        tmp_7,
        read_position_i,
        read_position_o,
        read_position_o_ap_vld,
        current_read_byte_i,
        current_read_byte_o,
        current_read_byte_o_ap_vld,
        off_i,
        off_o,
        off_o_ap_vld,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 10'b1;
parameter    ap_ST_st2_fsm_1 = 10'b10;
parameter    ap_ST_st3_fsm_2 = 10'b100;
parameter    ap_ST_st4_fsm_3 = 10'b1000;
parameter    ap_ST_st5_fsm_4 = 10'b10000;
parameter    ap_ST_st6_fsm_5 = 10'b100000;
parameter    ap_ST_st7_fsm_6 = 10'b1000000;
parameter    ap_ST_st8_fsm_7 = 10'b10000000;
parameter    ap_ST_st9_fsm_8 = 10'b100000000;
parameter    ap_ST_st10_fsm_9 = 10'b1000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_7F = 32'b1111111;
parameter    ap_const_lv32_FF = 32'b11111111;
parameter    ap_const_lv32_1FF = 32'b111111111;
parameter    ap_const_lv32_3FF = 32'b1111111111;
parameter    ap_const_lv32_7FF = 32'b11111111111;
parameter    ap_const_lv32_FFF = 32'b111111111111;
parameter    ap_const_lv32_1FFF = 32'b1111111111111;
parameter    ap_const_lv32_3FFF = 32'b11111111111111;
parameter    ap_const_lv32_7FFF = 32'b111111111111111;
parameter    ap_const_lv32_FFFF = 32'b1111111111111111;
parameter    ap_const_lv32_1FFFF = 32'b11111111111111111;
parameter    ap_const_lv32_3FFFF = 32'b111111111111111111;
parameter    ap_const_lv32_7FFFF = 32'b1111111111111111111;
parameter    ap_const_lv32_FFFFF = 32'b11111111111111111111;
parameter    ap_const_lv32_1FFFFF = 32'b111111111111111111111;
parameter    ap_const_lv32_3FFFFF = 32'b1111111111111111111111;
parameter    ap_const_lv32_7FFFFF = 32'b11111111111111111111111;
parameter    ap_const_lv32_FFFFFF = 32'b111111111111111111111111;
parameter    ap_const_lv32_1FFFFFF = 32'b1111111111111111111111111;
parameter    ap_const_lv32_3FFFFFF = 32'b11111111111111111111111111;
parameter    ap_const_lv32_7FFFFFF = 32'b111111111111111111111111111;
parameter    ap_const_lv32_FFFFFFF = 32'b1111111111111111111111111111;
parameter    ap_const_lv32_1FFFFFFF = 32'b11111111111111111111111111111;
parameter    ap_const_lv32_3FFFFFFF = 32'b111111111111111111111111111111;
parameter    ap_const_lv32_7FFFFFFF = 32'b1111111111111111111111111111111;
parameter    ap_const_lv32_FFFFFFF8 = 32'b11111111111111111111111111111000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] n;
output  [12:0] CurHuffReadBuf_address0;
output   CurHuffReadBuf_ce0;
input  [7:0] CurHuffReadBuf_q0;
input  [31:0] tmp_7;
input  [31:0] read_position_i;
output  [31:0] read_position_o;
output   read_position_o_ap_vld;
input  [31:0] current_read_byte_i;
output  [31:0] current_read_byte_o;
output   current_read_byte_o_ap_vld;
input  [31:0] off_i;
output  [31:0] off_o;
output   off_o_ap_vld;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg CurHuffReadBuf_ce0;
reg[31:0] read_position_o;
reg read_position_o_ap_vld;
reg[31:0] current_read_byte_o;
reg current_read_byte_o_ap_vld;
reg[31:0] off_o;
reg[31:0] ap_return;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm = 10'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_28;
wire   [7:0] grp_decode_start_pgetc_fu_171_ap_return;
reg   [7:0] reg_180;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_58;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_65;
wire   [31:0] n_assign_fu_184_p2;
reg   [31:0] n_assign_reg_558;
wire   [31:0] p_fu_194_p2;
wire   [0:0] tmp_fu_204_p2;
reg   [0:0] tmp_reg_580;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_88;
wire   [31:0] tmp_9_fu_216_p2;
reg   [31:0] tmp_9_reg_587;
wire   [0:0] tmp_s_fu_210_p2;
wire   [4:0] tmp_14_fu_222_p1;
reg   [4:0] tmp_14_reg_592;
wire   [31:0] tmp_11_fu_237_p2;
wire   [0:0] tmp_1_fu_225_p2;
wire   [31:0] tmp_13_fu_322_p2;
wire   [31:0] tmp_10_fu_401_p2;
wire   [31:0] tmp_8_fu_411_p3;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_124;
wire   [31:0] p_1_fu_425_p2;
wire   [31:0] tmp_2_fu_431_p2;
reg   [31:0] tmp_2_reg_625;
wire    grp_decode_start_pgetc_fu_171_ap_start;
wire    grp_decode_start_pgetc_fu_171_ap_done;
wire    grp_decode_start_pgetc_fu_171_ap_idle;
wire    grp_decode_start_pgetc_fu_171_ap_ready;
wire    grp_decode_start_pgetc_fu_171_ap_ce;
wire   [12:0] grp_decode_start_pgetc_fu_171_CurHuffReadBuf_address0;
wire    grp_decode_start_pgetc_fu_171_CurHuffReadBuf_ce0;
wire   [7:0] grp_decode_start_pgetc_fu_171_CurHuffReadBuf_q0;
wire   [31:0] grp_decode_start_pgetc_fu_171_tmp_7;
wire   [31:0] grp_decode_start_pgetc_fu_171_off_i;
wire   [31:0] grp_decode_start_pgetc_fu_171_off_o;
wire    grp_decode_start_pgetc_fu_171_off_o_ap_vld;
reg   [31:0] read_position_loc_reg_118;
reg   [31:0] current_read_byte_loc_reg_127;
reg   [31:0] p1_reg_137;
wire   [31:0] tmp_4_fu_464_p2;
reg   [31:0] read_position_new_phi_fu_151_p6;
reg   [31:0] read_position_new_reg_147;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_158;
wire   [31:0] tmp_5_fu_540_p2;
reg   [31:0] p_0_phi_fu_163_p6;
reg   [31:0] p_0_reg_160;
reg    grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg = 1'b0;
reg   [9:0] ap_NS_fsm;
reg    ap_sig_nseq_ST_st3_fsm_2;
reg    ap_sig_bdd_175;
reg    ap_sig_nseq_ST_st7_fsm_6;
reg    ap_sig_bdd_183;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_191;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_198;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_206;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_214;
wire   [31:0] tmp_24_ext_fu_443_p1;
wire   [31:0] p_2_fu_231_p2;
wire   [4:0] tmp_16_fu_252_p33;
wire   [31:0] tmp_12_fu_243_p2;
wire   [31:0] tmp_16_fu_252_p34;
wire   [4:0] tmp_15_fu_331_p33;
wire   [31:0] tmp_15_fu_331_p34;
wire   [23:0] tmp_17_fu_407_p1;
wire   [31:0] tmp_3_fu_453_p2;
wire   [31:0] rv_fu_437_p2;
wire   [31:0] rv_1_fu_458_p2;
wire   [31:0] tmp_6_fu_471_p34;
reg   [31:0] ap_return_preg = 32'b00000000000000000000000000000000;


decode_start_pgetc grp_decode_start_pgetc_fu_171(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_decode_start_pgetc_fu_171_ap_start ),
    .ap_done( grp_decode_start_pgetc_fu_171_ap_done ),
    .ap_idle( grp_decode_start_pgetc_fu_171_ap_idle ),
    .ap_ready( grp_decode_start_pgetc_fu_171_ap_ready ),
    .ap_ce( grp_decode_start_pgetc_fu_171_ap_ce ),
    .CurHuffReadBuf_address0( grp_decode_start_pgetc_fu_171_CurHuffReadBuf_address0 ),
    .CurHuffReadBuf_ce0( grp_decode_start_pgetc_fu_171_CurHuffReadBuf_ce0 ),
    .CurHuffReadBuf_q0( grp_decode_start_pgetc_fu_171_CurHuffReadBuf_q0 ),
    .tmp_7( grp_decode_start_pgetc_fu_171_tmp_7 ),
    .off_i( grp_decode_start_pgetc_fu_171_off_i ),
    .off_o( grp_decode_start_pgetc_fu_171_off_o ),
    .off_o_ap_vld( grp_decode_start_pgetc_fu_171_off_o_ap_vld ),
    .ap_return( grp_decode_start_pgetc_fu_171_ap_return )
);

decode_start_mux_32to1_sel5_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 32 ),
    .din33_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
decode_start_mux_32to1_sel5_32_1_U23(
    .din1( ap_const_lv32_1 ),
    .din2( ap_const_lv32_3 ),
    .din3( ap_const_lv32_7 ),
    .din4( ap_const_lv32_F ),
    .din5( ap_const_lv32_1F ),
    .din6( ap_const_lv32_3F ),
    .din7( ap_const_lv32_7F ),
    .din8( ap_const_lv32_FF ),
    .din9( ap_const_lv32_1FF ),
    .din10( ap_const_lv32_3FF ),
    .din11( ap_const_lv32_7FF ),
    .din12( ap_const_lv32_FFF ),
    .din13( ap_const_lv32_1FFF ),
    .din14( ap_const_lv32_3FFF ),
    .din15( ap_const_lv32_7FFF ),
    .din16( ap_const_lv32_FFFF ),
    .din17( ap_const_lv32_1FFFF ),
    .din18( ap_const_lv32_3FFFF ),
    .din19( ap_const_lv32_7FFFF ),
    .din20( ap_const_lv32_FFFFF ),
    .din21( ap_const_lv32_1FFFFF ),
    .din22( ap_const_lv32_3FFFFF ),
    .din23( ap_const_lv32_7FFFFF ),
    .din24( ap_const_lv32_FFFFFF ),
    .din25( ap_const_lv32_1FFFFFF ),
    .din26( ap_const_lv32_3FFFFFF ),
    .din27( ap_const_lv32_7FFFFFF ),
    .din28( ap_const_lv32_FFFFFFF ),
    .din29( ap_const_lv32_1FFFFFFF ),
    .din30( ap_const_lv32_3FFFFFFF ),
    .din31( ap_const_lv32_7FFFFFFF ),
    .din32( ap_const_lv32_FFFFFFFF ),
    .din33( tmp_16_fu_252_p33 ),
    .dout( tmp_16_fu_252_p34 )
);

decode_start_mux_32to1_sel5_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 32 ),
    .din33_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
decode_start_mux_32to1_sel5_32_1_U24(
    .din1( ap_const_lv32_1 ),
    .din2( ap_const_lv32_3 ),
    .din3( ap_const_lv32_7 ),
    .din4( ap_const_lv32_F ),
    .din5( ap_const_lv32_1F ),
    .din6( ap_const_lv32_3F ),
    .din7( ap_const_lv32_7F ),
    .din8( ap_const_lv32_FF ),
    .din9( ap_const_lv32_1FF ),
    .din10( ap_const_lv32_3FF ),
    .din11( ap_const_lv32_7FF ),
    .din12( ap_const_lv32_FFF ),
    .din13( ap_const_lv32_1FFF ),
    .din14( ap_const_lv32_3FFF ),
    .din15( ap_const_lv32_7FFF ),
    .din16( ap_const_lv32_FFFF ),
    .din17( ap_const_lv32_1FFFF ),
    .din18( ap_const_lv32_3FFFF ),
    .din19( ap_const_lv32_7FFFF ),
    .din20( ap_const_lv32_FFFFF ),
    .din21( ap_const_lv32_1FFFFF ),
    .din22( ap_const_lv32_3FFFFF ),
    .din23( ap_const_lv32_7FFFFF ),
    .din24( ap_const_lv32_FFFFFF ),
    .din25( ap_const_lv32_1FFFFFF ),
    .din26( ap_const_lv32_3FFFFFF ),
    .din27( ap_const_lv32_7FFFFFF ),
    .din28( ap_const_lv32_FFFFFFF ),
    .din29( ap_const_lv32_1FFFFFFF ),
    .din30( ap_const_lv32_3FFFFFFF ),
    .din31( ap_const_lv32_7FFFFFFF ),
    .din32( ap_const_lv32_FFFFFFFF ),
    .din33( tmp_15_fu_331_p33 ),
    .dout( tmp_15_fu_331_p34 )
);

decode_start_mux_32to1_sel5_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 32 ),
    .din33_WIDTH( 5 ),
    .dout_WIDTH( 32 ))
decode_start_mux_32to1_sel5_32_1_U25(
    .din1( ap_const_lv32_1 ),
    .din2( ap_const_lv32_3 ),
    .din3( ap_const_lv32_7 ),
    .din4( ap_const_lv32_F ),
    .din5( ap_const_lv32_1F ),
    .din6( ap_const_lv32_3F ),
    .din7( ap_const_lv32_7F ),
    .din8( ap_const_lv32_FF ),
    .din9( ap_const_lv32_1FF ),
    .din10( ap_const_lv32_3FF ),
    .din11( ap_const_lv32_7FF ),
    .din12( ap_const_lv32_FFF ),
    .din13( ap_const_lv32_1FFF ),
    .din14( ap_const_lv32_3FFF ),
    .din15( ap_const_lv32_7FFF ),
    .din16( ap_const_lv32_FFFF ),
    .din17( ap_const_lv32_1FFFF ),
    .din18( ap_const_lv32_3FFFF ),
    .din19( ap_const_lv32_7FFFF ),
    .din20( ap_const_lv32_FFFFF ),
    .din21( ap_const_lv32_1FFFFF ),
    .din22( ap_const_lv32_3FFFFF ),
    .din23( ap_const_lv32_7FFFFF ),
    .din24( ap_const_lv32_FFFFFF ),
    .din25( ap_const_lv32_1FFFFFF ),
    .din26( ap_const_lv32_3FFFFFF ),
    .din27( ap_const_lv32_7FFFFFF ),
    .din28( ap_const_lv32_FFFFFFF ),
    .din29( ap_const_lv32_1FFFFFFF ),
    .din30( ap_const_lv32_3FFFFFFF ),
    .din31( ap_const_lv32_7FFFFFFF ),
    .din32( ap_const_lv32_FFFFFFFF ),
    .din33( tmp_14_reg_592 ),
    .dout( tmp_6_fu_471_p34 )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_return_preg
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv32_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
            ap_return_preg <= p_0_phi_fu_163_p6;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_logic_1 == ap_sig_nseq_ST_st3_fsm_2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_logic_1 == ap_sig_nseq_ST_st7_fsm_6)))) begin
            grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_decode_start_pgetc_fu_171_ap_ready)) begin
            grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        current_read_byte_loc_reg_127 <= tmp_8_fu_411_p3;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        current_read_byte_loc_reg_127 <= current_read_byte_i;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p1_reg_137 <= p_1_fu_425_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p1_reg_137 <= p_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_204_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_225_p2))) begin
        p_0_reg_160 <= tmp_13_fu_322_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_225_p2))) begin
        p_0_reg_160 <= tmp_10_fu_401_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0))) begin
        p_0_reg_160 <= tmp_5_fu_540_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        read_position_loc_reg_118 <= tmp_9_reg_587;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        read_position_loc_reg_118 <= read_position_i;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_204_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_225_p2))) begin
        read_position_new_reg_147 <= tmp_11_fu_237_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_225_p2))) begin
        read_position_new_reg_147 <= ap_const_lv32_FFFFFFFF;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0))) begin
        read_position_new_reg_147 <= tmp_4_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        n_assign_reg_558 <= n_assign_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        reg_180 <= grp_decode_start_pgetc_fu_171_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_s_fu_210_p2))) begin
        tmp_14_reg_592 <= tmp_14_fu_222_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        tmp_2_reg_625 <= tmp_2_fu_431_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_204_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_s_fu_210_p2))) begin
        tmp_9_reg_587 <= tmp_9_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tmp_reg_580 <= tmp_fu_204_p2;
    end
end

always @ (ap_sig_cseq_ST_st5_fsm_4 or ap_sig_cseq_ST_st9_fsm_8 or grp_decode_start_pgetc_fu_171_CurHuffReadBuf_ce0 or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st7_fsm_6 or ap_sig_cseq_ST_st8_fsm_7) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) | (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) | (ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) | (ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        CurHuffReadBuf_ce0 = grp_decode_start_pgetc_fu_171_CurHuffReadBuf_ce0;
    end else begin
        CurHuffReadBuf_ce0 = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st10_fsm_9) begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st10_fsm_9) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st10_fsm_9 or p_0_phi_fu_163_p6 or ap_return_preg) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        ap_return = p_0_phi_fu_163_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (ap_sig_bdd_158) begin
    if (ap_sig_bdd_158) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_28) begin
    if (ap_sig_bdd_28) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_88) begin
    if (ap_sig_bdd_88) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_191) begin
    if (ap_sig_bdd_191) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_198) begin
    if (ap_sig_bdd_198) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_58) begin
    if (ap_sig_bdd_58) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_124) begin
    if (ap_sig_bdd_124) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_206) begin
    if (ap_sig_bdd_206) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_214) begin
    if (ap_sig_bdd_214) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_65) begin
    if (ap_sig_bdd_65) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_175) begin
    if (ap_sig_bdd_175) begin
        ap_sig_nseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_nseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_183) begin
    if (ap_sig_bdd_183) begin
        ap_sig_nseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_nseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

always @ (current_read_byte_i or tmp_reg_580 or tmp_8_fu_411_p3 or ap_sig_cseq_ST_st6_fsm_5 or ap_sig_cseq_ST_st10_fsm_9 or tmp_24_ext_fu_443_p1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0))) begin
        current_read_byte_o = tmp_24_ext_fu_443_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        current_read_byte_o = tmp_8_fu_411_p3;
    end else begin
        current_read_byte_o = current_read_byte_i;
    end
end

always @ (tmp_reg_580 or ap_sig_cseq_ST_st6_fsm_5 or ap_sig_cseq_ST_st10_fsm_9) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) | ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0)))) begin
        current_read_byte_o_ap_vld = ap_const_logic_1;
    end else begin
        current_read_byte_o_ap_vld = ap_const_logic_0;
    end
end

always @ (off_i or ap_sig_cseq_ST_st5_fsm_4 or ap_sig_cseq_ST_st9_fsm_8 or grp_decode_start_pgetc_fu_171_off_o or grp_decode_start_pgetc_fu_171_off_o_ap_vld or ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st7_fsm_6 or ap_sig_cseq_ST_st8_fsm_7) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & (ap_const_logic_1 == grp_decode_start_pgetc_fu_171_off_o_ap_vld)))) begin
        off_o = grp_decode_start_pgetc_fu_171_off_o;
    end else begin
        off_o = off_i;
    end
end

always @ (tmp_reg_580 or ap_sig_cseq_ST_st10_fsm_9 or tmp_5_fu_540_p2 or p_0_reg_160) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0))) begin
        p_0_phi_fu_163_p6 = tmp_5_fu_540_p2;
    end else begin
        p_0_phi_fu_163_p6 = p_0_reg_160;
    end
end

always @ (tmp_reg_580 or tmp_4_fu_464_p2 or read_position_new_reg_147 or ap_sig_cseq_ST_st10_fsm_9) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9) & ~(tmp_reg_580 == ap_const_lv1_0))) begin
        read_position_new_phi_fu_151_p6 = tmp_4_fu_464_p2;
    end else begin
        read_position_new_phi_fu_151_p6 = read_position_new_reg_147;
    end
end

always @ (read_position_i or read_position_new_phi_fu_151_p6 or ap_sig_cseq_ST_st10_fsm_9) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        read_position_o = read_position_new_phi_fu_151_p6;
    end else begin
        read_position_o = read_position_i;
    end
end

always @ (ap_sig_cseq_ST_st10_fsm_9) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        read_position_o_ap_vld = ap_const_logic_1;
    end else begin
        read_position_o_ap_vld = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or tmp_fu_204_p2 or tmp_s_fu_210_p2) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((tmp_fu_204_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end else if ((~(tmp_fu_204_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_s_fu_210_p2))) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


assign CurHuffReadBuf_address0 = grp_decode_start_pgetc_fu_171_CurHuffReadBuf_address0;


always @ (ap_CS_fsm) begin
    ap_sig_bdd_124 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_158 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end


always @ (ap_NS_fsm) begin
    ap_sig_bdd_175 = (ap_const_lv1_1 == ap_NS_fsm[ap_const_lv32_2]);
end


always @ (ap_NS_fsm) begin
    ap_sig_bdd_183 = (ap_const_lv1_1 == ap_NS_fsm[ap_const_lv32_6]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_191 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_198 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_206 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_214 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_28 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_58 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_65 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_88 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign grp_decode_start_pgetc_fu_171_CurHuffReadBuf_q0 = CurHuffReadBuf_q0;

assign grp_decode_start_pgetc_fu_171_ap_ce = ap_const_logic_1;

assign grp_decode_start_pgetc_fu_171_ap_start = grp_decode_start_pgetc_fu_171_ap_start_ap_start_reg;

assign grp_decode_start_pgetc_fu_171_off_i = off_i;

assign grp_decode_start_pgetc_fu_171_tmp_7 = tmp_7;

assign n_assign_fu_184_p2 = ($signed(n) + $signed(ap_const_lv32_FFFFFFFF));

assign off_o_ap_vld = grp_decode_start_pgetc_fu_171_off_o_ap_vld;

assign p_1_fu_425_p2 = ($signed(ap_const_lv32_FFFFFFF8) + $signed(p1_reg_137));

assign p_2_fu_231_p2 = (ap_const_lv32_0 - p1_reg_137);

assign p_fu_194_p2 = (n_assign_fu_184_p2 - read_position_i);

assign rv_1_fu_458_p2 = (tmp_3_fu_453_p2 | rv_fu_437_p2);

assign rv_fu_437_p2 = current_read_byte_loc_reg_127 << p1_reg_137;

assign tmp_10_fu_401_p2 = (tmp_15_fu_331_p34 & current_read_byte_loc_reg_127);

assign tmp_11_fu_237_p2 = (p1_reg_137 ^ ap_const_lv32_FFFFFFFF);

assign tmp_12_fu_243_p2 = current_read_byte_loc_reg_127 >> p_2_fu_231_p2;

assign tmp_13_fu_322_p2 = (tmp_12_fu_243_p2 & tmp_16_fu_252_p34);

assign tmp_14_fu_222_p1 = n_assign_reg_558[4:0];

assign tmp_15_fu_331_p33 = n_assign_reg_558[4:0];

assign tmp_16_fu_252_p33 = n_assign_reg_558[4:0];

assign tmp_17_fu_407_p1 = current_read_byte_loc_reg_127[23:0];

assign tmp_1_fu_225_p2 = (p1_reg_137 == ap_const_lv32_0? 1'b1: 1'b0);

assign tmp_24_ext_fu_443_p1 = reg_180;

assign tmp_2_fu_431_p2 = (ap_const_lv32_8 - p1_reg_137);

assign tmp_3_fu_453_p2 = tmp_24_ext_fu_443_p1 >> tmp_2_reg_625;

assign tmp_4_fu_464_p2 = (ap_const_lv32_7 - p1_reg_137);

assign tmp_5_fu_540_p2 = (rv_1_fu_458_p2 & tmp_6_fu_471_p34);

assign tmp_8_fu_411_p3 = {{tmp_17_fu_407_p1}, {reg_180}};

assign tmp_9_fu_216_p2 = (ap_const_lv32_8 + read_position_loc_reg_118);

assign tmp_fu_204_p2 = ($signed(p1_reg_137) > $signed(32'b00000000000000000000000000000000)? 1'b1: 1'b0);

assign tmp_s_fu_210_p2 = ($signed(read_position_loc_reg_118) > $signed(32'b10111)? 1'b1: 1'b0);


endmodule //decode_start_buf_getv

