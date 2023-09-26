module MainLoop2(clk,Input,Outbus,Gnd);
input clk,Input;
output reg [49:0] Outbus;
output reg [4:0] Gnd;
reg [15:0] en;
reg [49:0] level0,level1,level2,level3,level4;
//----------------
flicker f1(clk,level0,level1,level2,level3,level4,Outbus,Gnd);
//---------------
parameter s0 = 5'b00000;
parameter s1 = 5'b00001;
parameter s2 = 5'b00010;
parameter s3 = 5'b00011;
parameter s4 = 5'b00100;
parameter s5 = 5'b00101;
parameter s6 = 5'b00110;
parameter s7 = 5'b00111;
parameter s8 = 5'b01000;
parameter s9 = 5'b01001;
parameter s10 = 5'b01010;
parameter s11 = 5'b01011;
parameter s12 = 5'b01100;
parameter s13 = 5'b01101;
parameter s14 = 5'b01110;
parameter s15 = 5'b01111;
parameter s16 = 5'b10000;
//------------

reg [4:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @ (*)
begin 
case(ps)
s0 : begin 
//Level 0
level0[49:48] = 2'b01; level0[47:46] = 2'b01; level0[45:44] = 2'b01; level0[43:42] = 2'b01; level0[41:40] = 2'b01;
level0[39:38] = 2'b01; level0[37:36] = 2'b01; level0[35:34] = 2'b01; level0[33:32] = 2'b01; level0[31:30] = 2'b01; 
level0[29:28] = 2'b01; level0[27:26] = 2'b01; level0[25:24] = 2'b01; level0[23:22] = 2'b01; level0[21:20] = 2'b01;
level0[19:18] = 2'b01; level0[17:16] = 2'b01; level0[15:14] = 2'b01; level0[13:12] = 2'b01; level0[11:10] = 2'b01; 
level0[9:8] = 2'b01; level0[7:6] = 2'b01; level0[5:4] = 2'b01; level0[3:2] = 2'b01; level0[1:0] = 2'b01;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s1; 
else ns = s11;
end

s1 : begin 
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b01; level1[47:46] = 2'b01; level1[45:44] = 2'b01; level1[43:42] = 2'b01; level1[41:40] = 2'b01;
level1[39:38] = 2'b01; level1[37:36] = 2'b01; level1[35:34] = 2'b01; level1[33:32] = 2'b01; level1[31:30] = 2'b01; 
level1[29:28] = 2'b01; level1[27:26] = 2'b01; level1[25:24] = 2'b01; level1[23:22] = 2'b01; level1[21:20] = 2'b01;
level1[19:18] = 2'b01; level1[17:16] = 2'b01; level1[15:14] = 2'b01; level1[13:12] = 2'b01; level1[11:10] = 2'b01; 
level1[9:8] = 2'b01; level1[7:6] = 2'b01; level1[5:4] = 2'b01; level1[3:2] = 2'b01; level1[1:0] = 2'b01;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s2; 
else ns = s11;
end

s2 : begin 
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b01; level2[47:46] = 2'b01; level2[45:44] = 2'b01; level2[43:42] = 2'b01; level2[41:40] = 2'b01;
level2[39:38] = 2'b01; level2[37:36] = 2'b01; level2[35:34] = 2'b01; level2[33:32] = 2'b01; level2[31:30] = 2'b01; 
level2[29:28] = 2'b01; level2[27:26] = 2'b01; level2[25:24] = 2'b01; level2[23:22] = 2'b01; level2[21:20] = 2'b01;
level2[19:18] = 2'b01; level2[17:16] = 2'b01; level2[15:14] = 2'b01; level2[13:12] = 2'b01; level2[11:10] = 2'b01; 
level2[9:8] = 2'b01; level2[7:6] = 2'b01; level2[5:4] = 2'b01; level2[3:2] = 2'b01; level2[1:0] = 2'b01;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s3; 
else ns = s11; 
end

s3 : begin 
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b01; level3[47:46] = 2'b01; level3[45:44] = 2'b01; level3[43:42] = 2'b01; level3[41:40] = 2'b01;
level3[39:38] = 2'b01; level3[37:36] = 2'b01; level3[35:34] = 2'b01; level3[33:32] = 2'b01; level3[31:30] = 2'b01; 
level3[29:28] = 2'b01; level3[27:26] = 2'b01; level3[25:24] = 2'b01; level3[23:22] = 2'b01; level3[21:20] = 2'b01;
level3[19:18] = 2'b01; level3[17:16] = 2'b01; level3[15:14] = 2'b01; level3[13:12] = 2'b01; level3[11:10] = 2'b01; 
level3[9:8] = 2'b01; level3[7:6] = 2'b01; level3[5:4] = 2'b01; level3[3:2] = 2'b01; level3[1:0] = 2'b01;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s4; 
else ns = s11;
end

s4 : begin 
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b01; level4[47:46] = 2'b01; level4[45:44] = 2'b01; level4[43:42] = 2'b01; level4[41:40] = 2'b01;
level4[39:38] = 2'b01; level4[37:36] = 2'b01; level4[35:34] = 2'b01; level4[33:32] = 2'b01; level4[31:30] = 2'b01; 
level4[29:28] = 2'b01; level4[27:26] = 2'b01; level4[25:24] = 2'b01; level4[23:22] = 2'b01; level4[21:20] = 2'b01;
level4[19:18] = 2'b01; level4[17:16] = 2'b01; level4[15:14] = 2'b01; level4[13:12] = 2'b01; level4[11:10] = 2'b01; 
level4[9:8] = 2'b01; level4[7:6] = 2'b01; level4[5:4] = 2'b01; level4[3:2] = 2'b01; level4[1:0] = 2'b01;
//next state 
if(Input == 1)ns = s5; 
else ns = s11;
end

s5 : begin 
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b10; level4[47:46] = 2'b10; level4[45:44] = 2'b10; level4[43:42] = 2'b10; level4[41:40] = 2'b10;
level4[39:38] = 2'b10; level4[37:36] = 2'b10; level4[35:34] = 2'b10; level4[33:32] = 2'b10; level4[31:30] = 2'b10; 
level4[29:28] = 2'b10; level4[27:26] = 2'b10; level4[25:24] = 2'b10; level4[23:22] = 2'b10; level4[21:20] = 2'b10;
level4[19:18] = 2'b10; level4[17:16] = 2'b10; level4[15:14] = 2'b10; level4[13:12] = 2'b10; level4[11:10] = 2'b10; 
level4[9:8] = 2'b10; level4[7:6] = 2'b10; level4[5:4] = 2'b10; level4[3:2] = 2'b10; level4[1:0] = 2'b10;
//next state
if(Input == 1)ns = s6; 
else ns = s11;
end

s6:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b10; level3[47:46] = 2'b10; level3[45:44] = 2'b10; level3[43:42] = 2'b10; level3[41:40] = 2'b10;
level3[39:38] = 2'b10; level3[37:36] = 2'b10; level3[35:34] = 2'b10; level3[33:32] = 2'b10; level3[31:30] = 2'b10; 
level3[29:28] = 2'b10; level3[27:26] = 2'b10; level3[25:24] = 2'b10; level3[23:22] = 2'b10; level3[21:20] = 2'b10;
level3[19:18] = 2'b10; level3[17:16] = 2'b10; level3[15:14] = 2'b10; level3[13:12] = 2'b10; level3[11:10] = 2'b10; 
level3[9:8] = 2'b10; level3[7:6] = 2'b10; level3[5:4] = 2'b10; level3[3:2] = 2'b10; level3[1:0] = 2'b10;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s7; 
else ns = s11;
end

s8:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b10; level2[47:46] = 2'b10; level2[45:44] = 2'b10; level2[43:42] = 2'b10; level2[41:40] = 2'b10;
level2[39:38] = 2'b10; level2[37:36] = 2'b10; level2[35:34] = 2'b10; level2[33:32] = 2'b10; level2[31:30] = 2'b10; 
level2[29:28] = 2'b10; level2[27:26] = 2'b10; level2[25:24] = 2'b10; level2[23:22] = 2'b10; level2[21:20] = 2'b10;
level2[19:18] = 2'b10; level2[17:16] = 2'b10; level2[15:14] = 2'b10; level2[13:12] = 2'b10; level2[11:10] = 2'b10; 
level2[9:8] = 2'b10; level2[7:6] = 2'b10; level2[5:4] = 2'b10; level2[3:2] = 2'b10; level2[1:0] = 2'b10;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s9; 
else ns = s11;
end

s9:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b10; level1[47:46] = 2'b10; level1[45:44] = 2'b10; level1[43:42] = 2'b10; level1[41:40] = 2'b10;
level1[39:38] = 2'b10; level1[37:36] = 2'b10; level1[35:34] = 2'b10; level1[33:32] = 2'b10; level1[31:30] = 2'b10; 
level1[29:28] = 2'b10; level1[27:26] = 2'b10; level1[25:24] = 2'b10; level1[23:22] = 2'b10; level1[21:20] = 2'b10;
level1[19:18] = 2'b10; level1[17:16] = 2'b10; level1[15:14] = 2'b10; level1[13:12] = 2'b10; level1[11:10] = 2'b10; 
level1[9:8] = 2'b10; level1[7:6] = 2'b10; level1[5:4] = 2'b10; level1[3:2] = 2'b10; level1[1:0] = 2'b10;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s10; 
else ns = s11;
end

s10:begin
//Level 0
level0[49:48] = 2'b10; level0[47:46] = 2'b10; level0[45:44] = 2'b10; level0[43:42] = 2'b10; level0[41:40] = 2'b10;
level0[39:38] = 2'b10; level0[37:36] = 2'b10; level0[35:34] = 2'b10; level0[33:32] = 2'b10; level0[31:30] = 2'b10; 
level0[29:28] = 2'b10; level0[27:26] = 2'b10; level0[25:24] = 2'b10; level0[23:22] = 2'b10; level0[21:20] = 2'b10;
level0[19:18] = 2'b10; level0[17:16] = 2'b10; level0[15:14] = 2'b10; level0[13:12] = 2'b10; level0[11:10] = 2'b10; 
level0[9:8] = 2'b10; level0[7:6] = 2'b10; level0[5:4] = 2'b10; level0[3:2] = 2'b10; level0[1:0] = 2'b10;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s0; 
else ns = s11;
end
//Design 2-----------------------------------------------------------------------------------------------------------------------------------------------
s11:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b11; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s0; 
else ns = s12;
end

s12:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b11; level1[35:34] = 2'b11; level1[33:32] = 2'b11; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b11; level1[25:24] = 2'b00; level1[23:22] = 2'b11; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b11; level1[15:14] = 2'b11; level1[13:12] = 2'b11; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b11; level2[35:34] = 2'b00; level2[33:32] = 2'b11; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b11; level2[15:14] = 2'b00; level2[13:12] = 2'b11; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b11; level3[35:34] = 2'b11; level3[33:32] = 2'b11; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b11; level3[25:24] = 2'b00; level3[23:22] = 2'b11; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b11; level3[15:14] = 2'b11; level3[13:12] = 2'b11; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s0; 
else ns = s13;
end

s13:begin
//Level 0
level0[49:48] = 2'b11; level0[47:46] = 2'b11; level0[45:44] = 2'b11; level0[43:42] = 2'b11; level0[41:40] = 2'b11;
level0[39:38] = 2'b11; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b11; 
level0[29:28] = 2'b11; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b11;
level0[19:18] = 2'b11; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b11; 
level0[9:8] = 2'b11; level0[7:6] = 2'b11; level0[5:4] = 2'b11; level0[3:2] = 2'b11; level0[1:0] = 2'b11;
//Level 1
level1[49:48] = 2'b11; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b11;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b11; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b11;
//Level 2
level2[49:48] = 2'b11; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b11;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b00; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b11; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b11;
//Level 3
level3[49:48] = 2'b11; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b11;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b11; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b11;
//Level 4
level4[49:48] = 2'b11; level4[47:46] = 2'b11; level4[45:44] = 2'b11; level4[43:42] = 2'b11; level4[41:40] = 2'b11;
level4[39:38] = 2'b11; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b11; 
level4[29:28] = 2'b11; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b11;
level4[19:18] = 2'b11; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b11; 
level4[9:8] = 2'b11; level4[7:6] = 2'b11; level4[5:4] = 2'b11; level4[3:2] = 2'b11; level4[1:0] = 2'b11;
//next state
if(Input == 1)ns = s0; 
else ns = s14;
end

s14:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b00; level1[35:34] = 2'b00; level1[33:32] = 2'b00; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b00; level1[15:14] = 2'b00; level1[13:12] = 2'b00; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b10; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b00; level3[35:34] = 2'b00; level3[33:32] = 2'b00; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b00; level3[15:14] = 2'b00; level3[13:12] = 2'b00; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s0; 
else ns = s15;
end

s15:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b10; level1[35:34] = 2'b00; level1[33:32] = 2'b10; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b10; level1[15:14] = 2'b00; level1[13:12] = 2'b10; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b10; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b10; level3[35:34] = 2'b00; level3[33:32] = 2'b10; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b10; level3[15:14] = 2'b00; level3[13:12] = 2'b10; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b00; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b00;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b00; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b00;
//next state
if(Input == 1)ns = s0; 
else ns = s16;
end

s16:begin
//Level 0
level0[49:48] = 2'b00; level0[47:46] = 2'b00; level0[45:44] = 2'b00; level0[43:42] = 2'b00; level0[41:40] = 2'b00;
level0[39:38] = 2'b00; level0[37:36] = 2'b00; level0[35:34] = 2'b00; level0[33:32] = 2'b00; level0[31:30] = 2'b00; 
level0[29:28] = 2'b00; level0[27:26] = 2'b00; level0[25:24] = 2'b00; level0[23:22] = 2'b00; level0[21:20] = 2'b00;
level0[19:18] = 2'b00; level0[17:16] = 2'b00; level0[15:14] = 2'b00; level0[13:12] = 2'b00; level0[11:10] = 2'b00; 
level0[9:8] = 2'b00; level0[7:6] = 2'b00; level0[5:4] = 2'b00; level0[3:2] = 2'b00; level0[1:0] = 2'b00;
//Level 1
level1[49:48] = 2'b00; level1[47:46] = 2'b00; level1[45:44] = 2'b00; level1[43:42] = 2'b00; level1[41:40] = 2'b00;
level1[39:38] = 2'b00; level1[37:36] = 2'b10; level1[35:34] = 2'b00; level1[33:32] = 2'b10; level1[31:30] = 2'b00; 
level1[29:28] = 2'b00; level1[27:26] = 2'b00; level1[25:24] = 2'b00; level1[23:22] = 2'b00; level1[21:20] = 2'b00;
level1[19:18] = 2'b00; level1[17:16] = 2'b10; level1[15:14] = 2'b00; level1[13:12] = 2'b10; level1[11:10] = 2'b00; 
level1[9:8] = 2'b00; level1[7:6] = 2'b00; level1[5:4] = 2'b00; level1[3:2] = 2'b00; level1[1:0] = 2'b00;
//Level 2
level2[49:48] = 2'b00; level2[47:46] = 2'b00; level2[45:44] = 2'b00; level2[43:42] = 2'b00; level2[41:40] = 2'b00;
level2[39:38] = 2'b00; level2[37:36] = 2'b00; level2[35:34] = 2'b00; level2[33:32] = 2'b00; level2[31:30] = 2'b00; 
level2[29:28] = 2'b00; level2[27:26] = 2'b00; level2[25:24] = 2'b10; level2[23:22] = 2'b00; level2[21:20] = 2'b00;
level2[19:18] = 2'b00; level2[17:16] = 2'b00; level2[15:14] = 2'b00; level2[13:12] = 2'b00; level2[11:10] = 2'b00; 
level2[9:8] = 2'b00; level2[7:6] = 2'b00; level2[5:4] = 2'b00; level2[3:2] = 2'b00; level2[1:0] = 2'b00;
//Level 3
level3[49:48] = 2'b00; level3[47:46] = 2'b00; level3[45:44] = 2'b00; level3[43:42] = 2'b00; level3[41:40] = 2'b00;
level3[39:38] = 2'b00; level3[37:36] = 2'b10; level3[35:34] = 2'b00; level3[33:32] = 2'b10; level3[31:30] = 2'b00; 
level3[29:28] = 2'b00; level3[27:26] = 2'b00; level3[25:24] = 2'b00; level3[23:22] = 2'b00; level3[21:20] = 2'b00;
level3[19:18] = 2'b00; level3[17:16] = 2'b10; level3[15:14] = 2'b00; level3[13:12] = 2'b10; level3[11:10] = 2'b00; 
level3[9:8] = 2'b00; level3[7:6] = 2'b00; level3[5:4] = 2'b00; level3[3:2] = 2'b00; level3[1:0] = 2'b00;
//Level 4
level4[49:48] = 2'b10; level4[47:46] = 2'b00; level4[45:44] = 2'b00; level4[43:42] = 2'b00; level4[41:40] = 2'b10;
level4[39:38] = 2'b00; level4[37:36] = 2'b00; level4[35:34] = 2'b00; level4[33:32] = 2'b00; level4[31:30] = 2'b00; 
level4[29:28] = 2'b00; level4[27:26] = 2'b00; level4[25:24] = 2'b00; level4[23:22] = 2'b00; level4[21:20] = 2'b00;
level4[19:18] = 2'b00; level4[17:16] = 2'b00; level4[15:14] = 2'b00; level4[13:12] = 2'b00; level4[11:10] = 2'b00; 
level4[9:8] = 2'b10; level4[7:6] = 2'b00; level4[5:4] = 2'b00; level4[3:2] = 2'b00; level4[1:0] = 2'b10;
//next state
if(Input == 1)ns = s0; 
else ns = s11;
end

endcase
end
endmodule 

//----------------------------------------------------------------------------------------------------------------------------------------------------------

module flicker(clk,level0,level1,level2,level3,level4,Outbus,Gnd);
input [49:0] level0,level1,level2,level3,level4;
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
s0:begin Outbus = level0; ns = s1; Gnd = 5'b11110;  end

s1:begin Outbus = level1; ns = s2; Gnd = 5'b11101;  end

s2:begin Outbus = level2; ns = s3; Gnd = 5'b11011;  end

s3:begin Outbus = level3; ns = s1; Gnd = 5'b10111;  end

s4:begin Outbus = level4; ns = s1; Gnd = 5'b01111;  end
endcase
end
endmodule 