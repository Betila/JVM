*** Settings ***
Documentation    Este arquivo implementa abrir e fechar navegador

*** Keywords ***
Open Session
    Open Browser    https://jvmanagement-hmo.azurewebsites.net/    chrome

    #5 segundos para encontrar o elemento
    Set Selenium Implicit Wait    10

Close Session
    Close Browser