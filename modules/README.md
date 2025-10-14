# Modulos
## Concepto general
Un module en Verilog representa un circuito con input y output ports que permiten su interacción con el exterior. Los sistemas más complejos se construyen combinando módulos más pequeños junto con elementos como assign statements y always blocks, formando una jerarquía donde un módulo puede contener instancias de otros.

Para crear un circuito jerárquico, se instancia un módulo dentro de otro, siempre que todos los módulos pertenezcan al mismo proyecto. El código de un módulo no se escribe dentro de otro, sino que se declara por separado.

## Formas principales de conectar señales a los puertos de un módulo:

<div style="text-align: center;">
  <img src="img/image1.png" alt="" width="50%">
</div>

**By position:** 

los wires se conectan en el mismo orden en que fueron declarados los puertos del módulo.
Ejemplo:

```verilog
mod_a instance1 (wa, wb, wc);
```

Aquí wa se conecta a in1, wb a in2 y wc a out. El inconveniente es que si el orden o número de puertos cambia, todas las instancias deben modificarse.

**By name:** 

se conectan las señales usando el nombre del puerto, lo que hace el código más legible y resistente a cambios.

```verilog
mod_a instance2 (.out(wc), .in1(wa), .in2(wb));
```

En este caso, el orden no importa, ya que la conexión se realiza por nombre.

## Ejercicios

**1**

<div style="text-align: center;">
  <img src="img/image2.png" alt="" width="50%">
</div>

```verilog
module top_module ( input a, input b, input c, input d, output out1, output out2);
    mod_a instance1 (out1,out2,a,b,c,d);
endmodule
```

**2**

<div style="text-align: center;">
  <img src="img/image2.png" alt="" width="50%">
</div>


```verilog
module top_module ( input a, input b, input c, input d, output out1, output out2);
    mod_a instance_name ( .out1(out1), .out2(out2), .in1(a), .in2(b), .in3(c), .in4(d));
endmodule
```

**3 Module shift**

You are given a module my_dff with two inputs and one output (that implements a D flip-flop). Instantiate three of them, then chain them together to make a shift register of length 3. The clk port needs to be connected to all instances.

`The module provided to you is: module my_dff ( input clk, input d, output q );`

Note that to make the internal connections, you will need to declare some wires. Be careful about naming your wires and module instances: the names must be unique.

<div style="text-align: center;">
  <img src="img/image3.png" alt="" width="50%">
</div>

```verilog
module top_module ( input clk, input d, output q );
  
  	wire q1;
    wire q2;
    
    my_dff instance1 (.clk(clk), .d(d), .q(q1));
    my_dff instance2 (.clk(clk), .d(q1), .q(q2));
    my_dff instance3 (.clk(clk), .d(q2), .q(q));

endmodule
```

