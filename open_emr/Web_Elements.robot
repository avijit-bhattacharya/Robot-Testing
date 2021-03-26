*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_Open_EMR_Login
    Append To Environment Variable    PATH    C:\\Projects\\EEA\\ATT\\eclipse_workspace\\Components
    Open Browser    https://www.google.com/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    ${element}    Get WebElements    //a
    Log To Console    ${element}
    ${count}    Get Element Count    //a
    Log To Console    ${count}
    FOR    ${i}    IN RANGE    0    ${count}
        ${text}    Get Text    ${element}[${i}]
        ${href}    Get Element Attribute    ${element}[${i}]    href
        Log To Console    ${text}
        Log To Console    ${href}
    END
    Close Browser    