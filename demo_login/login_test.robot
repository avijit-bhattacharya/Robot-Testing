*** Settings ***
Library    DateTime    

*** Test Cases ***
TC1_valid_login
    Log To Console    avijit    
    Log To Console    Welcome to Robot Training   
    
TC2_Get_Date
    ${date}    Get Current Date
    Log To Console    ${date}
    ${name}    Set Variable    avjit b
    Log To Console    ${name}            
     