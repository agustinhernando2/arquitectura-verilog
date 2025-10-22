module add16( 
    input[15:0] a, 
    input[15:0] b, 
    input cin, 
    output[15:0] sum, 
    output cout );
    
    wire [16:0] res;
    
    assign res = a + b + cin;
    
    assign sum = res[15:0];
    assign cout = res[16];
endmodule
