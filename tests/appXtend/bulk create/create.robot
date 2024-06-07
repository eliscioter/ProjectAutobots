*** Settings ***
Documentation      Bulk Upload Test Case
Library            SeleniumLibrary
Resource           ../resources/appXtend/appXtend-keywords.resource
Resource           ../resources/variables.resource
Resource           ../resources/keywords.resource

*** Test Cases ***
Valid Login        
    Input Valid Login    ${BULK_UPLOAD_SCREENSHOT_PATH}    ${USER1}    ${USER1 PASS}
Bulk Upload Page
    Click Hamburger Menu
    Click Module    iSupplier
    Click Sub-module    Suppliers
    Wait Browser Load
    Verify Title    Suppliers - iSupplier Portal
    Click AppXtend Button
    Click Bulk Upload Button
    Proceed to Bulk Upload App
    
Bulk Upload Create
    Wait Browser Load
    Click Product Container
    Click Object Container
    Click Action Container
    Click Submit Button
    [Teardown]    Close Browser
    
# ! Download Upload Templated Not working, yet. 
# TODO: Move Close Browser once resolved
# Download Upload Templates
#     Click Download Bulk Upload Template Button
#     Verify Downloaded Template File    ${FILENAME}
#     Upload Downloaded Template File

