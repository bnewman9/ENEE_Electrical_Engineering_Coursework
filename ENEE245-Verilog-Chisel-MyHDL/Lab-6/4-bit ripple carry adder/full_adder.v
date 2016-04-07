//////////////////////////////////////////////////////////
//Author: Brandon Newman
//Lab: 6
//Preface:
//	This hardware description is intended to simulate a
//  full adder.
//Date:	October 25, 2015
//Semester: Fall 2015
//////////////////////////////////////////////////////////

module full_adder(
    output S,Cout,
    input A,B,Cin
    );
 wire s1,c1,c2;
 half_adder HA1(s1,c1,A,B);
 half_adder HA2(S,c2,s1,Cin);
 or OG1(Cout,c1,c2);

endmodule