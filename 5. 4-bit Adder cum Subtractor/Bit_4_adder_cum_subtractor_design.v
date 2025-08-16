module bit_4_adder_cum_subtractor(
  input [3:0]a,
  input [3:0]b,
  input cbin,
  output [3:0]sd,
  output cbout );
  
  wire [3:0]w;   //wire or inout for gatelevel and structural only
  wire [2:0]cb;
 
  assign w[0] = cbin ^ b[0];
  assign w[1] = cbin ^ b[1];
  assign w[2] = cbin ^ b[2];
  assign w[3] = cbin ^ b[3];
  full_adder h1(a[0], w[0], cbin, sd[0], cb[0]);
  full_adder h2(a[1], w[1], cb[0], sd[1], cb[1]);
  full_adder h3(a[2], w[2], cb[1], sd[2], cb[2]);
  full_adder h4(a[3], w[3], cb[2], sd[3], cbout);
             
endmodule



module full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
  
  
  
  

