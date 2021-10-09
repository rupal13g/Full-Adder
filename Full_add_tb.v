module fa_tb;
  reg tcin, ta, tb;
  wire ts, tcout;
  integer i, j;
  full_add fad(.cin(tcin), .a(ta), .b(tb), .s(ts), .cout(tcout));
  initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end
  initial
    begin
      $monitor (tcin, ta, tb, ts, tcout);
      tcin = 1'b0;
      for (i=0; i<4; i=i+1)
        begin
          {ta, tb} = i;
          #10;
        end
      tcin = 1'b1;
      for (j=0; j<4; j=j+1)
        begin
          {ta, tb} = j;
          #10;
        end
    end
endmodule
