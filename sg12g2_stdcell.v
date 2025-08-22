// Copyright 2024 IHP PDK Authors
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//    https://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// These are simple functional-only behavioral models of the PDK standard
// cells, primarily intended to work with Verilator (which the standard 
// cells do not work with). Use at your own risk!

// type: AO21 
module sg13g2_a21o_1 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;

	assign X = (A1 & A2) | B1;
endmodule

// type: AO21 
module sg13g2_a21o_2 (X, A1, A2, B1);
	output X;
	input A1, A2, B1;

	assign X = (A1 & A2) | B1;
endmodule

// type: a21oi 
module sg13g2_a21oi_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;

	assign Y = ~((A1 & A2) | B1);
endmodule

// type: a21oi 
module sg13g2_a21oi_2 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;

	assign Y = ~((A1 & A2) | B1);
endmodule

// type: a221oi 
module sg13g2_a221oi_1 (Y, A1, A2, B1, B2, C1);
	output Y;
	input A1, A2, B1, B2, C1;

	assign Y = ~((A1 & A2) | (B1 & B2) | C1);
endmodule

// type: a22oi 
module sg13g2_a22oi_1 (Y, A1, A2, B1, B2);
	output Y;
	input A1, A2, B1, B2;

	assign Y = ~((A1 & A2) | (B1 & B2));
endmodule

// type: AND2 
module sg13g2_and2_1 (X, A, B);
	output X;
	input A, B;

	assign X = A & B;
endmodule

// type: AND2 
module sg13g2_and2_2 (X, A, B);
	output X;
	input A, B;

	assign X = A & B;
endmodule

// type: AND3 
module sg13g2_and3_1 (X, A, B, C);
	output X;
	input A, B, C;

	assign X = A & B & C;
endmodule

// type: AND3 
module sg13g2_and3_2 (X, A, B, C);
	output X;
	input A, B, C;

	assign X = A & B & C;
endmodule

// type: AND4 
module sg13g2_and4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;

	assign X = A & B & C & D;
endmodule

// type: AND4 
module sg13g2_and4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;

	assign X = A & B & C & D;
