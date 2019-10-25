*** Settings ****
Library                                 SeleniumLibrary
Test Teardown                           Close All Browsers
***Test Cases***
Go To Google And Search For Robot Unicorn Pictures
    Go To Google
    Input Robot Unicorns To Search
    Make Sure You Can See Robot Unicorns


#Lets Buy Some Soda
#    Go To Verkkokauppa.com
#    Search For Vanilla Coke
#    Put The Product In To Shopping Cart
#    Go To The Checkout Page

#Go To Tori.fi And Find Cheapest Price For PlayStation 4



    

*** Keywords ***
####Unicorn Task Keywords #####
    
Go To Google
    Open Browser                        http://www.google.com                 chrome


Input Robot Unicorns To Search
    Wait Until Element Is Enabled       xpath:/html/body/div/div[4]/form/div[2]/div[1]/div[1]/div/div[2]/input
    Input Text                          xpath:/html/body/div/div[4]/form/div[2]/div[1]/div[1]/div/div[2]/input            Robot Unicorns
    Click Element                       xpath:/html/body/div/div[4]/form/div[2]/div[1]/div[3]/center/input[1]
    Wait Until Element Is Enabled       //*[@id="hdtb-msb-vis"]/div[2]/a
    Click Element                       //*[@id="hdtb-msb-vis"]/div[2]/a


Make Sure You Can See Robot Unicorns
    Capture Page Screenshot

####Verkkokauppa.com Task Keywords####
Go To Verkkokauppa.com

Search For Vanilla Coke
    
Put The Product In To Shopping Cart

Go To The Checkout Page


###Go To Tori.fi####
#Write your own keywords here. 