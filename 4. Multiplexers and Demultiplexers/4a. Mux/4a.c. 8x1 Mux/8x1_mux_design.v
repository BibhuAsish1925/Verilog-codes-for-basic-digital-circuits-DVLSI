module mux_8x1(
  input [7:0]i,
  input [2:0]s,
  output out
);
  
  wire w1,w2,w3,w4,w5,w6;
  
  //dataflow
  /*assign out = (~s[2]&~s[1]&~s[0]&i[0]) | (~s[2]&~s[1]&s[0]&i[1]) | (~s[2]&s[1]&~s[0]&i[2]) | (~s[2]&s[1]&s[0]&i[3]) | (s[2]&~s[1]&~s[0]&i[4]) | (s[2]&~s[1]&s[0]&i[5]) | (s[2]&s[1]&~s[0]&i[6]) | (s[2]&s[1]&s[0]&i[7]);*/
  
  //structural using 2x1 mux
  mux_2x1 m1(i[7],i[6], s[0], w4);
  mux_2x1 m2(i[5],i[4], s[0], w3);
  mux_2x1 m3(i[3],i[2], s[0], w2);
  mux_2x1 m4(i[1],i[0], s[0], w1);
  
  mux_2x1 m5(w2,w1, s[1], w5);
  mux_2x1 m6(w4,w3, s[1], w6);
  
  mux_2x1 m7(w6,w5, s[2], out);
  
  
  //structural using 4x1 mux and 2x1 mux
 /* mux_4x1 m1(i[7:4], s[1:0], w2);
  mux_4x1 m2(i[3:0], s[1:0], w1);
  mux_2x1 m3(w2,w1, s[2], out);*/
  
  
endmodule

module mux_4x1(
  input [3:0]i,
  input [1:0]s,
  output out);
  
  wire w1,w2;
  
  //dataflow
  assign out = (~s[0]&~s[1]&i[0])|(s[0]&~s[1]&i[1])|(~s[0]&s[1]&i[2])|(s[0]&s[1]&i[3]);
  
endmodule
  
  
module mux_2x1(
  input i1,i0,s,
  output out);
  
  assign out = ( (~s) & i0 )|( s & i1 );
  
endmodule
