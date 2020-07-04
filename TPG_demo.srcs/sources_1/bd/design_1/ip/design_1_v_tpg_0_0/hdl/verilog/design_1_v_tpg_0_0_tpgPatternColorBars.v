// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgPatternColorBars (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        y,
        x,
        width,
        color,
        bck_motion_en,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] y;
input  [15:0] x;
input  [15:0] width;
input  [7:0] color;
input  [15:0] bck_motion_en;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] s;
reg   [7:0] hBarSel_4_0;
wire   [2:0] tpgBarSelRgb_r_address0;
reg    tpgBarSelRgb_r_ce0;
wire   [0:0] tpgBarSelRgb_r_q0;
wire   [2:0] tpgBarSelYuv_y_address0;
reg    tpgBarSelYuv_y_ce0;
wire   [7:0] tpgBarSelYuv_y_q0;
wire   [2:0] tpgBarSelRgb_g_address0;
reg    tpgBarSelRgb_g_ce0;
wire   [0:0] tpgBarSelRgb_g_q0;
wire   [2:0] tpgBarSelYuv_v_address0;
reg    tpgBarSelYuv_v_ce0;
wire   [7:0] tpgBarSelYuv_v_q0;
wire   [2:0] tpgBarSelYuv_u_address0;
reg    tpgBarSelYuv_u_ce0;
wire   [7:0] tpgBarSelYuv_u_q0;
wire   [2:0] tpgBarSelRgb_b_address0;
reg    tpgBarSelRgb_b_ce0;
wire   [0:0] tpgBarSelRgb_b_q0;
reg   [10:0] xBar_V_0;
reg   [31:0] count;
wire   [0:0] icmp_ln1161_fu_223_p2;
wire   [10:0] barWidth_V_fu_239_p4;
wire   [0:0] icmp_ln1172_fu_249_p2;
reg   [0:0] icmp_ln1172_reg_594;
wire   [0:0] icmp_ln1187_fu_255_p2;
wire   [0:0] and_ln1188_1_fu_283_p2;
reg   [0:0] and_ln1188_1_reg_605;
reg   [0:0] and_ln1188_1_reg_605_pp0_iter1_reg;
reg   [0:0] and_ln1188_1_reg_605_pp0_iter2_reg;
wire   [0:0] icmp_ln1192_fu_289_p2;
wire   [0:0] icmp_ln1194_fu_301_p2;
reg   [0:0] icmp_ln1194_reg_614;
reg   [0:0] icmp_ln1194_reg_614_pp0_iter1_reg;
wire   [31:0] select_ln1161_fu_311_p3;
reg   [31:0] select_ln1161_reg_618;
wire   [7:0] trunc_ln1174_fu_318_p1;
wire   [7:0] zext_ln1184_fu_376_p1;
wire   [0:0] icmp_ln887_fu_343_p2;
wire   [0:0] icmp_ln1198_fu_430_p2;
reg   [0:0] icmp_ln1198_reg_641;
wire   [0:0] icmp_ln1200_fu_436_p2;
reg   [0:0] icmp_ln1200_reg_647;
reg    ap_block_pp0_stage0_subdone;
wire   [7:0] ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_0_reg_186;
reg   [7:0] ap_phi_reg_pp0_iter1_hBarSel_4_0_loc_0_reg_186;
reg   [7:0] ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186;
reg   [0:0] ap_phi_mux_s_flag_4_phi_fu_200_p6;
wire   [0:0] ap_phi_reg_pp0_iter0_s_flag_4_reg_197;
reg   [0:0] ap_phi_reg_pp0_iter1_s_flag_4_reg_197;
reg   [0:0] ap_phi_reg_pp0_iter2_s_flag_4_reg_197;
wire   [0:0] or_ln1198_fu_491_p2;
reg   [31:0] ap_phi_mux_s_new_4_phi_fu_213_p6;
wire   [31:0] ap_phi_reg_pp0_iter0_s_new_4_reg_209;
reg   [31:0] ap_phi_reg_pp0_iter1_s_new_4_reg_209;
reg   [31:0] ap_phi_reg_pp0_iter2_s_new_4_reg_209;
wire   [31:0] select_ln1198_fu_497_p3;
wire   [63:0] zext_ln1187_fu_464_p1;
reg   [31:0] ap_sig_allocacmp_s_load;
wire   [10:0] add_ln214_1_fu_354_p2;
wire   [10:0] add_ln214_fu_386_p2;
wire   [31:0] select_ln1198_1_fu_450_p3;
wire   [13:0] trunc_ln1168_fu_229_p1;
wire   [13:0] add_ln1168_fu_233_p2;
wire   [0:0] trunc_ln1188_fu_261_p1;
wire   [0:0] xor_ln1187_fu_265_p2;
wire   [0:0] and_ln1188_fu_277_p2;
wire   [0:0] icmp_ln1188_fu_271_p2;
wire   [15:0] or_ln1194_fu_295_p2;
wire   [11:0] zext_ln1353_fu_333_p1;
wire   [11:0] add_ln1353_fu_337_p2;
wire   [11:0] zext_ln1187_1_fu_322_p1;
wire   [10:0] sub_ln214_fu_349_p2;
wire   [2:0] trunc_ln1184_fu_366_p1;
wire   [2:0] add_ln1184_fu_370_p2;
wire   [28:0] tmp_fu_420_p4;
wire   [31:0] add_ln1196_fu_414_p2;
wire   [31:0] select_ln1200_1_fu_442_p3;
wire   [31:0] add_ln1202_fu_474_p2;
wire   [0:0] xor_ln1198_fu_486_p2;
wire   [31:0] select_ln1200_fu_479_p3;
wire   [7:0] select_ln300_fu_511_p3;
wire   [7:0] select_ln300_5_fu_526_p3;
wire   [7:0] select_ln1187_1_fu_534_p3;
wire   [7:0] select_ln300_6_fu_548_p3;
wire   [7:0] select_ln1187_fu_519_p3;
wire   [7:0] select_ln1188_fu_541_p3;
wire   [7:0] select_ln1187_2_fu_556_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_204;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 s = 32'd0;
#0 hBarSel_4_0 = 8'd0;
#0 xBar_V_0 = 11'd0;
#0 count = 32'd0;
end

