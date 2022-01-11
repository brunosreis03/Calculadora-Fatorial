# language: pt

Funcionalidade: Calculadora Fatorial
  Como um usuário
  Gostaria de realizar cálculos
  Para verificar a funcionalidade da calculadora fatorial

  Cenario: Fatorial com valores válidos

    Dado que esteja na página da calculadora fatorial
    Quando submeto os valores "<value>"
    Então verifico se o resultado é exibido corretamente e a mensagem é exibida "The factorial of <value> is: <result>"

    Exemplos:
      | value | result                 |
      | 2     | 2                      |
      | 5     | 120                    |
      | 11    | 39916800               |

  Cenario: Fatorial com valores infinitos

    Dado que esteja na página da calculadora fatorial
    Quando submeto os valores "<value>"
    Então verifico se a mensagem é exibida "The factorial of <value> is: <result>"  

    Exemplos:
      | value | result   |
      | 172   | Infinity |
      | 1000  | Infinity |
     
  Cenario: Fatorial com valores inválidos

    Dado que esteja na página da calculadora fatorial
    Quando submeto os valores "<value>"
    Então verifico se a mensagem é exibida "Please enter an integer"

    Exemplos:
      | value |
      | 2,3   |
      | -2    |
      |       |
      | aab   |





  
   