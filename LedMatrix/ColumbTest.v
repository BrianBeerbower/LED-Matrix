module MainLoop2(clk,Input,Outbus,Gnd);
input clk;
input [4:0] Input;
output reg [49:0] Outbus;
output reg [4:0] Gnd;

always @ (*)
begin
case(Input)
5'b00000: begin Gnd=5'b11110; Outbus= 50'd1;end
5'b00001: begin Gnd=5'b11110; Outbus= 50'd4;end
5'b00010: begin Gnd=5'b11110; Outbus= 50'd16;end
5'b00011: begin Gnd=5'b11110; Outbus= 50'd64;end
5'b00100: begin Gnd=5'b11110; Outbus= 50'd256;end//5
5'b00101: begin Gnd=5'b11110; Outbus= 50'd1024;end
5'b00110: begin Gnd=5'b11110; Outbus= 50'd4096;end
5'b00111: begin Gnd=5'b11110; Outbus= 50'd16384;end
5'b01000: begin Gnd=5'b11110; Outbus= 50'd65536;end
5'b01001: begin Gnd=5'b11110; Outbus= 50'd262144;end//10
5'b01010: begin Gnd=5'b11110; Outbus= 50'd1048576;end
5'b01011: begin Gnd=5'b11110; Outbus= 50'd4194304;end
5'b01100: begin Gnd=5'b11110; Outbus= 50'd16777216;end
5'b01101: begin Gnd=5'b11110; Outbus= 50'd67108864;end
5'b01110: begin Gnd=5'b11110; Outbus= 50'd268435456;end//15
5'b01111: begin Gnd=5'b11110; Outbus= 50'd1073741824;end
5'b10000: begin Gnd=5'b11110; Outbus= 50'd4294967296;end
5'b10001: begin Gnd=5'b11110; Outbus= 50'd17179869184;end
5'b10010: begin Gnd=5'b11110; Outbus= 50'd68719476736;end//20
5'b10011: begin Gnd=5'b11110; Outbus= 50'd274877906944;end
5'b10100: begin Gnd=5'b11110; Outbus= 50'd109951162776;end
5'b10101: begin Gnd=5'b11110; Outbus= 50'd4398046511104;end
5'b10110: begin Gnd=5'b11110; Outbus= 50'd17592186044416;end
5'b10110: begin Gnd=5'b11110; Outbus= 50'd70368744177664;end//25
endcase

end

endmodule 