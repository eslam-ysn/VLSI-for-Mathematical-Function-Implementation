
module mul (
input [7:0]a ,
input [7:0]b,
output [15:0]c );
wire [15:0]ww0,ww1,ww2,ww3,ww4,ww5,ww6,ww7,ws0,ws1,ws2,ws3,ws4,ws5;

assign ww0 = ({8{a[0]}}&b);// bit by bit multiplication and every stage shifted to the left by one bit . 
assign ww1 = {({8{a[1]}}&b),1'h0};//this mutiplication creates a 16 bit number each number assigned in wire .
assign ww2 = {({8{a[2]}}&b),2'h0};
assign ww3 = {({8{a[3]}}&b),3'h0};
assign ww4 = {({8{a[4]}}&b),4'h0};
assign ww5 = {({8{a[5]}}&b),5'h0};
assign ww6 = {({8{a[6]}}&b),6'h0};
assign ww7 = {({8{a[7]}}&b),7'h0};

adder_16bit aa0(ww0,ww1,ws0);   // vertical summation for every 2 wires (contains 16 bit ) together .
adder_16bit aa1(ww2,ww3,ws1);    // this opperation needs 7 adders , the first bit requires half adder only.
adder_16bit aa2(ww4,ww5,ws2);
adder_16bit aa3(ww6,ww7,ws3);
adder_16bit aa4(ws0,ws1,ws4);
adder_16bit aa5(ws2,ws3,ws5);
adder_16bit aa6(ws4,ws5,c);

endmodule
