module tb_add16;

reg [15:0] tb_a;
reg [15:0] tb_b;
reg        tb_cin;

wire [15:0] tb_sum;
wire        tb_cout;

add16 test( 
        .a(tb_a),
        .b(tb_b),
        .cin(tb_cin), // Conectamos la entrada del testbench
        .sum(tb_sum),
        .cout(tb_cout)
    );
initial begin
      // Launch a monitor in background to display values to log whenever a/b/c/d/sel/out changes
      $monitor ("[%0t] a=0x%0h b=0x%0h cin=0x%0h sum=0x%0h cout=0x%0h", $time, tb_a, tb_b, tb_cin, tb_sum, tb_cout);

   	  // Caso de prueba 1: 10 + 20 + 1 (cin) = 31 (sin carry)
    tb_a = 16'd10;
    tb_b = 16'd20;
    tb_cin = 1'b1;
    #10;
   	  
      #5 $finish;
   end
endmodule
