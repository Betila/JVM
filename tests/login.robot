*** Settings     ***
Documentation    Login
...              Sendo usuário cadastrado
...              Quero me autenticar no sistema
...              Para que eu possa usar o sistema JVM

#Importar o arquivo Actions.robot
Resource    ../resources/actions.robot

#Ganho que é executa toda vez que um Caso de Teste termina
Test Teardown    Close Browser

#Gherckin = Padrão do BDD (desenvolvimento guiado por comportamento)
*** Test Cases ***
Login com sucesso
#Robot entende como uma palavra chave que deve ser implementada
    Dado que eu acesso a página de login
    Quando submeto minhas credenciais "betila@intcom.com.br" e "123456"
    Então devo ser autenticado




