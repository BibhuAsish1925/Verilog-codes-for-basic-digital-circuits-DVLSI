module tristate_buffer(
  input  in, en,
  output out
    );
    
    assign out = en ? in : 1'bz;  //z is the high-z state of tristate buffer 
endmodule
