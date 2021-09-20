***Settings***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerrar sessão


***Variables***
  
${Check_thor}           id:thor
${Check_iron}           css:input[value='iron-man']
${Check_panther}        xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando opção com Id 

    Go To                           ${url}/checkboxes
    Select Checkbox                 ${Check_thor}
    Checkbox Should Be Selected     ${Check_thor}
    Sleep                           2
   

Marcando opção com CSS Selector
    
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${Check_iron}
    Checkbox Should Be Selected     ${Check_iron}
    Sleep                           2
    

Marcando opção com Xpath
    
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${Check_panther}
    Checkbox Should Be Selected     ${Check_panther}
   

