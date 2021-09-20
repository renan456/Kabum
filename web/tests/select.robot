***Settings***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerrar sessão

***Test Cases***
Selecionar por Texto e Validar pelo Valor
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list                  Scott Lang
    ${selected}=                    Get Selected List Value             class:avenger-list
    Should Be Equal                 ${selected}                         7

Selecionar pelo valor e Validar pelo Texto
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                         6
    ${selected}=                    Get Selected List Label             id:dropdown
    Should Be Equal                 ${selected}                         Loki