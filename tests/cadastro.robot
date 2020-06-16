*** Settings ***
Documentation    Cadastro de Usuário
...              Sendo um usuário com perfil ADM
...              Quero cadastrar usuários
...              Para que eu possa utilizar o sistema de acordo com a permissão

Library     SeleniumLibrary
Resource    ../resources/actions.robot
#Biblioteca que da acesso ao sistema operacional


Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cadastrar Usuario
    Dado que estou logado
    Quando eu faço o cadastro desse usuário            usuario001.json
    Então devo ver o usuário cadastrado na listagem
