module full_add(cin, a, b, s, cout);
  input cin, a, b;
  output s, cout;
  assign s = cin^a^b;
  assign cout = a&b|cin&a|cin&b ;
endmodule
