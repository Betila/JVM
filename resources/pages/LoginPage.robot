*** Settings ***
Documentation    Este arquivo implementa funções e elementos da página login

*** Keywords ***
Login With
    [Arguments]      ${email}                           ${pass}
    Sleep            5
    Input Text       css:input[placeholder=Login]       ${email}
    Input Text       css:input[placeholder=Password]    ${pass}
    Click Element    class:btn-block