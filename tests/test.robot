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
    # *Choose Product
    Wait Browser Load
    Move Focus Element
    Click Product
    Open Dropdown
    Navigate to iSupplier    ${2}
    Select iSupplier
    # *Choose Object
    Click Object
    Open Dropdown
    Navigate to Supplier    ${0}
    Select Supplier
    # *Choose Action
    Click Action
    Open Dropdown
    Navigate to Create    ${0}
    Select Create
    Click Submit
    [Teardown]    Close Browser

