*** Settings ****
Library                                 SeleniumLibrary
#Test Teardown                           Close All Browsers

Suite Setup                             Log         In Setup

***Test Cases***
First Test
    #Starts from here
    Log                                 My First Test

Find Videos From Youtube
    Go To Youtube
    Search For Mandalorian Videos
    Confirm Video with Screenshot

Lets Buy Some Soda
    Go To Verkkokauppa.com
    Search For Vanilla Coke
    Put The Product In To Shopping Cart
    Go To The Checkout Page
    Verify That The Soda Is In The Shopping Cart
    Start Order

*** Keywords ***
    
Go To Google
    Open Browser                        http://www.google.com                   chrome

Go To Youtube
    Open Browser                        http://www.youtube.com                  chrome
    Maximize Browser Window

Search For ${search} Videos
    Click Element                       id:search
    Input Text                          id:search                               ${search}             clear=False
    Click Element                       id:search-icon-legacy
    Sleep                               2
    Wait Until Page Contains Element    id:mouseover-overlay
    Press Keys                          None                    '\ue004'           
    Press Keys                          None                    '\ue007'   

Confirm Video with Screenshot
    Sleep   15
    #Ota Screenshot


####Verkkokauppa.com Task Keywords####
Go To Verkkokauppa.com
    Open Browser                        http://www.verkkokauppa.com              chrome
    Set Selenium Speed                  0.5
    Click Button                        name:allow-cookies

Search For Vanilla Coke
    Wait Until Element Is Enabled       xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/input[1]
    Input Text                          xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/input[1]            Coca-Cola Vanilla
    Wait Until Element Is Enabled       xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/button[2]
    Click Element                       xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/button[2]
Put The Product In To Shopping Cart
    Wait Until Element Is Enabled       xpath://*[@id="main"]/div[2]/div[4]/ol/li[1]/div/div[2]/div[2]/div/div/div[2]/div[1]/button
    Click Element                       xpath://*[@id="main"]/div[2]/div[4]/ol/li[1]/div/div[2]/div[2]/div/div/div[2]/div[1]/button
Go To The Checkout Page
    Wait Until Element Is Enabled       id:checkout
    Click Element                       checkout
Verify That The Soda Is In The Shopping Cart 
    Wait Until Element Is Enabled       xpath://*[@id="app"]/main/div/div/div[2]/div[2]/div/section/ul/li/div/div[2]/div[1]/div[1]/div[1]/span
    Element Should Contain              xpath://*[@id="app"]/main/div/div/div[2]/div[2]/div/section/ul/li/div/div[2]/div[1]/div[1]/div[1]/span      67252
Start Order  
    Click Element                       //span[text()='Seuraava']

#Write your own keywords here. 