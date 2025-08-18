// whichever model you want just remove /* */ and change b/w output and output reg

module demux_1x4(
  input in,en,   //en is for ckt on and off
  input [1:0]s,   
  output [3:0]y
);
  wire [1:0]w;
  
  //dataflow
  /*assign y[0]= en&~s[0]&~s[1]&in;
  assign y[1]= en&s[0]&~s[1]&in;
  assign y[2]= en&~s[0]&s[1]&in;
  assign y[3]= en&s[0]&s[1]&in;*/
  
  //structural using 1x2 demux
  demux_1x2 d1(in,en,s[1],w[1:0]);
  demux_1x2 d2(w[0],en,s[0],y[1:0]);
  demux_1x2 d3(w[1],en,s[0],y[3:2]);
  
endmodule
  
//for structural purpose
module demux_1x2(
  input in,en,s,   //en is for ckt on and off
  output [1:0]y
);

  assign y[0]= en&~s&in;
  assign y[1]= en&s&in;
   
endmodule
 
  