*** Settings ***
Documentation      Bulk Upload Test Case
Library            SeleniumLibrary
Resource           ../resources/keywords.resource
Resource           ../resources/variables.resource

*** Test Cases ***
Valid Login        
    Open Browser To Login Page
    Set Screenshot Directory    ${SCREENSHOT_PATH}
    Wait Browser Load    
    Input Username    ${USER3}
    Input User Password    ${USER3 PASS}
    Submit Credentials
    Welcome Page Should Be Open
Bulk Upload Page
    Click hamburger menu
    Click iSupplier
    Click Suppliers
    Wait Browser Load
    Go to iSupplier portal
    Click AppXtend Button
    Click Bulk Upload Button
    Proceed to Buk Upload App
    
Bulk Upload Create
    Wait Browser Load
    Click Product Container
    Click Object Container
    Click Action Container
    Click Submit Button
    [Teardown]    Close Browser

