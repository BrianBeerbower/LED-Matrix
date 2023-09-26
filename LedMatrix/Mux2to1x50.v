module mux2to1x50(in1,in2,out,s);
input [49:0]in1,in2;
input s;
output reg [49:0]out;
always @ (*)
begin
if(s==0) begin out = in1; end
else begin out = in2; end
end
endmodule
