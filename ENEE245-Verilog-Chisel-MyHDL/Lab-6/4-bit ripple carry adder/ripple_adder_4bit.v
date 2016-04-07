//////////////////////////////////////////////////////////
//Author: Brandon Newman
//Lab: 6
//Preface:
//	This hardware description is intended to simulate a
//  ripple carry adder.
//Date:	October 25, 2015
//Semester: Fall 2015
//////////////////////////////////////////////////////////

module ripple_adder_4bit(
    output [3:0] Sum,
    output Cout,
    input [3:0] A,B,
    input Cin
    );
 wire c1,c2,c3;
 full_adder FA1(Sum[0],c1,A[0],B[0],Cin),
    FA2(Sum[1],c2,A[1],B[1],c1),
    FA3(Sum[2],c3,A[2],B[2],c2),
    FA4(Sum[3],Cout,A[3],B[3],c3);

endmodule