# language: pt

Funcionalidade: Site da Calculadora Fatorial
  Como um usuário
  Gostaria de realizar testes no site factorial calculator
  Para verificar a funcionalidade do site

  Cenario: Acesso aos termos e privacidade

    Dado que esteja na página da calculadora fatorial
    Quando seleciono o "<link>"
    Então verifico se o texto é exibido "<message>"  

    Exemplos:
      | link    | message                                                                              |
      | privacy | This is the privacy document. We are not yet ready with it. Stay tuned!              |
      | terms   | This is the terms and conditions document. We are not yet ready with it. Stay tuned! |






  
   