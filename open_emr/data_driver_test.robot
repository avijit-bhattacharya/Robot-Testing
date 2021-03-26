*** Settings ***
Library    DataDriver     file=../testdata/Robot_Test_Data.xlsx    sheet_name=Values   
Test Template    Check_values
*** Test Cases ***
TC1    ${value}
    
*** Keywords ***
Check_values
    [Arguments]    ${value}
    Set Local Variable    ${var}    ${value}
    
    Log To Console    ${var}        
