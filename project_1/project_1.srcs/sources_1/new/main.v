module top_module( input a, input b, input c, input d, output out, output out_n);
    
	wire or_gate_in1;
	wire or_gate_in2;
    
    assign or_gate_in1 = a & b;
    assign or_gate_in2 = c & d;
    
    assign out = or_gate_in1 | or_gate_in2;
    assign out_n = ~(or_gate_in1 | or_gate_in2);
endmodule