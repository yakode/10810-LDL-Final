`define C2  32'd131
`define D2  32'd147
`define E2  32'd165
`define F2  32'd175
`define G2  32'd196
`define A2  32'd220
`define B2  32'd247
`define C3  32'd262
`define D3  32'd294
`define E3  32'd330
`define F3  32'd350
`define G3  32'd392
`define A3  32'd440
`define B3  32'd494
`define C4  32'd524
`define D4  32'd588
`define E4  32'd660
`define F4  32'd698
`define G4  32'd784
`define A4  32'd880   
`define B4  32'd988
`define C5  32'd1047
`define sil   32'd50000000 // slience

`define CD2 32'd139
`define DE2 32'd156
`define FG2 32'd185
`define GA2 32'd208
`define AB2 32'd233
`define CD3 32'd277
`define DE3 32'd311
`define FG3 32'd370
`define GA3 32'd415
`define AB3 32'd466
`define CD4 32'd554
`define DE4 32'd622
`define FG4 32'd740
`define GA4 32'd830
`define AB4 32'd932

module pixel_gen(
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   input valid,
   input [31:0] toneL,
   input [31:0] toneR,
   output reg [3:0] vgaRed,
   output reg [3:0] vgaGreen,
   output reg [3:0] vgaBlue
   );
   
	always @(*) begin
		if(!valid)
             {vgaRed, vgaGreen, vgaBlue} = 12'h0;
		else if(v_cnt > 160 && v_cnt < 360 && h_cnt > 45 && h_cnt < 594)begin
			if(h_cnt > 62 && h_cnt < 78 && v_cnt < 280)begin
				//black keys
				if(toneR == `CD2 || toneL == `CD2)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 87 && h_cnt < 103 && v_cnt < 280)begin
				if(toneR == `DE2 || toneL == `DE2)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 137 && h_cnt < 153 && v_cnt < 280)begin
				if(toneR == `FG2 || toneL == `FG2)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 162 && h_cnt < 178 && v_cnt < 280)begin
				if(toneR == `GA2 || toneL == `GA2)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 187 && h_cnt < 203 && v_cnt < 280)begin
				if(toneR == `AB2 || toneL == `AB2)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 237 && h_cnt < 253 && v_cnt < 280)begin
				if(toneR == `CD3 || toneL == `CD3)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 262 && h_cnt < 278 && v_cnt < 280)begin
				if(toneR == `DE3 || toneL == `DE3)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 312 && h_cnt < 328 && v_cnt < 280)begin
				if(toneR == `FG3 || toneL == `FG3)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 337 && h_cnt < 353 && v_cnt < 280)begin
				if(toneR == `GA3 || toneL == `GA3)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 362 && h_cnt < 378 && v_cnt < 280)begin
				if(toneR == `AB3 || toneL == `AB3)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 412 && h_cnt < 428 && v_cnt < 280)begin
				if(toneR == `CD4 || toneL == `CD4)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 437 && h_cnt < 453 && v_cnt < 280)begin
				if(toneR == `DE4 || toneL == `DE4)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 487 && h_cnt < 503 && v_cnt < 280)begin
				if(toneR == `FG4 || toneL == `FG4)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 512 && h_cnt < 528 && v_cnt < 280)begin
				if(toneR == `GA4 || toneL == `GA4)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt > 537 && h_cnt < 553 && v_cnt < 280)begin
				if(toneR == `AB4 || toneL == `AB4)begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h555;	
				end else begin
					{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
				end
			end else if(h_cnt < 70)begin
				//white keys
				if(toneL == `C2 || toneR == `C2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 71)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 95)begin
				if(toneL == `D2 || toneR == `D2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 96)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 120)begin
				if(toneL == `E2 || toneR == `E2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 121)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 145)begin
				if(toneL == `F2 || toneR == `F2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 146)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 170)begin
				if(toneL == `G2 || toneR == `G2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 171)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 195)begin
				if(toneL == `A2 || toneR == `A2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 196)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 220)begin
				if(toneL == `B2 || toneR == `B2)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 221)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 245)begin
				if(toneL == `C3 || toneR == `C3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 246)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 270)begin
				if(toneL == `D3 || toneR == `D3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 271)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 295)begin
				if(toneL == `E3 || toneR == `E3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 296)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 320)begin
				if(toneL == `F3 || toneR == `F3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 321)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 345)begin
				if(toneL == `G3 || toneR == `G3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 346)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 370)begin
				if(toneL == `A3 || toneR == `A3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 371)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 395)begin
				if(toneL == `B3 || toneR == `B3)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 396)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 420)begin
				if(toneL == `C4 || toneR == `C4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 421)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 445)begin
				if(toneL == `D4 || toneR == `D4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 446)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 470)begin
				if(toneL == `E4 || toneR == `E4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 471)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 495)begin
				if(toneL == `F4 || toneR == `F4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 496)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 520)begin
				if(toneL == `G4 || toneR == `G4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 521)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 545)begin
				if(toneL == `A4 || toneR == `A4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 546)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 570)begin
				if(toneL == `B4 || toneR == `B4)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else if(h_cnt == 571)begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end else if(h_cnt < 595)begin
				if(toneL == `C5 || toneR == `C5)
					{vgaRed, vgaGreen, vgaBlue} = 12'haaa;
				else	
					{vgaRed, vgaGreen, vgaBlue} = 12'hfff;	
			end else begin
				{vgaRed, vgaGreen, vgaBlue} = 12'h000;	
			end
		end else
             {vgaRed, vgaGreen, vgaBlue} = 12'h0;
	end
endmodule
