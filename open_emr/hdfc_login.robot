*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_Open_EMR_Login
    Append To Environment Variable    PATH    C:\\Projects\\EEA\\ATT\\eclipse_workspace\\Components
    Open Browser    https://netbanking.hdfcbank.com/netbanking/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Select Frame    name=login_page
    Click Element    xpath=//input[@name="fldLoginUserId"] 
    Input Text    name=fldLoginUserId    admin123
    Click Element    xpath=//a[@onclick='return fLogon();']
    Unselect Frame
   
    