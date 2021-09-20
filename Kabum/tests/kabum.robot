***Settings***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerrar sessão

***Variables***
${iphone}      iphone

***Test Cases***

Fazer a busca de iphone no https://kabum.com.br E validar retorno de produtos
   #Acessar o Site e Pesquisa Iphone
   Input text              id = input-busca  ${iphone}
   #Criar botão de Pesquisa 
   Click Element           class:sc-dNLxif
   #validar o retorno do produtos Iphone
   Page Should Contain     iphone
   Sleep                   5

Fazer validação de um usuário inválido no https://kabum.com.br.
   #Acessar a Pagina de Login e Digitar Usuario invalido
   Click Element           class:sc-iQKALj
   Input text              class = MuiInputBase-input       Renan
   Input text              css:[name="password"]     		123
   Input text              class = jss3        Renan
   Click Element           id = botaoLogin
   Page Should Contain     Estamos com problemas, tente mais tarde
   Sleep                   10

Selecione uma categoria no menu de “Departamento” e adicione um produto no carrinho (Não precisa estar logado). E valide se o produto está no carrinho.
   Click Link           id:informaticaMenuSuperior
   Click Element        class:sc-dliRfk



#C:\qaninja\robot\Kabum\tests (master -> origin)
#λ robot -d.log kabum.robot

