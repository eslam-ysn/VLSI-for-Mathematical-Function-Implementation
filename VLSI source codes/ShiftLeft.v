

module ShiftLeft (// LSL (logical shift left )
  input [7:0] B,
  input [2:0] j,
  output [7:0] result
);
  assign result = (j > 7) ? 8'h0 :
  (j == 7) ? {B[0],{7{1'h0}}}:
  (j == 6) ? {B[1:0] , {6{1'h0}}} :
  (j == 5) ? {B[2:0] , {5{1'h0}}} :
  (j == 4) ? {B[3:0] , {4{1'h0}}} :
  (j == 3) ? {B[4:0] , {3{1'h0}}} :
  (j == 2) ? {B[5:0] , {2{1'h0}}} :
  (j == 1) ? {B[6:0] , {1{1'h0}}} : B ; 
endmodule 