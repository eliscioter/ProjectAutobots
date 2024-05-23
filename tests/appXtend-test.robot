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
    Input Username    ${USER1}
    Input User Password    ${USER1 PASS}
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
    Proceed to Bulk Upload App
    
Bulk Upload Create
    Wait Browser Load
    Click Product Container
    Click Object Container
    Click Action Container
    Click Submit Button

Download Upload Templates
    Click Download Bulk Upload Template Button
    Verify Downloaded Template File    ${FILENAME}
    Upload Downloaded Template File
    [Teardown]    Close Browser

