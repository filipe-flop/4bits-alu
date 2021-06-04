# 4bits-ALU in VHDL
Uma Unidade Lógica Aritmética (ULA, ou ALU - *Arithmetic-Logic Unit*) é um circuito digital que realiza operações lógico-aritméticas.
A ULA aqui descrita, representada no diagrama abaixo, realiza seis operações básicas: adição, subtração, 'E' lógico, 'OU' lógico, 'OU-exclusivo' lógico e complemento de 2.
<p align="center">
  <img src=images/img1.png>
</p>

O sinal **OP** é uma entrada que indica a operação a ser executada pela ULA, conforme descrito na tabela abaixo, **A** é uma entrada de dados de 5 bits e **B** é uma entrada de dados de 4 bits. O resultado da operação é dado pela saída **R** de 5 bits; a saída **M** apresenta nível lógico ALTO quando **A > B** e nível lógico BAIXO, caso contrário; e a saída **I** apresenta nível lógico ALTO quando **A = B** e nível lógico BAIXO, caso contrário.
<p align="center">
  <img src=images/img2.png>
</p>

Abaixo é apresentado o circuito esquemático da ULA. Cada operação possui sua respectiva entidade que recebe as duas entradas de dados **A** e **B**, e uma terceira entrada para habilitação da operação. Em um dado instante, no máximo uma das operações deve estar ativa, produzindo um sinal válido na saída, enquanto as demais devem estar em alta impedância ('Z').
<p align="center">
  <img src=images/img3.png>
</p>

O decodificador é responsável por habilitar a operação correspondente de acordo com a entrada **OP**. Caso seja informado um código **OP** inválido, todas as operações devem ser desabilitadas. A decodificação é feita da seguinte forma:
<p align="center">
  <img src=images/img4.png>
</p>

Dessa forma, garantimos que apenas uma operação esteja ativa por vez.

As entidades de cada operação estão separadas em arquivos individuais e são instanciadas na entidade *high level* da ULA.
