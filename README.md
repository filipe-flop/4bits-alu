# 4bits-ALU in VHDL
Uma Unidade Lógica Aritmética (ULA, ou ALU - *Arithmetic-Logic Unit*) é um circuito digital que realiza operações lógico-aritméticas.
A ULA aqui descrita, representada no diagrama abaixo, realiza seis operações básicas: adição, subtração, 'E' lógico, 'OU' lógico, 'OU-exclusivo' lógico e complemento de 2.
<p align="center">
  <img src=images/img1.png>
</p>
O sinal **OP** é uma entrada que indica a operação a ser executada pela ULA, conforme descrito na tabela abaixo, **A** é uma entrada de dados de 5 bits e **B** é uma entrada de dados de 4 bits. O resultado da operação é dado pela saída **R** de 5 bits; a saída **M** apresenta nível lógico ALTO quando **A > B** e nível lógico BAIXO, caso contrário; e a saída **I** apresenta nível lógico ALTO quando **A = B** e nível lógico BAIXO, caso contrário.


