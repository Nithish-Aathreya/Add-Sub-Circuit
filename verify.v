`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2024 18:38:12
// Design Name: 
// Module Name: verify
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


module verify();
reg a,b,cin,x;
wire sum,cout;

add_sub uut(a,b,sum,cout,x,cin);


initial
begin
$monitor("a=%b,b=%b,cin=%b,x=%b,sum=%b,cout=%b",a,b,cin,x,sum,cout);
#5 x=1'b0; a=1'b1; b=1'b0; cin=1'b0;
#10 x=1'b1; a=1'b1; b=1'b1; cin=1'b1;
#20 $finish;

end
endmodule
