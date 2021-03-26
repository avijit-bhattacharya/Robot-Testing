*** Settings ***
Library    DateTime    
Library    SeleniumLibrary 
Library    OperatingSystem       

*** Test Cases ***
TC1_Open_Page
    Append To Environment Variable    PATH    C:\\Projects\\EEA\\ATT\\eclipse_workspace\\Components
    Open Browser    https://magento.com/    ff
    Maximize Browser Window
    Click Element    link=My Account 
    Input Text    id=email    balaji0017@gmail.com
    Input Password    id=pass    balaji@12345
    Click Element    name=send
    Title Should Be    My Account
    Click Element    link=Log Out
    Close Window                   