module function_example;
  
  function compare(input int a, b);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
    return 1;
  endfunction
  
  initial begin
    compare (10, 10);
    compare (5, 9);
    compare (9, 5);
  end 
endmodule

//////////////////////////////////////////OUTPUT/////////////////////////////////////////////////////////
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 24 23:54 2024
a is equal to b
a is less than b
a is greater than b
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Sun Nov 24 23:54:15 2024
