module task_example;
  
  task compare(input int a, b, output done);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
    #10;
    
    done = 1;
  endtask
  
  initial begin
    bit done;
    compare(10,10, done);
    if(done) 
      $display("comparsion completed at time = %0t", $time);
    compare(5,9, done);
    if(done)
      $display("comparsion completed at time = %0t", $time);
    compare(9,5, done);
    if(done)
      $display("comparsion completed at time = %0t", $time);
  end
endmodule

////////////////OUTPUT///////////////////

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 25 00:08 2024
a is equal to b
comparsion completed at time = 10
a is less than b
comparsion completed at time = 20
a is greater than b
comparsion completed at time = 30
           V C S   S i m u l a t i o n   R e p o r t 
Time: 30 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Mon Nov 25 00:08:59 2024
