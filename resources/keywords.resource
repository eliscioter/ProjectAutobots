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

# *Test without pyautogui
Click Product Container
    Sleep    5
    # *This is for moving the focus to the appXtend modal
    Wait Until Element Is Visible    class=appxModal
    Select Frame    class=au--bulk-upload-app
    # *Open dropdown
    Click Element  xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[1]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    Sleep    5
    # *Click iSupplier
    Wait Until Element Is Visible    Xpath://div[@title='iSupplier']
    Click Element    Xpath://div[@title='iSupplier']
    Sleep    5

Click Object Container
    Click Element    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[2]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    Sleep    5
    Wait Until Element Is Visible    Xpath://div[@title='supplier']
    Click Element    Xpath://div[@title='supplier']

Click Action Container
    Click Element    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[3]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    Sleep    5
    Wait Until Element Is Visible    Xpath://div[@title='Create']
    Click Element    Xpath://div[@title='Create']
    Sleep    5

Click Submit Button
    Click Element    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[4]/dew-btn/button
    Sleep    5
