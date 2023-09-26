module Blank(clk,Outbus,Gnd);
output reg [49:0] Outbus;
output reg [4:0] Gnd;
input clk;

parameter s0 = 4'b000;
parameter s1 = 4'b001;
parameter s2 = 4'b010;
parameter s3 = 4'b011;
parameter s4 = 4'b100;

reg [2:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @(*)
begin
case(ps)
s0:begin Outbus[49:48] = 2'b00; Outbus[47:46] = 2'b00; Outbus[45:44] = 2'b00; Outbus[43:42] = 2'b00; Outbus[41:40] = 2'b00;
	 Outbus[39:38] = 2'b00; Outbus[37:36] = 2'b00; Outbus[35:34] = 2'b00; Outbus[33:32] = 2'b00; Outbus[31:30] = 2'b00; 
	 Outbus[29:28] = 2'b00; Outbus[27:26] = 2'b00; Outbus[25:24] = 2'b00; Outbus[23:22] = 2'b00; Outbus[21:20] = 2'b00;
	 Outbus[19:18] = 2'b00; Outbus[17:16] = 2'b00; Outbus[15:14] = 2'b00; Outbus[13:12] = 2'b00; Outbus[11:10] = 2'b00; 
	 Outbus[9:8] = 2'b00; Outbus[7:6] = 2'b00; Outbus[5:4] = 2'b00; Outbus[3:2] = 2'b00; Outbus[1:0] = 2'b00;
	 ns = s1; Gnd = 5'b11110;  end

s1:begin Outbus[49:48] = 2'b00; Outbus[47:46] = 2'b00; Outbus[45:44] = 2'b00; Outbus[43:42] = 2'b00; Outbus[41:40] = 2'b00;
	 Outbus[39:38] = 2'b00; Outbus[37:36] = 2'b00; Outbus[35:34] = 2'b00; Outbus[33:32] = 2'b00; Outbus[31:30] = 2'b00; 
	 Outbus[29:28] = 2'b00; Outbus[27:26] = 2'b00; Outbus[25:24] = 2'b00; Outbus[23:22] = 2'b00; Outbus[21:20] = 2'b00;
	 Outbus[19:18] = 2'b00; Outbus[17:16] = 2'b00; Outbus[15:14] = 2'b00; Outbus[13:12] = 2'b00; Outbus[11:10] = 2'b00; 
	 Outbus[9:8] = 2'b00; Outbus[7:6] = 2'b00; Outbus[5:4] = 2'b00; Outbus[3:2] = 2'b00; Outbus[1:0] = 2'b00;
	 ns = s2; Gnd = 5'b11101;  end

s2:begin Outbus[49:48] = 2'b00; Outbus[47:46] = 2'b00; Outbus[45:44] = 2'b00; Outbus[43:42] = 2'b00; Outbus[41:40] = 2'b00;
	 Outbus[39:38] = 2'b00; Outbus[37:36] = 2'b00; Outbus[35:34] = 2'b00; Outbus[33:32] = 2'b00; Outbus[31:30] = 2'b00; 
	 Outbus[29:28] = 2'b00; Outbus[27:26] = 2'b00; Outbus[25:24] = 2'b00; Outbus[23:22] = 2'b00; Outbus[21:20] = 2'b00;
	 Outbus[19:18] = 2'b00; Outbus[17:16] = 2'b00; Outbus[15:14] = 2'b00; Outbus[13:12] = 2'b00; Outbus[11:10] = 2'b00; 
	 Outbus[9:8] = 2'b00; Outbus[7:6] = 2'b00; Outbus[5:4] = 2'b00; Outbus[3:2] = 2'b00; Outbus[1:0] = 2'b00;
	 ns = s3; Gnd = 5'b11011;  end

s3:begin Outbus[49:48] = 2'b00; Outbus[47:46] = 2'b00; Outbus[45:44] = 2'b00; Outbus[43:42] = 2'b00; Outbus[41:40] = 2'b00;
	 Outbus[39:38] = 2'b00; Outbus[37:36] = 2'b00; Outbus[35:34] = 2'b00; Outbus[33:32] = 2'b00; Outbus[31:30] = 2'b00; 
	 Outbus[29:28] = 2'b00; Outbus[27:26] = 2'b00; Outbus[25:24] = 2'b00; Outbus[23:22] = 2'b00; Outbus[21:20] = 2'b00;
	 Outbus[19:18] = 2'b00; Outbus[17:16] = 2'b00; Outbus[15:14] = 2'b00; Outbus[13:12] = 2'b00; Outbus[11:10] = 2'b00; 
	 Outbus[9:8] = 2'b00; Outbus[7:6] = 2'b00; Outbus[5:4] = 2'b00; Outbus[3:2] = 2'b00; Outbus[1:0] = 2'b00;
	 ns = s1; Gnd = 5'b10111;  end

s4:begin Outbus[49:48] = 2'b00; Outbus[47:46] = 2'b00; Outbus[45:44] = 2'b00; Outbus[43:42] = 2'b00; Outbus[41:40] = 2'b00;
	 Outbus[39:38] = 2'b00; Outbus[37:36] = 2'b00; Outbus[35:34] = 2'b00; Outbus[33:32] = 2'b00; Outbus[31:30] = 2'b00; 
	 Outbus[29:28] = 2'b00; Outbus[27:26] = 2'b00; Outbus[25:24] = 2'b00; Outbus[23:22] = 2'b00; Outbus[21:20] = 2'b00;
	 Outbus[19:18] = 2'b00; Outbus[17:16] = 2'b00; Outbus[15:14] = 2'b00; Outbus[13:12] = 2'b00; Outbus[11:10] = 2'b00; 
	 Outbus[9:8] = 2'b00; Outbus[7:6] = 2'b00; Outbus[5:4] = 2'b00; Outbus[3:2] = 2'b00; Outbus[1:0] = 2'b00;
	 ns = s1; Gnd = 5'b01111;  end
endcase
end

endmodule 
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
module Block1(clk,Outbus,Gnd);
output reg [49:0] Outbus;
output reg [4:0] Gnd;
input clk;

parameter s0 = 4'b000;
parameter s1 = 4'b001;
parameter s2 = 4'b010;
parameter s3 = 4'b011;
parameter s4 = 4'b100;

reg [2:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @(*)
begin
case(ps)
s0:begin Outbus[49:48] = 2'b01; Outbus[47:46] = 2'b01; Outbus[45:44] = 2'b01; Outbus[43:42] = 2'b01; Outbus[41:40] = 2'b01;
	 Outbus[39:38] = 2'b01; Outbus[37:36] = 2'b01; Outbus[35:34] = 2'b01; Outbus[33:32] = 2'b01; Outbus[31:30] = 2'b01; 
	 Outbus[29:28] = 2'b01; Outbus[27:26] = 2'b01; Outbus[25:24] = 2'b01; Outbus[23:22] = 2'b01; Outbus[21:20] = 2'b01;
	 Outbus[19:18] = 2'b01; Outbus[17:16] = 2'b01; Outbus[15:14] = 2'b01; Outbus[13:12] = 2'b01; Outbus[11:10] = 2'b01; 
	 Outbus[9:8] = 2'b01; Outbus[7:6] = 2'b01; Outbus[5:4] = 2'b01; Outbus[3:2] = 2'b01; Outbus[1:0] = 2'b01;
	 ns = s1; Gnd = 5'b11110;  end

s1:begin Outbus[49:48] = 2'b01; Outbus[47:46] = 2'b01; Outbus[45:44] = 2'b01; Outbus[43:42] = 2'b01; Outbus[41:40] = 2'b01;
	 Outbus[39:38] = 2'b01; Outbus[37:36] = 2'b01; Outbus[35:34] = 2'b01; Outbus[33:32] = 2'b01; Outbus[31:30] = 2'b01; 
	 Outbus[29:28] = 2'b01; Outbus[27:26] = 2'b01; Outbus[25:24] = 2'b01; Outbus[23:22] = 2'b01; Outbus[21:20] = 2'b01;
	 Outbus[19:18] = 2'b01; Outbus[17:16] = 2'b01; Outbus[15:14] = 2'b01; Outbus[13:12] = 2'b01; Outbus[11:10] = 2'b01; 
	 Outbus[9:8] = 2'b01; Outbus[7:6] = 2'b01; Outbus[5:4] = 2'b01; Outbus[3:2] = 2'b01; Outbus[1:0] = 2'b01;
	 ns = s2; Gnd = 5'b11101;  end

s2:begin Outbus[49:48] = 2'b01; Outbus[47:46] = 2'b01; Outbus[45:44] = 2'b01; Outbus[43:42] = 2'b01; Outbus[41:40] = 2'b01;
	 Outbus[39:38] = 2'b01; Outbus[37:36] = 2'b01; Outbus[35:34] = 2'b01; Outbus[33:32] = 2'b01; Outbus[31:30] = 2'b01; 
	 Outbus[29:28] = 2'b01; Outbus[27:26] = 2'b01; Outbus[25:24] = 2'b01; Outbus[23:22] = 2'b01; Outbus[21:20] = 2'b01;
	 Outbus[19:18] = 2'b01; Outbus[17:16] = 2'b01; Outbus[15:14] = 2'b01; Outbus[13:12] = 2'b01; Outbus[11:10] = 2'b01; 
	 Outbus[9:8] = 2'b01; Outbus[7:6] = 2'b01; Outbus[5:4] = 2'b01; Outbus[3:2] = 2'b01; Outbus[1:0] = 2'b01;
	 ns = s1; Gnd = 5'b11011;  end

s3:begin Outbus[49:48] = 2'b01; Outbus[47:46] = 2'b01; Outbus[45:44] = 2'b01; Outbus[43:42] = 2'b01; Outbus[41:40] = 2'b01;
	 Outbus[39:38] = 2'b01; Outbus[37:36] = 2'b01; Outbus[35:34] = 2'b01; Outbus[33:32] = 2'b01; Outbus[31:30] = 2'b01; 
	 Outbus[29:28] = 2'b01; Outbus[27:26] = 2'b01; Outbus[25:24] = 2'b01; Outbus[23:22] = 2'b01; Outbus[21:20] = 2'b01;
	 Outbus[19:18] = 2'b01; Outbus[17:16] = 2'b01; Outbus[15:14] = 2'b01; Outbus[13:12] = 2'b01; Outbus[11:10] = 2'b01; 
	 Outbus[9:8] = 2'b01; Outbus[7:6] = 2'b01; Outbus[5:4] = 2'b01; Outbus[3:2] = 2'b01; Outbus[1:0] = 2'b01;
	 ns = s1; Gnd = 5'b10111;  end

s4:begin Outbus[49:48] = 2'b01; Outbus[47:46] = 2'b01; Outbus[45:44] = 2'b01; Outbus[43:42] = 2'b01; Outbus[41:40] = 2'b01;
	 Outbus[39:38] = 2'b01; Outbus[37:36] = 2'b01; Outbus[35:34] = 2'b01; Outbus[33:32] = 2'b01; Outbus[31:30] = 2'b01; 
	 Outbus[29:28] = 2'b01; Outbus[27:26] = 2'b01; Outbus[25:24] = 2'b01; Outbus[23:22] = 2'b01; Outbus[21:20] = 2'b01;
	 Outbus[19:18] = 2'b01; Outbus[17:16] = 2'b01; Outbus[15:14] = 2'b01; Outbus[13:12] = 2'b01; Outbus[11:10] = 2'b01; 
	 Outbus[9:8] = 2'b01; Outbus[7:6] = 2'b01; Outbus[5:4] = 2'b01; Outbus[3:2] = 2'b01; Outbus[1:0] = 2'b01;
	 ns = s1; Gnd = 5'b01111;  end
endcase
end

endmodule
//-------------------------------------------------------------------------------------------------------------------------------------------------------------
module Block2(clk,Outbus,Gnd);
output reg [49:0] Outbus;
output reg [4:0] Gnd;
input clk;

parameter s0 = 4'b000;
parameter s1 = 4'b001;
parameter s2 = 4'b010;
parameter s3 = 4'b011;
parameter s4 = 4'b100;

reg [2:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @(*)
begin
case(ps)
s0:begin Outbus[49:48] = 2'b10; Outbus[47:46] = 2'b10; Outbus[45:44] = 2'b10; Outbus[43:42] = 2'b10; Outbus[41:40] = 2'b10;
	 Outbus[39:38] = 2'b10; Outbus[37:36] = 2'b10; Outbus[35:34] = 2'b10; Outbus[33:32] = 2'b10; Outbus[31:30] = 2'b10; 
	 Outbus[29:28] = 2'b10; Outbus[27:26] = 2'b10; Outbus[25:24] = 2'b10; Outbus[23:22] = 2'b10; Outbus[21:20] = 2'b10;
	 Outbus[19:18] = 2'b10; Outbus[17:16] = 2'b10; Outbus[15:14] = 2'b10; Outbus[13:12] = 2'b10; Outbus[11:10] = 2'b10; 
	 Outbus[9:8] = 2'b10; Outbus[7:6] = 2'b10; Outbus[5:4] = 2'b10; Outbus[3:2] = 2'b10; Outbus[1:0] = 2'b10;
	 ns = s1; Gnd = 5'b11110;  end

s1:begin Outbus[49:48] = 2'b10; Outbus[47:46] = 2'b10; Outbus[45:44] = 2'b10; Outbus[43:42] = 2'b10; Outbus[41:40] = 2'b10;
	 Outbus[39:38] = 2'b10; Outbus[37:36] = 2'b10; Outbus[35:34] = 2'b10; Outbus[33:32] = 2'b10; Outbus[31:30] = 2'b10; 
	 Outbus[29:28] = 2'b10; Outbus[27:26] = 2'b10; Outbus[25:24] = 2'b10; Outbus[23:22] = 2'b10; Outbus[21:20] = 2'b10;
	 Outbus[19:18] = 2'b10; Outbus[17:16] = 2'b10; Outbus[15:14] = 2'b10; Outbus[13:12] = 2'b10; Outbus[11:10] = 2'b10; 
	 Outbus[9:8] = 2'b10; Outbus[7:6] = 2'b10; Outbus[5:4] = 2'b10; Outbus[3:2] = 2'b10; Outbus[1:0] = 2'b10;
	 ns = s2; Gnd = 5'b11101;  end

s2:begin Outbus[49:48] = 2'b10; Outbus[47:46] = 2'b10; Outbus[45:44] = 2'b10; Outbus[43:42] = 2'b10; Outbus[41:40] = 2'b10;
	 Outbus[39:38] = 2'b10; Outbus[37:36] = 2'b10; Outbus[35:34] = 2'b10; Outbus[33:32] = 2'b10; Outbus[31:30] = 2'b10; 
	 Outbus[29:28] = 2'b10; Outbus[27:26] = 2'b10; Outbus[25:24] = 2'b10; Outbus[23:22] = 2'b10; Outbus[21:20] = 2'b10;
	 Outbus[19:18] = 2'b10; Outbus[17:16] = 2'b10; Outbus[15:14] = 2'b10; Outbus[13:12] = 2'b10; Outbus[11:10] = 2'b10; 
	 Outbus[9:8] = 2'b10; Outbus[7:6] = 2'b10; Outbus[5:4] = 2'b10; Outbus[3:2] = 2'b10; Outbus[1:0] = 2'b10;
	 ns = s1; Gnd = 5'b11011;  end

s3:begin Outbus[49:48] = 2'b10; Outbus[47:46] = 2'b10; Outbus[45:44] = 2'b10; Outbus[43:42] = 2'b10; Outbus[41:40] = 2'b10;
	 Outbus[39:38] = 2'b10; Outbus[37:36] = 2'b10; Outbus[35:34] = 2'b10; Outbus[33:32] = 2'b10; Outbus[31:30] = 2'b10; 
	 Outbus[29:28] = 2'b10; Outbus[27:26] = 2'b10; Outbus[25:24] = 2'b10; Outbus[23:22] = 2'b10; Outbus[21:20] = 2'b10;
	 Outbus[19:18] = 2'b10; Outbus[17:16] = 2'b10; Outbus[15:14] = 2'b10; Outbus[13:12] = 2'b10; Outbus[11:10] = 2'b10; 
	 Outbus[9:8] = 2'b10; Outbus[7:6] = 2'b10; Outbus[5:4] = 2'b10; Outbus[3:2] = 2'b10; Outbus[1:0] = 2'b10;
	 ns = s1; Gnd = 5'b10111;  end

s4:begin Outbus[49:48] = 2'b10; Outbus[47:46] = 2'b10; Outbus[45:44] = 2'b10; Outbus[43:42] = 2'b10; Outbus[41:40] = 2'b10;
	 Outbus[39:38] = 2'b10; Outbus[37:36] = 2'b10; Outbus[35:34] = 2'b10; Outbus[33:32] = 2'b10; Outbus[31:30] = 2'b10; 
	 Outbus[29:28] = 2'b10; Outbus[27:26] = 2'b10; Outbus[25:24] = 2'b10; Outbus[23:22] = 2'b10; Outbus[21:20] = 2'b10;
	 Outbus[19:18] = 2'b10; Outbus[17:16] = 2'b10; Outbus[15:14] = 2'b10; Outbus[13:12] = 2'b10; Outbus[11:10] = 2'b10; 
	 Outbus[9:8] = 2'b10; Outbus[7:6] = 2'b10; Outbus[5:4] = 2'b10; Outbus[3:2] = 2'b10; Outbus[1:0] = 2'b10;
	 ns = s1; Gnd = 5'b01111;  end
endcase
end

endmodule 
//------------------------------------------------------------------------------------------------------------------------------------------------------------
module Block3(clk,Outbus,Gnd);
output reg [49:0] Outbus;
output reg [4:0] Gnd;
input clk;

parameter s0 = 4'b000;
parameter s1 = 4'b001;
parameter s2 = 4'b010;
parameter s3 = 4'b011;
parameter s4 = 4'b100;

reg [2:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @(*)
begin
case(ps)
s0:begin Outbus[49:48] = 2'b11; Outbus[47:46] = 2'b11; Outbus[45:44] = 2'b11; Outbus[43:42] = 2'b11; Outbus[41:40] = 2'b11;
	 Outbus[39:38] = 2'b11; Outbus[37:36] = 2'b11; Outbus[35:34] = 2'b11; Outbus[33:32] = 2'b11; Outbus[31:30] = 2'b11; 
	 Outbus[29:28] = 2'b11; Outbus[27:26] = 2'b11; Outbus[25:24] = 2'b11; Outbus[23:22] = 2'b11; Outbus[21:20] = 2'b11;
	 Outbus[19:18] = 2'b11; Outbus[17:16] = 2'b11; Outbus[15:14] = 2'b11; Outbus[13:12] = 2'b11; Outbus[11:10] = 2'b11; 
	 Outbus[9:8] = 2'b11; Outbus[7:6] = 2'b11; Outbus[5:4] = 2'b11; Outbus[3:2] = 2'b11; Outbus[1:0] = 2'b11;
	 ns = s1; Gnd = 5'b11110;  end

s1:begin Outbus[49:48] = 2'b11; Outbus[47:46] = 2'b11; Outbus[45:44] = 2'b11; Outbus[43:42] = 2'b11; Outbus[41:40] = 2'b11;
	 Outbus[39:38] = 2'b11; Outbus[37:36] = 2'b11; Outbus[35:34] = 2'b11; Outbus[33:32] = 2'b11; Outbus[31:30] = 2'b11; 
	 Outbus[29:28] = 2'b11; Outbus[27:26] = 2'b11; Outbus[25:24] = 2'b11; Outbus[23:22] = 2'b11; Outbus[21:20] = 2'b11;
	 Outbus[19:18] = 2'b11; Outbus[17:16] = 2'b11; Outbus[15:14] = 2'b11; Outbus[13:12] = 2'b11; Outbus[11:10] = 2'b11; 
	 Outbus[9:8] = 2'b11; Outbus[7:6] = 2'b11; Outbus[5:4] = 2'b11; Outbus[3:2] = 2'b11; Outbus[1:0] = 2'b11;
	 ns = s2; Gnd = 5'b11101;  end

s2:begin Outbus[49:48] = 2'b11; Outbus[47:46] = 2'b11; Outbus[45:44] = 2'b11; Outbus[43:42] = 2'b11; Outbus[41:40] = 2'b11;
	 Outbus[39:38] = 2'b11; Outbus[37:36] = 2'b11; Outbus[35:34] = 2'b11; Outbus[33:32] = 2'b11; Outbus[31:30] = 2'b11; 
	 Outbus[29:28] = 2'b11; Outbus[27:26] = 2'b11; Outbus[25:24] = 2'b11; Outbus[23:22] = 2'b11; Outbus[21:20] = 2'b11;
	 Outbus[19:18] = 2'b11; Outbus[17:16] = 2'b11; Outbus[15:14] = 2'b11; Outbus[13:12] = 2'b11; Outbus[11:10] = 2'b11; 
	 Outbus[9:8] = 2'b11; Outbus[7:6] = 2'b11; Outbus[5:4] = 2'b11; Outbus[3:2] = 2'b11; Outbus[1:0] = 2'b11;
	 ns = s1; Gnd = 5'b11011;  end

s3:begin Outbus[49:48] = 2'b11; Outbus[47:46] = 2'b11; Outbus[45:44] = 2'b11; Outbus[43:42] = 2'b11; Outbus[41:40] = 2'b11;
	 Outbus[39:38] = 2'b11; Outbus[37:36] = 2'b11; Outbus[35:34] = 2'b11; Outbus[33:32] = 2'b11; Outbus[31:30] = 2'b11; 
	 Outbus[29:28] = 2'b11; Outbus[27:26] = 2'b11; Outbus[25:24] = 2'b11; Outbus[23:22] = 2'b11; Outbus[21:20] = 2'b11;
	 Outbus[19:18] = 2'b11; Outbus[17:16] = 2'b11; Outbus[15:14] = 2'b11; Outbus[13:12] = 2'b11; Outbus[11:10] = 2'b11; 
	 Outbus[9:8] = 2'b11; Outbus[7:6] = 2'b11; Outbus[5:4] = 2'b11; Outbus[3:2] = 2'b11; Outbus[1:0] = 2'b11;
	 ns = s1; Gnd = 5'b10111;  end

s4:begin Outbus[49:48] = 2'b11; Outbus[47:46] = 2'b11; Outbus[45:44] = 2'b11; Outbus[43:42] = 2'b11; Outbus[41:40] = 2'b11;
	 Outbus[39:38] = 2'b11; Outbus[37:36] = 2'b11; Outbus[35:34] = 2'b11; Outbus[33:32] = 2'b11; Outbus[31:30] = 2'b11; 
	 Outbus[29:28] = 2'b11; Outbus[27:26] = 2'b11; Outbus[25:24] = 2'b11; Outbus[23:22] = 2'b11; Outbus[21:20] = 2'b11;
	 Outbus[19:18] = 2'b11; Outbus[17:16] = 2'b11; Outbus[15:14] = 2'b11; Outbus[13:12] = 2'b11; Outbus[11:10] = 2'b11; 
	 Outbus[9:8] = 2'b11; Outbus[7:6] = 2'b11; Outbus[5:4] = 2'b11; Outbus[3:2] = 2'b11; Outbus[1:0] = 2'b11;
	 ns = s1; Gnd = 5'b01111;  end
endcase
end

endmodule 