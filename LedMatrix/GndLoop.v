module Block1(clk,Gnd);
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
s0:begin ns = s1; Gnd = 5'b11110;  end

s1:begin ns = s2; Gnd = 5'b11101;  end

s2:begin ns = s1; Gnd = 5'b11011;  end

s3:begin ns = s1; Gnd = 5'b10111;  end

s4:begin ns = s1; Gnd = 5'b01111;  end
endcase
end

endmodule
