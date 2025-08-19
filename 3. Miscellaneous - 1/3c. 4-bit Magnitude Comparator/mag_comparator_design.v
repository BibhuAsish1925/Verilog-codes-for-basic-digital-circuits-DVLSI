module comparator_4bit(
  input [3:0] a,b,
  output lt,eq,gt
);
  
  //datflow model use of ( ) very crucial
  
  assign lt = (a<b);   // means lt becomes 1 if a < b.
  assign eq = (a==b);  // means eq becomes 1 if a = b.
  assign gt = (a>b);   // means gt becomes 1 if a > b.
  
endmodule
