







module ShiftRight (    //LSR (logical shift right )
  input [7:0] A,    
  input [2:0] i,
  output [7:0] result
);
  assign result =  (i > 7) ? 8'h0 :
    (i == 7) ? {{7{1'h0}}, A[7]} :
    (i == 6) ? {{6{1'h0}}, A[7:6]} :
    (i == 5) ? {{5{1'h0}}, A[7:5]} :
    (i == 4) ? {{4{1'h0}}, A[7:4]} :
    (i == 3) ? {{3{1'h0}}, A[7:3]} :
    (i == 2) ? {{2{1'h0}}, A[7:2]} :
    (i == 1) ? {{1{1'h0}}, A[7:1]} :
     A;
endmodule




