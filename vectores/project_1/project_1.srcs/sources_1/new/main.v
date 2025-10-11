module top_module (
    input  a, b, c, d, e,
    output [24:0] out
);

    // Vector de entradas agrupadas
    wire [4:0] inputs = {a, b, c, d, e};

    // Vector superior: 5 repeticiones de cada entrada (25 bits)
    wire [24:0] top_vector = {5{inputs}};

    // Vector inferior: 5 repeticiones del conjunto completo de entradas (25 bits)
    wire [24:0] bottom_vector = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};

    // Comparación bit a bit: 1 si los bits son iguales, 0 si son distintos
    assign out = ~(top_vector ^ bottom_vector);

endmodule
