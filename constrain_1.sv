//Constraint example to generate 0's in diagonal of a matrix
class diagonal;
  rand logic [3:0] matrix [2:0][2:0];
  constraint dia{foreach(matrix[i,j])
    if(i==j)
      matrix[i][j]==0;
    else
      matrix[i][j]!=0;
                }
  
  function void post_randomize();
    $display("matrix=%0p",matrix);
  endfunction
endclass

module tb;
diagonal d;
  initial begin
    d=new();
    d.randomize();
  end
endmodule
