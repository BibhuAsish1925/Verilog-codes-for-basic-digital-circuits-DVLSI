// whichever model you want just remove /* */ and change b/w output and output reg

module mux_4x1(
  input [3:0]i,
  input [1:0]s,
  output out);
  
  wire w1,w2;
  
  //dataflow
  /*assign out = (~s[0]&~s[1]&i[0])|(s[0]&~s[1]&i[1])|(~s[0]&s[1]&i[2])|(s[0]&s[1]&i[3]);*/
  
  //structural
  mux_2x1 m1(i[3],i[2], s[0], w2);
  mux_2x1 m2(i[1],i[0], s[0], w1);
  mux_2x1 m3(w2,w1, s[1], out);
  
endmodule
  

//for structural model  
module mux_2x1(
  input i1,i0,s,
  output out);
  
  assign out = ( (~s) & i0 )|( s & i1 );
  
endmodule
