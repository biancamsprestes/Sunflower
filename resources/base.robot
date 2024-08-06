*** Settings ***
Documentation    Classe que serve para adicionar configurações de comandos ganchos. @Bianca M. S. Prestes

Library    AppiumLibrary

Resource    steps.robot

*** Keywords ***
#ganchos
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2 
    ...                 platformName=Android
    ...                 platformVersion=11
    ...                 deviceName=emulador
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/sunflower.apk

#Checkpoint para garantir que estamos no lugar certo
    Wait Until Element Is Visible    accessibility_id=My garden    timeout=50

Fechar App
    Capture Page Screenshot
    Close Application
