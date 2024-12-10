// Code your testbench here
// or browse Examples
module swap;

  function void swapbyval(int a, int b);
    int temp;
    temp=a;
    a=b;
    b=temp;
    $display("inside swapbyval a=%0d b=%0d",a,b);
  endfunction
  
  function automatic void swapbyref(ref int a, ref int b);
    int temp;
    temp=a;
    a=b;
    b=temp;
    $display("inside swapbyref a=%0d b=%0d",a,b);
  endfunction
  
  initial begin
  int x=10;
  int y=20;
    $display("---------------------------------------------------------");
    $display("values before swap by value x=%0d, y=%0d",x,y);
    swapbyval(x,y);
    $display("values after swap by value x=%0d, y=%0d",x,y);
    $display("---------------------------------------------------------");
    $display("values before swap by reference x=%0d, y=%0d",x,y);
    swapbyref(x,y);
    $display("values after swap by reference x=%0d, y=%0d",x,y);
    $display("---------------------------------------------------------");
    
    
  end
  
endmodule
