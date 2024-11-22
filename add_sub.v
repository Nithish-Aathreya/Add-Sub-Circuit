`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2024 17:36:57
// Design Name: 
// Module Name: add_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add_sub(a,b,sum,cout,x,cin);
input a,b,cin,x;
output sum,cout;


reg temp;


always @(*)
begin

if(x ==1'b0)
temp=b;

else
temp= ~b + cin;
end

adder a0(a,temp,cin,sum,cout);

endmodule

module adder(in1,in2,cin,sum,cout);
input in1,in2;
input cin;
output sum;
output cout;

assign sum = in1^in2^cin;
assign cout = (in1&in2) | (in2&cin) | (in1&cin);
endmodule