

module adder_16bit(   //this adder which called after multiplication .
  input [15:0] A,
  input [15:0] B,
  output [15:0] Sum
);
wire [14:0]cout ;
assign {Sum[0],cout[0]} = {(A[0] ^ B[0]),(A[0] & B[0])};
assign {Sum[1],cout[1]} = {(A[1] ^ B[1] ^ cout[0]),((A[1]&B[1])|(A[1]&cout[0])| (B[1]&cout[0]))};
assign {Sum[2],cout[2]} = {(A[2] ^ B[2] ^ cout[1]),((A[2]&B[2])|(A[2]&cout[1])| (B[2]&cout[1]))};
assign {Sum[3],cout[3]} = {(A[3] ^ B[3] ^ cout[2]),((A[3]&B[3])|(A[3]&cout[2])| (B[3]&cout[2]))};
assign {Sum[4],cout[4]} = {(A[4] ^ B[4] ^ cout[3]),((A[4]&B[4])|(A[4]&cout[3])| (B[4]&cout[3]))};
assign {Sum[5],cout[5]} = {(A[5] ^ B[5] ^ cout[4]),((A[5]&B[5])|(A[5]&cout[4])| (B[5]&cout[4]))};
assign {Sum[6],cout[6]} = {(A[6] ^ B[6] ^ cout[5]),((A[6]&B[6])|(A[6]&cout[5])| (B[6]&cout[5]))};
assign {Sum[7],cout[7]} = {(A[7] ^ B[7] ^ cout[6]),((A[7]&B[7])|(A[7]&cout[6])| (B[7]&cout[6]))};
assign {Sum[8],cout[8]} = {(A[8] ^ B[8] ^ cout[7]),((A[8]&B[8])|(A[8]&cout[7])| (B[8]&cout[7]))};
assign {Sum[9],cout[9]} = {(A[9] ^ B[9] ^ cout[8]),((A[9]&B[9])|(A[9]&cout[8])| (B[9]&cout[8]))};
assign {Sum[10],cout[10]} = {(A[10] ^ B[10] ^ cout[9]),((A[10]&B[10])|(A[10]&cout[9])| (B[10]&cout[9]))};
assign {Sum[11],cout[11]} = {(A[11] ^ B[11] ^ cout[10]),((A[11]&B[11])|(A[11]&cout[10])| (B[11]&cout[10]))};
assign {Sum[12],cout[12]} = {(A[12] ^ B[12] ^ cout[11]),((A[12]&B[12])|(A[12]&cout[11])| (B[12]&cout[11]))};
assign {Sum[13],cout[13]} = {(A[13] ^ B[13] ^ cout[12]),((A[13]&B[13])|(A[13]&cout[12])| (B[13]&cout[12]))};
assign {Sum[14],cout[14]} = {(A[14] ^ B[14] ^ cout[13]),((A[14]&B[14])|(A[14]&cout[13])| (B[14]&cout[13]))};
assign {Sum[15]} = {(A[15] ^ B[15] ^ cout[14])};
endmodule