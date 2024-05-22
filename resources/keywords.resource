*** Settings ***
Library            SeleniumLibrary
Library            venv/Lib/site-packages/robot/libraries/Telnet.py
Library            python/select_dropdown.py
Resource           variables.resource

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Wait Browser Load
    Set Browser Implicit Wait    20 

Input Username
    [Arguments]    ${username}
    Input Text  class=au--username    ${username}

Input User Password
    [Arguments]    ${password}
    Input Text    class=au--password    ${password}

Submit Credentials
    Click Button    class=action

Welcome Page Should Be Open
    Element Should Contain    class=au--welcome  What would you like to do today?

Click hamburger menu
    Click Element    class=au--sideMenu

Click iSupplier
    Click Element  Xpath://li[@title='iSupplier']

Click Suppliers
     Click Element  //span[.//text() = 'Suppliers']

Go to iSupplier portal
    Sleep    10
    Title Should Be    Suppliers - iSupplier Portal

Click AppXtend Button
    Click Element    class=appxbtn

Click Bulk Upload Button
    Click Element    class=manifestContainer

Proceed to Buk Upload App
    Element Should Contain    class=appxtend-bold-appname     Bulk Upload App

# *Choose Product
Move Focus Element 
    Press Keys    None    TAB
    Sleep    3

Click Product
    Press Keys    None    TAB
    Sleep    3

Open Dropdown
    Press Keys    None    ENTER
    Sleep    3

Navigate to iSupplier
    [Arguments]    ${index}
    press_arrow_down_key    ${index}
    Sleep    3

Select iSupplier
    Press Keys    None    ENTER
    Sleep    3

# *Choose Object
Click Object
    Press Keys    None    TAB
    Sleep    3

# *Open dropdown

Navigate to Supplier
    [Arguments]    ${index}
    press_arrow_down_key    ${index}
    Sleep    3

Select Supplier
    Press Keys    None    ENTER
    Sleep    3

# *Choose Action
Click Action
    Press Keys    None    TAB
    Sleep    3

# *Open dropdown

Navigate to Create
    [Arguments]    ${index}
    press_arrow_down_key    ${index}
    Sleep    3

Select Create
    Press Keys    None    ENTER
    Sleep    3

Click Submit
    Press Keys    None    TAB
    Sleep    3
    Press Keys    None    ENTER
    Sleep    10