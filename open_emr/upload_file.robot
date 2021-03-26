*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1_Upload_File
    Append To Environment Variable    PATH    C:\\Projects\\EEA\\ATT\\eclipse_workspace\\Components
    Open Browser    https://www.naukri.com/    headlesschrome    
    Maximize Browser Window
    Log To Console    ${EXECDIR}  
    ${title}    Execute Javascript    document.title
    Log To Console    ${title}      
    Set Selenium Implicit Wait    5s
    Choose File    //*[@id="file_upload"]    C:\\Others\\Resume of Avijit Bhattacharya.doc
    Wait Until Page Contains    uploaded Successfully    50s    
    Page Should Contain    uploaded Successfully  
    Close Window  
   