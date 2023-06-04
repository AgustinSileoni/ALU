# ALU
Diseñar, implementar, y simular el funcionamiento de una ALU con operandos A y B de 4 bits, y salida R de 4 bits.La función a realizar por la ALU se define con 4 bits individuales de control C (C1, C2, C3, C4), permitiendo las siguientes funciones:
- Suma o Resta
- Saturación o No saturación
- Selección AND bit a bit u OR bit a bit (con un MUX)
- Selección salida parte Aritmética o parte Lógica (con un MUX)

Además del resultado en 4 bits, la ALU debe tener un bit de salida que indique cuando hubo carry de salida, y otro bit de salida que indique cuándo hubo overflow.
El bloque SUMADOR/RESTADOR, el MULTIPLEXOR 4 bits que selecciona entre Aritmética y Lógica, y el bloque OR BIT a BIT  deben implementarse en lenguaje VHDL, el resto de los bloques deben implementarse con bloques de librería.

# Desarrollo 
El objetivo de este trabajo es construir una Unidad Aritmético Lógica (ALU) que consta de varios módulos, lo que facilita la división del desarrollo en diferentes componentes antes de unirlos. En nuestro informe, abordaremos cada módulo por separado, explicando su funcionamiento y posteriormente presentaremos una explicación de cómo se integran los módulos para formar la ALU completa.

## Sumador/Restador
Para implementar un sumador-restador, utilizaremos la representación de valores en complemento a dos. Esta representación nos permite abarcar la mayor cantidad posible de números con la misma cantidad de bits, así como realizar operaciones de resta.

En cuanto al funcionamiento, el sumador-restador se basa en tener 8 bits de entrada, que consisten en dos números de 4 bits cada uno (A y B), y un bit adicional que indica si se desea realizar una suma o una resta (res). Dependiendo de este valor, se dejan intactos los valores ingresados para la suma, o invertimos B para llevar a cabo la resta, almacenando este valor modificado en una variable auxiliar (Baux). Aunque debemos recordar que tal como se dijo anteriormente estamos utilizando complemento a 2, por lo que además de invertir los valores de B se le debe sumar 1 a ese resultado, lo cual se solucionará en el siguiente paso.

Una vez obtenidos los valores de entrada adecuados, realizamos la operación de suma o resta bit a bit, utilizando una variable auxiliar (AUX).
Esta funciona en dos partes, primero utilizamos una xor entre los dos bits de entrada a sumar. Esto ya que si ambos tienen el mismo valor el resultado es 0 (0+0=0 y 1+1=0) y si son distintos el valor es 1 (1+0=1 y 0+1=1). Una vez obtenido este resultado parcial realizamos la misma operación pero con este valor y el carry del bit anterior. Aquí se da el caso de que el primer bit no va a tener un carry anterior, pero si recordamos dijimos que en el caso de la resta nos había faltado sumarle 1 al valor para obtener su complemento, entonces tomamos el bit de selección de suma o resta como si fuera un carry del primer bit.(Si es una resta se le suma 1 y si es una suma se le suma 0).
Luego para saber si cada operación individual se estudian los 3 casos posibles donde se da:
- A=1 y B=1
- A=1 B=0 Carry=1
- A=1 B=1 Carry=1

En caso de que uno de estos se cumpla decimos que hay un carry y este valor se suma al bit siguiente.
Finalmente si el bit más significativo posee carry esto se demuestra a través de un bit de salida del sumador.
Además si el resultado de la operación da un valor que no es posible expresar con nuestra cantidad de bits del resultado, lo cual identificamos porque los carrys de sus dos bits más significativos son distintos, se devuelve un valor positivo por otro bit de salida llamado overflow.



Además, en caso de que el resultado esté fuera del rango de representación de 4 bits en complemento a dos, se proporcionan dos salidas adicionales: una para el acarreo (Cout) y otra para el overflow (Ovf).

Con esta implementación, podemos lograr un sumador-restador eficiente y preciso, capaz de realizar operaciones aritméticas con números en representación de complemento a dos.


