// whichever model you want just remove /* */ and change b/w output and output reg

module demux_1x8(
  input in,en,   //en is for ckt on and off
  input [2:0]s,   
  output [7:0]y
);
  wire [5:0]w;
  
  //structural using 1x2 demux only
  demux_1x2 d1(in,en,s[2],w[1:0]);
  
  demux_1x2 d2(w[0],en,s[1],w[3:2]);
  demux_1x2 d3(w[1],en,s[1],w[5:4]);
  
  demux_1x2 d4(w[2],en,s[0],y[1:0]);
  demux_1x2 d5(w[3],en,s[0],y[3:2]);
  demux_1x2 d6(w[4],en,s[0],y[5:4]);
  demux_1x2 d7(w[5],en,s[0],y[7:6]);
  
  
  //structural using one 1x2 demux and two 1x4 demux
  /*demux_1x2 d1(in,en,s[2],w[1:0]);
  
  demux_1x4 d2(w[0],en,s[1:0],y[3:0]);
  demux_1x4 d3(w[1],en,s[1:0],y[7:4]);*/
  
endmodule



module demux_1x4(
  input in,en,   //en is for ckt on and off
  input [1:0]s,   
  output [3:0]y
);
  //wire [1:0]w;
  
  //dataflow
  assign y[0]= en&~s[0]&~s[1]&in;
  assign y[1]= en&s[0]&~s[1]&in;
  assign y[2]= en&~s[0]&s[1]&in;
  assign y[3]= en&s[0]&s[1]&in;

  
endmodule

  
//for structural purpose
module demux_1x2(
  input in,en,s,   //en is for ckt on and off
  output [1:0]y
);

  assign y[0]= en&~s&in;
  assign y[1]= en&s&in;
   
endmodule
