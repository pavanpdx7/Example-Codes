/*There is a memory which can take addresses 0x00 to 0x100 except the reserved memory 
from 0x20 to 0xE0. address should not take reserved memory. address should be 4 byte 
aligned memory . Write a constraint to generate 16 byte addresses. For example if it 
generates 0x0 now it should generate 0x4 ,next 0x8 next 0x12 addresses such that it 
generates 16byte addresses.*/

class memory;
  rand logic [31:0] addr;
  
  constraint addr_range{addr inside {['h0:'h100]};}
  constraint reserved_range{!(addr inside {['h20:'hE0]});}
  constraint byte_addressable{addr%4==0;}
  
  function void post_randomize();
    $display("addr=%0h",addr);
  endfunction
endclass

module tb;
memory mem;
  initial begin
    repeat(20) begin
    mem=new();
    mem.randomize();
    end
  end
endmodule
