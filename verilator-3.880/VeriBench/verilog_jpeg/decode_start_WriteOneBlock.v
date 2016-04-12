// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decode_start_WriteOneBlock (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        store_address0,
        store_ce0,
        store_q0,
        store_offset,
        tmp_4,
        out_buf_address0,
        out_buf_ce0,
        out_buf_we0,
        out_buf_d0,
        tmp_42,
        width,
        height,
        voffs,
        hoffs
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv15_14BE = 15'b1010010111110;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv64_1 = 64'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] store_address0;
output   store_ce0;
input  [31:0] store_q0;
input  [3:0] store_offset;
input  [1:0] tmp_4;
output  [13:0] out_buf_address0;
output   out_buf_ce0;
output   out_buf_we0;
output  [7:0] out_buf_d0;
input  [1:0] tmp_42;
input  [15:0] width;
input  [15:0] height;
input  [31:0] voffs;
input  [31:0] hoffs;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg store_ce0;
reg out_buf_ce0;
reg out_buf_we0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm = 6'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_24;
wire  signed [31:0] height_cast_fu_170_p1;
reg  signed [31:0] height_cast_reg_336;
wire  signed [31:0] width_cast_fu_174_p1;
reg  signed [31:0] width_cast_reg_341;
wire   [14:0] tmp_1689_fu_182_p2;
reg   [14:0] tmp_1689_reg_347;
wire   [10:0] tmp_2281_cast_fu_220_p3;
reg   [10:0] tmp_2281_cast_reg_352;
wire   [31:0] tmp_fu_228_p2;
reg   [31:0] tmp_reg_357;
wire   [31:0] tmp_s_fu_234_p2;
reg   [31:0] tmp_s_reg_362;
wire   [31:0] grp_fu_250_p2;
reg   [31:0] diff_reg_373;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_75;
wire   [63:0] store_addr_sum_fu_255_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_84;
wire   [63:0] p_rec_fu_280_p2;
reg   [63:0] p_rec_reg_391;
wire   [14:0] tmp_1696_fu_300_p2;
reg   [14:0] tmp_1696_reg_399;
wire   [0:0] tmp_25_fu_275_p2;
wire   [0:0] tmp_26_fu_286_p2;
wire   [31:0] e_1_fu_305_p2;
reg   [31:0] e_1_reg_404;
wire   [31:0] i_1_fu_311_p2;
reg  signed [31:0] i_reg_128;
reg   [63:0] p_0_idx_reg_138;
reg   [31:0] e_reg_150;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_119;
reg   [63:0] p_1_rec_reg_159;
wire   [63:0] tmp_2282_cast_fu_270_p1;
wire  signed [63:0] tmp_2283_cast_fu_322_p1;
wire   [1:0] tmp_1689_fu_182_p0;
wire   [2:0] tmp_1688_fu_196_p1;
wire   [4:0] p_shl_cast_fu_200_p3;
wire   [4:0] store_offset_cast_cast_fu_192_p1;
wire   [4:0] tmp_1690_fu_208_p2;
wire   [4:0] tmp_4_cast_cast_fu_188_p1;
wire   [4:0] tmp_1691_fu_214_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_171;
wire  signed [15:0] grp_fu_250_p1;
wire   [10:0] tmp_1692_fu_261_p1;
wire   [10:0] tmp_1693_fu_265_p2;
wire   [31:0] tmp_28_fu_291_p2;
wire   [14:0] tmp_1695_fu_296_p1;
wire   [0:0] tmp_23_fu_240_p2;
wire   [0:0] tmp_24_fu_245_p2;
wire    grp_fu_250_ce;
reg   [5:0] ap_NS_fsm;
wire   [14:0] tmp_1689_fu_182_p00;


decode_start_mul_32s_16s_32_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
decode_start_mul_32s_16s_32_3_U973(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( i_reg_128 ),
    .din1( grp_fu_250_p1 ),
    .ce( grp_fu_250_ce ),
    .dout( grp_fu_250_p2 )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        e_reg_150 <= e_1_reg_404;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        e_reg_150 <= hoffs;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ((tmp_25_fu_275_p2 == ap_const_lv1_0) | (ap_const_lv1_0 == tmp_26_fu_286_p2)))) begin
        i_reg_128 <= i_1_fu_311_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_128 <= voffs;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ((tmp_25_fu_275_p2 == ap_const_lv1_0) | (ap_const_lv1_0 == tmp_26_fu_286_p2)))) begin
        p_0_idx_reg_138 <= store_addr_sum_fu_255_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_0_idx_reg_138 <= ap_const_lv64_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p_1_rec_reg_159 <= p_rec_reg_391;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_1_rec_reg_159 <= ap_const_lv64_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        diff_reg_373 <= grp_fu_250_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(tmp_25_fu_275_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_26_fu_286_p2))) begin
        e_1_reg_404 <= e_1_fu_305_p2;
        tmp_1696_reg_399 <= tmp_1696_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        height_cast_reg_336 <= height_cast_fu_170_p1;
        tmp_1689_reg_347[14 : 1] <= tmp_1689_fu_182_p2[14 : 1];
        tmp_2281_cast_reg_352[10 : 6] <= tmp_2281_cast_fu_220_p3[10 : 6];
        tmp_reg_357 <= tmp_fu_228_p2;
        tmp_s_reg_362 <= tmp_s_fu_234_p2;
        width_cast_reg_341 <= width_cast_fu_174_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        p_rec_reg_391 <= p_rec_fu_280_p2;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st2_fsm_1 or tmp_23_fu_240_p2 or tmp_24_fu_245_p2) begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ((ap_const_lv1_0 == tmp_23_fu_240_p2) | (ap_const_lv1_0 == tmp_24_fu_245_p2))))) begin
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

