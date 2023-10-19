# Projeto de Cronômetro Digital usando Assembly e 8051

## Resumo
Este projeto foi desenvolvido como parte de uma prática da disciplina de SEL0641 - Aplicação de Microprocessadores, do curso de Engenharia de Computação da Universidade de São Paulo (USP). O objetivo principal é construir um cronômetro digital utilizando Assembly para o microcontrolador 8051 e simulá-lo no software EdSim51.

## Objetivos
- Desenvolver o conhecimento de programação em linguagem Assembly para o microcontrolador 8051.
- Implementar e testar funções de contagem de tempo, detecção de eventos e interfaces de I/O no simulador EdSim51.
- Entender e aplicar conceitos de sistemas embarcados, arquitetura de microcontroladores, ciclos de máquina e programação em Assembly.

## Materiais e Métodos
O projeto foi desenvolvido utilizando:
- Software: EdSim51, um simulador para o microcontrolador 8051.
- Linguagem: Assembly.
- Hardware simulado: Display de 7 segmentos, botões (chaves) e portas de I/O.

## Descrição
O programa em Assembly projetado para o microcontrolador 8051 serve como um cronômetro digital, incorporando as seguintes funcionalidades:
1. Inicialização: O programa aguarda o acionamento do botão SW0 para iniciar a contagem do cronômetro.
2. Ciclo de Contagem e Representação Visual: Utilizando um loop, o programa contabiliza e apresenta sequencialmente os números de 0 a 9 no display de 7 segmentos.
3. Flexibilidade no Intervalo de Contagem: Durante a operação do cronômetro, a rotina de atraso é alterada conforme o botão pressionado.
4. Implementação de Atraso Detalhado: A precisão do intervalo é alcançada por meio das rotinas DELAY1 (para 0,25s) e DELAY2 (para 1s).
5. Reciclagem Automática da Contagem: A natureza cíclica do programa garante a reinicialização automática da contagem após atingir 9.

<p align="center">
  <img width="461" alt="image" src="https://github.com/gugasanchez/digital-chronometer/assets/62973287/73b8aeee-5680-4918-b64e-0fdee6e80407">
  <br>
  Figura 1 - Display de 7 Segmentos
</p>

## Como executar o código
Para executar o projeto e ver o cronômetro em ação, siga os passos abaixo:
1. Instalação do EdSim51:
  - Faça o download do [simulador EdSim51 ](http://www.edsim51.com/).
  - Instale o programa seguindo as instruções na tela.
2. Executando o Código:
  - Abra o EdSim51 e vá até File > Open e selecione o arquivo .asm do projeto.
  - Uma vez carregado, você verá o código Assembly no editor de texto do simulador.
3. Simulação:
  - Clique no botão Run para iniciar a simulação.
  - Utilize os botões (SW0 e SW1) no simulador para controlar o cronômetro conforme descrito anteriormente.
4. Encerrando a Simulação:
  - Para parar a simulação, clique no botão Stop.
   
## Resultados e Conclusão
O projeto ofereceu uma experiência prática valiosa na programação de microcontroladores usando Assembly e na simulação de hardware usando o software EdSim51. Demonstrou eficientemente a implementação de funções de contagem de tempo, detecção de eventos e interfaces de I/O, como esperado pela atividade. O código resultante é um testemunho das habilidades adquiridas e da capacidade de aplicar conceitos teóricos de microcontroladores em um ambiente prático.