design_1_v_tpg_0_0_tpgPatternDPColorcud #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_r_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_r_address0),
    .ce0(tpgBarSelRgb_r_ce0),
    .q0(tpgBarSelRgb_r_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckerqcK #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_y_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_y_address0),
    .ce0(tpgBarSelYuv_y_ce0),
    .q0(tpgBarSelYuv_y_q0)
);

design_1_v_tpg_0_0_tpgPatternDPColordEe #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_g_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_g_address0),
    .ce0(tpgBarSelRgb_g_ce0),
    .q0(tpgBarSelRgb_g_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckersc4 #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_v_address0),
    .ce0(tpgBarSelYuv_v_ce0),
    .q0(tpgBarSelYuv_v_q0)
);

design_1_v_tpg_0_0_tpgPatternCheckertde #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelYuv_u_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelYuv_u_address0),
    .ce0(tpgBarSelYuv_u_ce0),
    .q0(tpgBarSelYuv_u_q0)
);

design_1_v_tpg_0_0_tpgPatternDPColoreOg #(
    .DataWidth( 1 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
tpgBarSelRgb_b_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tpgBarSelRgb_b_address0),
    .ce0(tpgBarSelRgb_b_ce0),
    .q0(tpgBarSelRgb_b_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1192_fu_289_p2 == 1'd0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1194_fu_301_p2 == 1'd0) & (icmp_ln1192_fu_289_p2 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_s_flag_4_reg_197 <= icmp_ln1161_fu_223_p2;
    end else if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_s_flag_4_reg_197 <= ap_phi_reg_pp0_iter0_s_flag_4_reg_197;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1192_fu_289_p2 == 1'd0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1194_fu_301_p2 == 1'd0) & (icmp_ln1192_fu_289_p2 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_s_new_4_reg_209 <= 32'd0;
    end else if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_s_new_4_reg_209 <= ap_phi_reg_pp0_iter0_s_new_4_reg_209;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_204)) begin
        if (((icmp_ln887_fu_343_p2 == 1'd0) & (icmp_ln1172_reg_594 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186 <= zext_ln1184_fu_376_p1;
        end else if (((icmp_ln887_fu_343_p2 == 1'd1) & (icmp_ln1172_reg_594 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186 <= hBarSel_4_0;
        end else if ((icmp_ln1172_reg_594 == 1'd1)) begin
            ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186 <= trunc_ln1174_fu_318_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186 <= ap_phi_reg_pp0_iter1_hBarSel_4_0_loc_0_reg_186;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_204)) begin
        if ((icmp_ln1172_reg_594 == 1'd1)) begin
            hBarSel_4_0 <= trunc_ln1174_fu_318_p1;
        end else if (((icmp_ln887_fu_343_p2 == 1'd0) & (icmp_ln1172_reg_594 == 1'd0))) begin
            hBarSel_4_0 <= zext_ln1184_fu_376_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_204)) begin
        if ((icmp_ln1172_reg_594 == 1'd1)) begin
            xBar_V_0 <= 11'd0;
        end else if (((icmp_ln887_fu_343_p2 == 1'd1) & (icmp_ln1172_reg_594 == 1'd0))) begin
            xBar_V_0 <= add_ln214_fu_386_p2;
        end else if (((icmp_ln887_fu_343_p2 == 1'd0) & (icmp_ln1172_reg_594 == 1'd0))) begin
            xBar_V_0 <= add_ln214_1_fu_354_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln1188_1_reg_605 <= and_ln1188_1_fu_283_p2;
        and_ln1188_1_reg_605_pp0_iter1_reg <= and_ln1188_1_reg_605;
        icmp_ln1172_reg_594 <= icmp_ln1172_fu_249_p2;
        icmp_ln1194_reg_614_pp0_iter1_reg <= icmp_ln1194_reg_614;
        select_ln1161_reg_618 <= select_ln1161_fu_311_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln1188_1_reg_605_pp0_iter2_reg <= and_ln1188_1_reg_605_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_hBarSel_4_0_loc_0_reg_186 <= ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_0_reg_186;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_s_flag_4_reg_197 <= ap_phi_reg_pp0_iter1_s_flag_4_reg_197;
        ap_phi_reg_pp0_iter2_s_new_4_reg_209 <= ap_phi_reg_pp0_iter1_s_new_4_reg_209;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1194_reg_614 == 1'd1) & (icmp_ln1192_fu_289_p2 == 1'd1))) begin
        count <= select_ln1198_1_fu_450_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1192_fu_289_p2 == 1'd1))) begin
        icmp_ln1194_reg_614 <= icmp_ln1194_fu_301_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1194_reg_614 == 1'd1) & (icmp_ln1192_fu_289_p2 == 1'd1))) begin
        icmp_ln1198_reg_641 <= icmp_ln1198_fu_430_p2;
        icmp_ln1200_reg_647 <= icmp_ln1200_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_phi_mux_s_flag_4_phi_fu_200_p6 == 1'd1))) begin
        s <= ap_phi_mux_s_new_4_phi_fu_213_p6;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1194_reg_614_pp0_iter1_reg == 1'd1) & (icmp_ln1192_fu_289_p2 == 1'd1))) begin
        ap_phi_mux_s_flag_4_phi_fu_200_p6 = or_ln1198_fu_491_p2;
    end else begin
        ap_phi_mux_s_flag_4_phi_fu_200_p6 = ap_phi_reg_pp0_iter2_s_flag_4_reg_197;
    end
