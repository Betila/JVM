*** Settings ***
Documentation    Este arquivo implementa funções e elementos da página Usuários

*** Keywords ***
Create New User
    [Arguments]    ${user_json}

    Set Selenium Speed               1
    Wait Until Element Is Visible    xpath://*[@class='mat-checkbox-inner-container']

    Click Element    xpath://*[@class='mat-checkbox-inner-container']

    Input Text    css:input[formcontrolname='userName']    ${user_json['name']}

    Input Text    css:input[formcontrolname='userEmail']    ${user_json['email']}

    Input Text    css:input[formcontrolname='userMobile']    ${user_json['phone']}

    Click Element    css:input[placeholder='Profiles *']
    Input Text       css:input[placeholder='Profiles *']    ${user_json['profile']}
    Press Keys       css:input[placeholder='Profiles *']    ENTER
    Sleep            10
    Press Keys       css:input[placeholder='Profiles *']    TAB
#Selecionar Permission Assets
    Wait Until Element Is Visible    css:.row .col-3:nth-of-type(1) .row.ng-star-inserted:nth-of-type(2) .mat-checkbox .mat-checkbox-layout .mat-checkbox-inner-container
    Sleep                            2
    Click Element                    css:.row .col-3:nth-of-type(1) .row.ng-star-inserted:nth-of-type(2) .mat-checkbox .mat-checkbox-layout .mat-checkbox-inner-container
    Sleep                            2
#Selecionar Permission Discussion
    Wait Until Element Is Visible    css:.row .col-3:nth-of-type(2) .row.ng-star-inserted:nth-of-type(5) .mat-checkbox .mat-checkbox-layout .mat-checkbox-inner-container
    Sleep                            2
    Click Element                    css:.row .col-3:nth-of-type(2) .row.ng-star-inserted:nth-of-type(5) .mat-checkbox .mat-checkbox-layout .mat-checkbox-inner-container

     #Click Element    class:ng-touched mat-checkbox-checked
    #Click Element                    xpath://*[@id='mat-checkbox-148']/label/div
    Wait Until Element Is Visible    css:.mat-button:nth-of-type(2)
    Sleep                            2
    Click Element                    css:.mat-button:nth-of-type(2) .mat-button-wrapper
    Sleep                            10
    #Press Keys       xpath://span[contains(.,'Create User')]    ENTER

    Set Test Variable    ${user_json}

