module mux_2x1(
  input i1,i0,s,
  output out);
  
  assign out = ( (~s) & i0 )|( s & i1 );
  
endmodule
