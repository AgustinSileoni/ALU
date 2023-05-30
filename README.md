# ALU
Diseñar, implementar, y simular el funcionamiento de una ALU con operandos A y B de 4 bits, y salida R de 4 bits.La función a realizar por la ALU se define con 4 bits individuales de control C (C1, C2, C3, C4), permitiendo las siguientes funciones:
- Suma o Resta
- Saturación o No saturación
- Selección AND bit a bit u OR bit a bit (con un MUX)
- Selección salida parte Aritmética o parte Lógica (con un MUX)

Además del resultado en 4 bits, la ALU debe tener un bit de salida que indique cuando hubo carry de salida, y otro bit de salida que indique cuándo hubo overflow.
El bloque SUMADOR/RESTADOR, el MULTIPLEXOR 4 bits que selecciona entre Aritmética y Lógica, y el bloque OR BIT a BIT  deben implementarse en lenguaje VHDL, el resto de los bloques deben implementarse con bloques de librería.
