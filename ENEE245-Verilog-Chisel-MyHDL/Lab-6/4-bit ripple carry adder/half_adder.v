//////////////////////////////////////////////////////////
//Author: Brandon Newman
//Lab: 6
//Preface:
//	This hardware description is intended to simulate a
//  half adder.
//Date:	October 25, 2015
//Semester: Fall 2015
//////////////////////////////////////////////////////////

module half_adder(
    output S,C,
  input A,B
    );
 xor(S,A,B);
 and(C,A,B);
 
endmodule