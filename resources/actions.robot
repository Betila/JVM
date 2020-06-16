*** Settings ***
Documentation    Actions é o arquivo que terá Keywords que implementam os steps

Library    SeleniumLibrary
Library    OperatingSystem

Resource    pages/BasePage.robot
Resource    pages/LoginPage.robot
Resource    pages/UserPage.robot

*** Keywords ***

#LOGIN
Get User Json
    [Arguments]    ${file_name}

    ${file}=    Get File    resources/fixtures/${file_name}
    ${json}=    Evaluate    json.loads($file)                  json

    [return]    ${json}

Dado que eu acesso a página de login
    Open Session

#transformar em uma variavel de argumento email e senha
Quando submeto minhas credenciais "${email}" e "${pass}"
    Login With    ${email}    ${pass}

Então devo ser autenticado
    Wait Until Page Contains    Agni

#USER
Dado que estou logado
    Login With       agni@intcom.com.br                                                                                                                                                                          123456
    Click Element    xpath://at-sidenav-item[7]/a/div/span
    Click Element    xpath://*[@id="layout-1"]/div/mat-sidenav-container/mat-sidenav[1]/div/app-sidenav/div/at-scrollbar/div[1]/mat-nav-list/at-sidenav-item[7]/mat-nav-list/at-sidenav-item[3]/a/div/span[1]
    Click Element    css=.btn-new

Quando eu faço o cadastro desse usuário
    [Arguments]    ${file_name}

    ${user_json}=    Get User Json    ${file_name}

    Set Test Variable    ${user_json}

    Create New User    ${user_json}

Então devo ver o usuário cadastrado na listagem
    #Wait Until Page Contains    css=body    ${user_json['name']}
    Wait Until Page Contains    Lara