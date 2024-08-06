*** Settings ***
Documentation    Classe em que escrevo meus Casos de Testes. @Bianca M. S. Prestes

Library    AppiumLibrary

Resource    resources/base.robot
Resource    resources/steps.robot

Test Setup    Abrir App
Test Teardown    Fechar App

*** Test Cases ***

CT01-Verificar elementos da tela do aplicativo
    Verificar tela inicial
    Verificar aba My Garden
    Verificar aba Plant list
   
CT02-Escolher planta para meu jardim
    Adicionar planta
    Verificar planta adicionada

   
