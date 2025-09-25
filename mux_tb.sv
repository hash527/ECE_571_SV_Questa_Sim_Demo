module mux_tb;
  reg i0, i1, sel;
  wire y;
  int i;
  
  mux_2_1 mux(sel, i0, i1, y);
  initial begin
    $monitor("sel = %h: i0 = %h, i1 = %h --> y = %h", sel, i0, i1, y);
    //Exhaustive Testing
    for(i=0;i<8;i++) begin
	{sel,i0,i1} = i;
	#10;
    end
  end
endmodule
