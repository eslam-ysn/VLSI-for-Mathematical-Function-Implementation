
module Half_adder(sum,cout,a,b);
input a,b;
output sum,cout;
assign sum=a^b;
assign cout=a&b;
endmodule
module Full_adder(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=((a&b)|(cin&(a^b)));
endmodule