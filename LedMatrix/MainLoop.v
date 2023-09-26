module MainLoop(clk,Input,Outbus,Gnd);
input clk,Input;
output reg [49:0] Outbus;
output reg [4:0] Gnd;
reg [15:0] en;
wire [49:0] d0en,d1en,d2en,d3en,d4en;
//----------------
D0 d0(clk,Outbus,Gnd);
D1 d1(clk,Outbus,Gnd);
D2 d2(clk,Outbus,Gnd);
D3 d3(clk,Outbus,Gnd);
D4 d4(clk,Outbus,Gnd);
//---------------
tristate(en,in,out);
//---------------
parameter s0 = 4'b0000;
parameter s1 = 4'b0001;
parameter s2 = 4'b0010;
parameter s3 = 4'b0011;
parameter s4 = 4'b0100;
parameter s5 = 4'b0101;
parameter s6 = 4'b0110;
parameter s7 = 4'b0111;
parameter s8 = 4'b1000;
parameter s9 = 4'b1001;
parameter s10 = 4'b1010;
parameter s11 = 4'b1011;
parameter s12 = 4'b1100;
parameter s13 = 4'b1101;
parameter s14 = 4'b1110;
parameter s15 = 4'b1111;
//------------

reg [3:0] ps,ns;

always @ (posedge clk)
begin
ps = ns;
end

always @ (*)
begin 
case(ps)
s0 : begin en[5] = 1'b0; en[0] = 1'b1; ns = s1; end
s1 : begin en[0] = 1'b0; en[1] = 1'b1; ns = s2; end
s2 : begin en[1] = 1'b0; en[2] = 1'b1; ns = s3; end
s3 : begin en[2] = 1'b0; en[3] = 1'b1; ns = s4; end
s4 : begin en[3] = 1'b0; en[4] = 1'b1; ns = s5; end
s5 : begin en[4] = 1'b0; en[5] = 1'b1; ns = s0; end
endcase
end
endmodule 

module tristate(en,in,out);
input en;
input [49:0] in;
output reg [49:0] out;
always @(*)
begin
if (en==1'b1) begin out = in; end
else begin out = 50'bz; end
end
endmodule 