endmodule
`endcelldefine

// type: NP_ant 
module sg13g2_antennanp (A);
	input A;
endmodule


// type: BU 
module sg13g2_buf_1 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: BU 
module sg13g2_buf_16 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: BU 
module sg13g2_buf_2 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: BU 
module sg13g2_buf_4 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: BU 
module sg13g2_buf_8 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: DECAP 
module sg13g2_decap_4 ();
endmodule

// type: DECAP 
module sg13g2_decap_8 ();
endmodule

// type: dffrr 
module sg13g2_dfrbp_1 (Q, Q_N, D, RESET_B, CLK);
	output Q, Q_N;
	input D, RESET_B, CLK;

	assign Q_N = ~Q;
	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= D;
		end
	end
endmodule

// type: dffrr 
module sg13g2_dfrbp_2 (Q, Q_N, D, RESET_B, CLK);
	output Q, Q_N;
	input D, RESET_B, CLK;

	assign Q_N = ~Q;
	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= D;
		end
	end
endmodule

// type: dfrbpq 
module sg13g2_dfrbpq_1 (Q, D, RESET_B, CLK);
	output reg Q;
	input D, RESET_B, CLK;

	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= D;
		end
	end
endmodule

// type: dfrbpq 
module sg13g2_dfrbpq_2 (Q, D, RESET_B, CLK);
	output reg Q;
	input D, RESET_B, CLK;

	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= D;
		end
	end
endmodule

module sg13g2_dlhq_1 (Q, D, GATE);
	output reg Q;
	input D, GATE;

	always_latch begin
		if (GATE) begin
			Q <= D;
		end
	end
endmodule

module sg13g2_dlhr_1 (Q, Q_N, D, RESET_B, GATE);
	output reg Q, Q_N;
	input D, RESET_B, GATE;

	assign Q_N = ~Q;
	always_latch @(*) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else if (GATE) begin
			Q <= D;
		end
	end
endmodule

module sg13g2_dlhrq_1 (Q, D, RESET_B, GATE);
	output reg Q;
	input D, RESET_B, GATE;

	always_latch begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else if (GATE) begin
			Q <= D;
		end
	end
endmodule

// type: DLLR 
module sg13g2_dllr_1 (Q, Q_N, D, RESET_B, GATE_N);
	output reg Q, Q_N;
	input D, RESET_B, GATE_N;

	assign Q_N = ~Q;
	always_latch begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else if (!GATE_N) begin
			Q <= D;
		end
	end
endmodule

// type: DLLRQ 
module sg13g2_dllrq_1 (Q, D, RESET_B, GATE_N);
	output reg Q;
	input D, RESET_B, GATE_N;

	always @(*) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else if (!GATE_N) begin
			Q <= D;
		end
	end
endmodule

// type: DLY1 
module sg13g2_dlygate4sd1_1 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: DLY2 
module sg13g2_dlygate4sd2_1 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: DLY4 
module sg13g2_dlygate4sd3_1 (X, A);
	output X;
	input A;

	assign X = A;
endmodule

// type: BTL 
module sg13g2_ebufn_2 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : A;
endmodule

// type: BTL 
module sg13g2_ebufn_4 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : A;
endmodule

// type: BTL 
module sg13g2_ebufn_8 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : A;
endmodule

// type: einvin 
module sg13g2_einvn_2 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : ~A;
endmodule

// type: einvin 
module sg13g2_einvn_4 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : ~A;
endmodule

// type: ITL 
module sg13g2_einvn_8 (Z, A, TE_B);
	output Z;
	input A, TE_B;

	assign Z = TE_B ? 1'bz : ~A;
endmodule

// type: fill 
module sg13g2_fill_1 ();
endmodule

// type: fill 
module sg13g2_fill_2 ();
endmodule

// type: fill 
module sg13g2_fill_4 ();
endmodule

// type: fill 
module sg13g2_fill_8 ();
endmodule

// type: IN 
module sg13g2_inv_1 (Y, A);
	output Y;
	input A;

	assign Y = ~A;
endmodule

// type: IN 
module sg13g2_inv_16 (Y, A);
	output Y;
	input A;

	assign Y = ~A;
endmodule

// type: IN 
module sg13g2_inv_2 (Y, A);
	output Y;
	input A;

	assign Y = ~A;
endmodule

// type: IN 
module sg13g2_inv_4 (Y, A);
	output Y;
	input A;

	assign Y = ~A;
endmodule

// type: IN 
module sg13g2_inv_8 (Y, A);
	output Y;
	input A;

	assign Y = ~A;
endmodule

// type: gclk 
module sg13g2_lgcp_1 (GCLK, GATE, CLK);
	output GCLK;
	input GATE, CLK;

	reg enable_latch;
	always_latch begin
		if (~CLK)
			enable_latch <= GATE;
	end

	assign GCLK = CLK & enable_latch;
endmodule

// type: mux2 
module sg13g2_mux2_1 (X, A0, A1, S);
	output X;
	input A0, A1, S;

	assign X = S ? A1 : A0;
endmodule

// type: mux2 
module sg13g2_mux2_2 (X, A0, A1, S);
	output X;
	input A0, A1, S;

	assign X = S ? A1 : A0;
endmodule

// type: mux4 
module sg13g2_mux4_1 (X, A0, A1, A2, A3, S0, S1);
	output reg X;
	input A0, A1, A2, A3, S0, S1;

	always_comb begin
		case ({S1, S0})
			2'b00: X = A0;
			2'b01: X = A1;
			2'b10: X = A2;
			2'b11: X = A3;
		endcase
	end
endmodule

// type: nand2 
module sg13g2_nand2_1 (Y, A, B);
	output Y;
	input A, B;

	assign Y = ~(A & B);
endmodule

// type: nand2 
module sg13g2_nand2_2 (Y, A, B);
	output Y;
	input A, B;

	assign Y = ~(A & B);
endmodule

// type: nand2b1 
module sg13g2_nand2b_1 (Y, A_N, B);
	output Y;
	input A_N, B;

	assign Y = ~(~A_N & B);
endmodule

// type: nand2b2 
module sg13g2_nand2b_2 (Y, A_N, B);
	output Y;
	input A_N, B;

	assign Y = ~(~A_N & B);
endmodule

// type: nand3 
module sg13g2_nand3_1 (Y, A, B, C);
	output Y;
	input A, B, C;

	assign Y = ~(A & B & C);
endmodule

// type: nand3b1 
module sg13g2_nand3b_1 (Y, A_N, B, C);
	output Y;
	input A_N, B, C;

	assign Y = ~(~A_N & B & C);
endmodule

// type: nand4 
module sg13g2_nand4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	// Function
	assign Y = ~(A & B & C & D);
endmodule

// type: nor2 
module sg13g2_nor2_1 (Y, A, B);
	output Y;
	input A, B;

	assign Y = ~(A | B);
endmodule

// type: nor2 
module sg13g2_nor2_2 (Y, A, B);
	output Y;
	input A, B;

	assign Y = ~(A | B);
endmodule

// type: nor2b 
module sg13g2_nor2b_1 (Y, A, B_N);
	output Y;
	input A, B_N;

	assign Y = ~(A | ~B_N);
endmodule

// type: nor2b 
module sg13g2_nor2b_2 (Y, A, B_N);
	output Y;
	input A, B_N;

	assign Y = ~(A | ~B_N);
endmodule

// type: nor3 
module sg13g2_nor3_1 (Y, A, B, C);
	output Y;
	input A, B, C;

	assign Y = ~(A | B | C);
endmodule

// type: nor3 
module sg13g2_nor3_2 (Y, A, B, C);
	output Y;
	input A, B, C;

	assign Y = ~(A | B | C);
endmodule

// type: nor4 
module sg13g2_nor4_1 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	assign Y = ~(A | B | C | D);
endmodule

// type: nor4 
module sg13g2_nor4_2 (Y, A, B, C, D);
	output Y;
	input A, B, C, D;

	assign Y = ~(A | B | C | D);
endmodule

// type: o21ai 
module sg13g2_o21ai_1 (Y, A1, A2, B1);
	output Y;
	input A1, A2, B1;

	assign Y = ~((A1 | A2) & B1);
endmodule

// type: or2 
module sg13g2_or2_1 (X, A, B);
	output X;
	input A, B;

	assign X = A | B;
endmodule

// type: or2 
module sg13g2_or2_2 (X, A, B);
	output X;
	input A, B;

	assign X = A | B;
endmodule

// type: or3 
module sg13g2_or3_1 (X, A, B, C);
	output X;
	input A, B, C;

	assign X = A | B | C;
endmodule

// type: or3 
module sg13g2_or3_2 (X, A, B, C);
	output X;
	input A, B, C;

	assign X = A | B | C;
endmodule

// type: or4 
module sg13g2_or4_1 (X, A, B, C, D);
	output X;
	input A, B, C, D;

	// Function
	assign X = A | B | C | D;
endmodule

// type: or4 
module sg13g2_or4_2 (X, A, B, C, D);
	output X;
	input A, B, C, D;

	assign X = A | B | C | D;
endmodule

// type: sdfrrs 
module sg13g2_sdfbbp_1 (Q, Q_N, D, SCD, SCE, RESET_B, SET_B, CLK);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, SET_B, CLK;

	assign Q_N = ~Q;
	always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
		if (!SET_B) begin
			Q <= 1'b1;
		end else if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= SCE ? SCD : D;
		end
	end
endmodule

// type: sdfrbp
module sg13g2_sdfrbp_1 (Q, Q_N, D, SCD, SCE, RESET_B, CLK);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;

	assign Q_N = ~Q;
	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= SCE ? SCD : D;
		end
	end
endmodule

// type: sdfrbp 
module sg13g2_sdfrbp_2 (Q, Q_N, D, SCD, SCE, RESET_B, CLK);
	output Q, Q_N;
	input D, SCD, SCE, RESET_B, CLK;

	assign Q_N = ~Q;
	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= SCE ? SCD : D;
		end
	end
endmodule

// type: sdfrbpq 
module sg13g2_sdfrbpq_1 (Q, D, SCD, SCE, RESET_B, CLK);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;

	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= SCE ? SCD : D;
		end
	end
endmodule

// type: sdfrbpq 
module sg13g2_sdfrbpq_2 (Q, D, SCD, SCE, RESET_B, CLK);
	output Q;
	input D, SCD, SCE, RESET_B, CLK;

	always @(posedge CLK or negedge RESET_B) begin
		if (!RESET_B) begin
			Q <= 1'b0;
		end else begin
			Q <= SCE ? SCD : D;
		end
	end
endmodule

// type: keepstate 
module sg13g2_sighold (SH);
	inout SH;
endmodule

// type: sgclk 
module sg13g2_slgcp_1 (GCLK, GATE, SCE, CLK);
	output GCLK;
	input GATE, SCE, CLK;
	
	reg enable_latch;
	always_latch begin
		if (~CLK)
			enable_latch <= GATE;
	end

	assign GCLK = CLK & enable_latch;
endmodule

// type: tie1 
module sg13g2_tiehi (L_HI);
	output L_HI;

	assign L_HI = 1'b1;
endmodule


// type: tie0 

module sg13g2_tielo (L_LO);
	output L_LO;

	assign L_LO = 1'b0;
endmodule

// type: xnor2_1 
module sg13g2_xnor2_1 (Y, A, B);
	output Y;
	input A, B;

	assign Y = ~(A ^ B);
endmodule

// type: xor2_1 
module sg13g2_xor2_1 (X, A, B);
	output X;
	input A, B;

	assign X = A ^ B;
endmodule
