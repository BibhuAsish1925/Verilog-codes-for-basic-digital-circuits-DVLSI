module bcd_adder(
  input A3,A2,A1,A0,B3,B2,B1,B0,
  input Cin,
  output S3,S2,S1,S0,
  output Cout
);
  wire sx3,sx2,sx1,sx0;
  wire cx,ao1,ao2,Og1;
  
  
  bit_4_adder b4a1(A3,A2,A1,A0,B3,B2,B1,B0, Cin, sx3,sx2,sx1,sx0, cx);
  and a1(ao1, sx3,sx2);
  and a2(ao2, sx3,sx1); 
  or o1(Og1, cx,ao1,ao2);
  bit_4_adder b4a2(sx3,sx2,sx1,sx0, 0,Og1,Og1,0, Cin, S3,S2,S1,S0, Cout);
  
  
endmodule



// Full Adder Module
module full_adder (
  input a, b, cin,
  output sum, cout
);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

// 4-Bit Adder Module
module bit_4_adder (
  input A3,A2,A1,A0,B3,B2,B1,B0,
  input Cin,
  output S3,S2,S1,S0,
  output Cout
);
  wire c1, c2, c3;

  full_adder FA0 (A0,B0,Cin,S0,c1);
  full_adder FA1 (A1,B1,c1,S1,c2);
  full_adder FA2 (A2,B2,c2,S2,c3);
  full_adder FA3 (A3,B3,c3,S3, Cout);
endmodule