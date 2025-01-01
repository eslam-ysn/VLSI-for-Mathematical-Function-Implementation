
module Adder(s,a,b);     
output[7:0] s;
input [7:0]a,b;
wire [7:0]c;

Half_adder h1(s[0],c[0],a[0],b[0]);
Full_adder F1(s[1],c[1],a[1],b[1],c[0]);
Full_adder F2(s[2],c[2],a[2],b[2],c[1]);
Full_adder F3(s[3],c[3],a[3],b[3],c[2]);
Full_adder F5(s[4],c[4],a[4],b[4],c[3]);
Full_adder F6(s[5],c[5],a[5],b[5],c[4]);
Full_adder F7(s[6],c[6],a[6],b[6],c[5]);
Full_adder F8(s[7],c[7],a[7],b[7],c[6]);
endmodule
