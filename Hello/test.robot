*** Settings ***

Library     app.py

*** Test Cases ***

Deve retornar mensagem de Boas Vindas 

    ${result}=              welcome    Renan
    Should Be Equal         ${result}  Olá Renan, bem vindo ao Curso Básico Robot Framework!
