*** Settings ***
Documentation    Classe que serve para adicionar todos os passos utilizados nos CTs. @Bianca M. S. Prestes

Library    AppiumLibrary
Library    DateTime



*** Keywords ***
#CT01
Verificar tela inicial
       Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Sunflower"]    timeout=50
        
#CT01
Verificar aba My Garden

    Element Should Be Visible     accessibility_id=My garden
    Text Should Be Visible        text=Your garden is empty
    Element Should Be Visible     id=com.google.samples.apps.sunflower:id/add_plant


#CT01
Verificar aba Plant list

    Click Element    xpath=//android.widget.TextView[@text="PLANT LIST"]

    #Checkpoint que garante carregamento das imagens
    Wait Until Element Is Visible    xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[1]

    Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[1]
    Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Apple"]
     Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[2]
     Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Avocado"]
    Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[3]
     Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Beet"]
     Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[4]
     Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Bougainvillea"]
     Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[5]
     Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Cilantro"]
     Element Should Be Visible        xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[6]
     Element Should Be Visible    
    ...    xpath=//android.widget.TextView[@resource-id="com.google.samples.apps.sunflower:id/plant_item_title" and @text="Eggplant"]
    ...    

#CT02
Adicionar planta
    Click Element                    id=com.google.samples.apps.sunflower:id/add_plant
    Wait Until Element Is Visible    xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[1]
    Click Element                    xpath=(//android.widget.ImageView[@content-desc="Picture of plant"])[1]
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@resource-id="com.google.samples.apps.sunflower:id/fab"]
    Click Element                    xpath=//android.widget.ImageButton[@resource-id="com.google.samples.apps.sunflower:id/fab"]
    Click Element                    xpath=//android.view.ViewGroup[@resource-id="com.google.samples.apps.sunflower:id/toolbar"]/android.widget.ImageButton

#CT02
Verificar planta adicionada
    Click Element    accessibility_id=My garden
    
    Element Should Be Visible    accessibility_id=Picture of plant
    Element Text Should Be       id=com.google.samples.apps.sunflower:id/plant_name             Apple
    Element Text Should Be       id=com.google.samples.apps.sunflower:id/plant_date_header      Planted
    Element Text Should Be       id=com.google.samples.apps.sunflower:id/watered_date_header    Last Watered
    Element Text Should Be       id=com.google.samples.apps.sunflower:id/water_interval        	water in 30 days.    

   