always @ (ap_sig_cseq_ST_st2_fsm_1 or tmp_23_fu_240_p2 or tmp_24_fu_245_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ((ap_const_lv1_0 == tmp_23_fu_240_p2) | (ap_const_lv1_0 == tmp_24_fu_245_p2)))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_24) begin
    if (ap_sig_bdd_24) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_171) begin
    if (ap_sig_bdd_171) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_75) begin
    if (ap_sig_bdd_75) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_84) begin
    if (ap_sig_bdd_84) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_119) begin
    if (ap_sig_bdd_119) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st6_fsm_5) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_buf_ce0 = ap_const_logic_1;
    end else begin
        out_buf_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st6_fsm_5) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_buf_we0 = ap_const_logic_1;
    end else begin
        out_buf_we0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st5_fsm_4) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        store_ce0 = ap_const_logic_1;
    end else begin
        store_ce0 = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or tmp_25_fu_275_p2 or tmp_26_fu_286_p2 or tmp_23_fu_240_p2 or tmp_24_fu_245_p2) begin
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
            if (((ap_const_lv1_0 == tmp_23_fu_240_p2) | (ap_const_lv1_0 == tmp_24_fu_245_p2))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
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
            if (((tmp_25_fu_275_p2 == ap_const_lv1_0) | (ap_const_lv1_0 == tmp_26_fu_286_p2))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end



always @ (ap_CS_fsm) begin
    ap_sig_bdd_119 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_171 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_24 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_75 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_84 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign e_1_fu_305_p2 = (ap_const_lv32_1 + e_reg_150);

assign grp_fu_250_ce = ap_const_logic_1;

assign grp_fu_250_p1 = width_cast_reg_341;

assign height_cast_fu_170_p1 = $signed(height);

assign i_1_fu_311_p2 = ($signed(i_reg_128) + $signed(ap_const_lv32_1));

assign out_buf_address0 = tmp_2283_cast_fu_322_p1;

assign out_buf_d0 = store_q0[7:0];

assign p_rec_fu_280_p2 = (ap_const_lv64_1 + p_1_rec_reg_159);

assign p_shl_cast_fu_200_p3 = {{tmp_1688_fu_196_p1}, {ap_const_lv2_0}};

assign store_addr_sum_fu_255_p2 = (p_1_rec_reg_159 + p_0_idx_reg_138);

assign store_address0 = tmp_2282_cast_fu_270_p1;

assign store_offset_cast_cast_fu_192_p1 = store_offset;

assign tmp_1688_fu_196_p1 = store_offset[2:0];

assign tmp_1689_fu_182_p0 = tmp_1689_fu_182_p00;

assign tmp_1689_fu_182_p00 = tmp_42;

assign tmp_1689_fu_182_p2 = (tmp_1689_fu_182_p0 * $signed('h14BE));

assign tmp_1690_fu_208_p2 = (p_shl_cast_fu_200_p3 - store_offset_cast_cast_fu_192_p1);

assign tmp_1691_fu_214_p2 = (tmp_1690_fu_208_p2 + tmp_4_cast_cast_fu_188_p1);

assign tmp_1692_fu_261_p1 = store_addr_sum_fu_255_p2[10:0];

assign tmp_1693_fu_265_p2 = (tmp_1692_fu_261_p1 + tmp_2281_cast_reg_352);

assign tmp_1695_fu_296_p1 = tmp_28_fu_291_p2[14:0];

assign tmp_1696_fu_300_p2 = (tmp_1695_fu_296_p1 + tmp_1689_reg_347);

assign tmp_2281_cast_fu_220_p3 = {{tmp_1691_fu_214_p2}, {ap_const_lv6_0}};

assign tmp_2282_cast_fu_270_p1 = tmp_1693_fu_265_p2;

assign tmp_2283_cast_fu_322_p1 = $signed(tmp_1696_reg_399);

assign tmp_23_fu_240_p2 = ($signed(i_reg_128) < $signed(tmp_reg_357)? 1'b1: 1'b0);

assign tmp_24_fu_245_p2 = ($signed(i_reg_128) < $signed(height_cast_reg_336)? 1'b1: 1'b0);

assign tmp_25_fu_275_p2 = ($signed(e_reg_150) < $signed(tmp_s_reg_362)? 1'b1: 1'b0);

assign tmp_26_fu_286_p2 = ($signed(e_reg_150) < $signed(width_cast_reg_341)? 1'b1: 1'b0);

assign tmp_28_fu_291_p2 = (e_reg_150 + diff_reg_373);

assign tmp_4_cast_cast_fu_188_p1 = tmp_4;

assign tmp_fu_228_p2 = (voffs + ap_const_lv32_8);

assign tmp_s_fu_234_p2 = (hoffs + ap_const_lv32_8);

assign width_cast_fu_174_p1 = $signed(width);
always @ (posedge ap_clk) begin
    tmp_1689_reg_347[0] <= 1'b0;
    tmp_2281_cast_reg_352[5:0] <= 6'b000000;
end



endmodule //decode_start_WriteOneBlock
