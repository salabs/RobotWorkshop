*** Settings ****
Library                                 SeleniumLibrary
Test Teardown                           Close All Browsers

Suite Setup                             Log         In Setup

***Test Cases***
First Test
    #Starts from here
    Log                                 My First Test

#Lets Buy Some Soda
#    Go To Verkkokauppa.com
#    Search For Vanilla Coke
#    Put The Product In To Shopping Cart
#    Go To The Checkout Page
#    Verify That The Soda Is In The Shopping Cart
#    Start Order

#Find Videos From Youtube
#    Go To Youtube
#    Search For Mandalorian Videos
#    Confirm Video with Screenshot


*** Keywords ***
####Verkkokauppa.com Task Keywords####
Go To Verkkokauppa.com
    #Open browser and go to www.verkkokauppa.com
    #https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser <- info how to open browser here!
    #REMEMBER TO USE CHROME! 
    Set Selenium Speed                  0.5
    Click Button                        name:allow-cookies
    #Your keywords here

Search For Vanilla Coke
    #Search for 
    Wait Until Element Is Enabled       xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/input[1]
    Input Text                          
    Wait Until Element Is Enabled       xpath://*[@id="app"]/div/div[1]/header/div/nav/form/div/button[2]
    Click Element                       
Put The Product In To Shopping Cart
    #

Go To The Checkout Page
    Wait Until Element Is Enabled       id:

Verify That The Soda Is In The Shopping Cart 
    #

Start Order  
    #Go forward with your order by clicking "seuraava"

### Youtube Keywords ###
Go To Youtube
    #
    Maximize Browser Window

Search For ${search} Videos
    #
    #If inputting text to youtube use 'clear=False'
    #
    #
    Wait Until Page Contains Element    id:mouseover-overlay
    Press Keys                          None                    '\ue004'            # <= TAB   
    Press Keys                          None                    '\ue007'            # <= ENTER
Confirm Video with Screenshot
    Sleep   15
    #Ota Screenshot


#Write your own keywords here. 