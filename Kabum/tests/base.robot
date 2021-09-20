***Settings***
Library             SeleniumLibrary

***Variables***
${url}                  https://www.kabum.com.br

***Keywords***
Nova sessão
    Open Browser                    ${url}      chrome

Encerrar sessão
    Capture Page Screenshot
    Close Browser