end

always @ (*) begin
    if (((icmp_ln1194_reg_614_pp0_iter1_reg == 1'd1) & (icmp_ln1192_fu_289_p2 == 1'd1))) begin
        ap_phi_mux_s_new_4_phi_fu_213_p6 = select_ln1198_fu_497_p3;
    end else begin
        ap_phi_mux_s_new_4_phi_fu_213_p6 = ap_phi_reg_pp0_iter2_s_new_4_reg_209;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_phi_mux_s_flag_4_phi_fu_200_p6 == 1'd1))) begin
        ap_sig_allocacmp_s_load = ap_phi_mux_s_new_4_phi_fu_213_p6;
    end else begin
        ap_sig_allocacmp_s_load = s;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelRgb_b_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelRgb_g_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_g_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelRgb_r_ce0 = 1'b1;
    end else begin
        tpgBarSelRgb_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelYuv_u_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_u_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelYuv_v_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tpgBarSelYuv_y_ce0 = 1'b1;
    end else begin
        tpgBarSelYuv_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1168_fu_233_p2 = (14'd7 + trunc_ln1168_fu_229_p1);

assign add_ln1184_fu_370_p2 = (3'd1 + trunc_ln1184_fu_366_p1);

assign add_ln1196_fu_414_p2 = (count + 32'd1);

assign add_ln1202_fu_474_p2 = (select_ln1161_reg_618 + 32'd1);

assign add_ln1353_fu_337_p2 = (zext_ln1353_fu_333_p1 + 12'd1);

assign add_ln214_1_fu_354_p2 = (xBar_V_0 + sub_ln214_fu_349_p2);

assign add_ln214_fu_386_p2 = (xBar_V_0 + 11'd1);

assign and_ln1188_1_fu_283_p2 = (icmp_ln1188_fu_271_p2 & and_ln1188_fu_277_p2);

assign and_ln1188_fu_277_p2 = (xor_ln1187_fu_265_p2 & trunc_ln1188_fu_261_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_204 = ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_hBarSel_4_0_loc_0_reg_186 = 'bx;

assign ap_phi_reg_pp0_iter0_s_flag_4_reg_197 = 'bx;

assign ap_phi_reg_pp0_iter0_s_new_4_reg_209 = 'bx;

assign ap_return_0 = select_ln1187_fu_519_p3;

assign ap_return_1 = select_ln1188_fu_541_p3;

assign ap_return_2 = select_ln1187_2_fu_556_p3;

assign barWidth_V_fu_239_p4 = {{add_ln1168_fu_233_p2[13:3]}};

assign icmp_ln1161_fu_223_p2 = ((bck_motion_en == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1172_fu_249_p2 = ((x == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1187_fu_255_p2 = ((color == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1188_fu_271_p2 = ((color != 8'd1) ? 1'b1 : 1'b0);

assign icmp_ln1192_fu_289_p2 = ((bck_motion_en == 16'd1) ? 1'b1 : 1'b0);

assign icmp_ln1194_fu_301_p2 = ((or_ln1194_fu_295_p2 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1198_fu_430_p2 = (($signed(tmp_fu_420_p4) < $signed(29'd1)) ? 1'b1 : 1'b0);

assign icmp_ln1200_fu_436_p2 = ((add_ln1196_fu_414_p2 == 32'd10) ? 1'b1 : 1'b0);

assign icmp_ln887_fu_343_p2 = ((add_ln1353_fu_337_p2 < zext_ln1187_1_fu_322_p1) ? 1'b1 : 1'b0);

assign or_ln1194_fu_295_p2 = (y | x);

assign or_ln1198_fu_491_p2 = (xor_ln1198_fu_486_p2 | icmp_ln1200_reg_647);

assign select_ln1161_fu_311_p3 = ((icmp_ln1161_fu_223_p2[0:0] === 1'b1) ? 32'd0 : ap_sig_allocacmp_s_load);

assign select_ln1187_1_fu_534_p3 = ((icmp_ln1187_fu_255_p2[0:0] === 1'b1) ? select_ln300_5_fu_526_p3 : tpgBarSelYuv_u_q0);

assign select_ln1187_2_fu_556_p3 = ((icmp_ln1187_fu_255_p2[0:0] === 1'b1) ? select_ln300_6_fu_548_p3 : tpgBarSelYuv_v_q0);

assign select_ln1187_fu_519_p3 = ((icmp_ln1187_fu_255_p2[0:0] === 1'b1) ? select_ln300_fu_511_p3 : tpgBarSelYuv_y_q0);

assign select_ln1188_fu_541_p3 = ((and_ln1188_1_reg_605_pp0_iter2_reg[0:0] === 1'b1) ? tpgBarSelYuv_v_q0 : select_ln1187_1_fu_534_p3);

assign select_ln1198_1_fu_450_p3 = ((icmp_ln1198_fu_430_p2[0:0] === 1'b1) ? select_ln1200_1_fu_442_p3 : add_ln1196_fu_414_p2);

assign select_ln1198_fu_497_p3 = ((icmp_ln1198_reg_641[0:0] === 1'b1) ? select_ln1200_fu_479_p3 : 32'd0);

assign select_ln1200_1_fu_442_p3 = ((icmp_ln1200_fu_436_p2[0:0] === 1'b1) ? 32'd0 : add_ln1196_fu_414_p2);

assign select_ln1200_fu_479_p3 = ((icmp_ln1200_reg_647[0:0] === 1'b1) ? add_ln1202_fu_474_p2 : 32'd0);

assign select_ln300_5_fu_526_p3 = ((tpgBarSelRgb_g_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln300_6_fu_548_p3 = ((tpgBarSelRgb_b_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln300_fu_511_p3 = ((tpgBarSelRgb_r_q0[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign sub_ln214_fu_349_p2 = (11'd1 - barWidth_V_fu_239_p4);

assign tmp_fu_420_p4 = {{select_ln1161_fu_311_p3[31:3]}};

assign tpgBarSelRgb_b_address0 = zext_ln1187_fu_464_p1;

assign tpgBarSelRgb_g_address0 = zext_ln1187_fu_464_p1;

assign tpgBarSelRgb_r_address0 = zext_ln1187_fu_464_p1;

assign tpgBarSelYuv_u_address0 = zext_ln1187_fu_464_p1;

assign tpgBarSelYuv_v_address0 = zext_ln1187_fu_464_p1;

assign tpgBarSelYuv_y_address0 = zext_ln1187_fu_464_p1;

assign trunc_ln1168_fu_229_p1 = width[13:0];

assign trunc_ln1174_fu_318_p1 = select_ln1161_fu_311_p3[7:0];

assign trunc_ln1184_fu_366_p1 = hBarSel_4_0[2:0];

assign trunc_ln1188_fu_261_p1 = x[0:0];

assign xor_ln1187_fu_265_p2 = (icmp_ln1187_fu_255_p2 ^ 1'd1);

assign xor_ln1198_fu_486_p2 = (icmp_ln1198_reg_641 ^ 1'd1);

assign zext_ln1184_fu_376_p1 = add_ln1184_fu_370_p2;

assign zext_ln1187_1_fu_322_p1 = barWidth_V_fu_239_p4;

assign zext_ln1187_fu_464_p1 = ap_phi_reg_pp0_iter2_hBarSel_4_0_loc_0_reg_186;

assign zext_ln1353_fu_333_p1 = xBar_V_0;

endmodule //design_1_v_tpg_0_0_tpgPatternColorBars
