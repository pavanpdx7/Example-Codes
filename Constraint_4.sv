//ranc using rand
class random;
  bit [2:0] que[$];
  rand bit [2:0] a;
  constraint uni{!(a inside {que});}
                   
                   function void post_randomize();
                     que.push_front(a);
                     if(que.size()==4)
                       que.delete();
                
                   endfunction
endclass
                   
                   module tb;
                   random r;
                     initial begin
                        r=new();
                       repeat(16) begin
                         r.randomize();
                         $display("a=%0d",r.a);
                       end
                     end
                   endmodule