## Saturador	
En el caso del sumador/restador, existe la posibilidad de que el resultado final de nuestra operación esté fuera del rango de representación válido, lo cual puede plantear un problema. Para abordar esta situación y evitar obtener un valor completamente incorrecto, ofrecemos la opción de activar un saturador (Sat). Cuando se produce un desbordamiento, el saturador ajusta el resultado para que sea el número más cercano posible que pueda representarse correctamente.
El saturador se implementa utilizando dos líneas de multiplexores. La primera línea decide si la salida será el resultado directo del sumador o un valor saturado, en función de si el módulo saturador está activo y si se produjo un desbordamiento. La segunda línea de multiplexores se utiliza para seleccionar si la saturación se realizará hacia abajo (para un número negativo) o hacia arriba (para un número positivo), basándose en el bit más significativo de la salida del sumador.
De esta manera, al activar el saturador, podemos obtener un resultado ajustado y válido que se acerque lo más posible al valor real en casos de desbordamiento. Si el resultado no puede ser representado correctamente, se mostrará el número máximo posible si es un valor positivo o el número mínimo posible si es un valor negativo.
La implementación del saturador garantiza que nuestro sumador/restador sea más robusto y capaz de manejar correctamente situaciones de desbordamiento.

### Simulaciones
Simulamos casos básicos y casos límites de uso para estudiar el funcionamiento.

- El saturador está desactivado y no hay overflow -> La salida es la del sumador
- El saturador está desactivado y hay overflow  -> La salida es la del sumador
- El saturador está activado y no hay overflow  -> La salida es la del sumador
- El saturador está activado y hay overflow  -> Satura por bajo
- El saturador está activado y hay overflow  -> Satura por alto

## Or bit a bit
Este módulo tiene dos entradas de 4 bits cada una, a las cuales se les aplica una operación or entre los bits del mismo peso y el resultado de cada una de estas operaciones conforma la salida.

## And bit a bit
Este módulo tiene dos entradas de 4 bits cada una, a las cuales se les aplica una operación and entre los bits del mismo peso y el resultado de cada una de estas operaciones conforma la salida.


## Multiplexor
En la construcción de la ALU, se utilizarán dos multiplexores. El primer multiplexor se encargará de seleccionar entre las operaciones de "and" y "or" bit a bit. Tendrá como entradas las salidas de ambos módulos y un bit de selección que determinará cuál de las operaciones se elige.
El segundo multiplexor se utilizará para seleccionar entre la parte lógica y la parte aritmética de la ALU. Sus entradas serán la salida del multiplexor mencionado anteriormente y la salida del saturador. Por lo tanto, estos multiplexores deberán tener 8 entradas de datos y 4 salidas de datos, además de un bit que defina si la salida corresponde a los primeros o últimos 4 bits.

## ALU
Finalmente, uniremos todos los módulos que hemos desarrollado anteriormente para crear el bloque de la ALU. Este bloque contará con 8 bits de entrada de datos, que representarán dos números de 4 bits en complemento a dos. Además, se utilizarán 4 bits para definir las operaciones que se realizarán. La salida de datos será de 4 bits y también se proporcionarán salidas adicionales para el acarreo y el desbordamiento del sumador.



# Conclusiones
La realización de este trabajo utilizando un software y una plaqueta especializados nos  brindó una comprensión más profunda del verdadero trabajo que implica un desarrollo. Por primera vez, hemos logrado combinar el software y el hardware, creando un producto que, aunque simple en cuanto a su complejidad, nos muestra las posibilidades que se encuentran ante nosotros.

Además, nos gustaría destacar el uso del simulador y la modularización en este trabajo. Estas herramientas han sido fundamentales para solucionar problemas importantes que podrían haber requerido un esfuerzo adicional una vez implementado el programa en la plaqueta. Gracias al simulador, hemos podido detectar y resolver problemas desde la comodidad de una PC, lo que nos ha ahorrado tiempo y esfuerzo.


Referencia al informe original
https://docs.google.com/document/d/1cKdbLhYI1y336VQ-OXnL2Vu0wvoEV9tZzbO9Cub02cA/edit?usp=sharing

