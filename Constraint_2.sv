//Constraint to generate a pattern as 000111222333...
class pattern;
  rand logic [3:0] a[];
  constraint size{a.size() inside {[10:30]};}
  constraint pat{foreach(a[i])
    a[i]==i/3;
               }
  
  function void post_randomize();
    $display("a=%0p",a);
  endfunction
endclass

module tb;
pattern p;
  initial begin
    repeat(20) begin
    p=new();
    p.randomize();
    end
  end
endmodule
