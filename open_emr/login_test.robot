*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_Open_EMR_Login
    Append To Environment Variable    PATH    C:\\Projects\\EEA\\ATT\\eclipse_workspace\\Components
    Open Browser    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    gc
    Maximize Browser Window
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@class="btn btn-login btn-lg"]    
    #//button[@type="submit"]     
    Title Should Be    OpenEMR
    Page Should Contain    Calendar 
    Mouse Over    xpath=//span[@data-bind="text:fname"]
    Click Element    xpath=//li[@data-bind="click: logout"]    
    Close Window    