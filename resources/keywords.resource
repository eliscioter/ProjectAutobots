*** Settings ***
Library            SeleniumLibrary
Library            venv/Lib/site-packages/robot/libraries/Telnet.py
Resource           variables.resource
Library            ../python/check_downloads.py

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
     Sleep    5

Go to iSupplier portal
    Sleep    10
    Title Should Be    Suppliers - iSupplier Portal

Click AppXtend Button
    Click Element    class=appxbtn

Click Bulk Upload Button
    Click Element    class=manifestContainer

Proceed to Bulk Upload App
    Element Should Contain    class=appxtend-bold-appname     Bulk Upload App

# *Test without pyautogui
Click Product Container
    # *This is for moving the focus to the appXtend modal
    Wait Until Element Is Visible    class=appxModal
    Select Frame    class=au--bulk-upload-app
    # *Open dropdown
    Click Element  xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[1]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    # *Click iSupplier
    Wait Until Element Is Visible    Xpath://div[@title='iSupplier']
    Click Element    Xpath://div[@title='iSupplier']

Click Object Container
    Click Element    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[2]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    Wait Until Element Is Visible    Xpath://div[@title='supplier']
    Click Element    Xpath://div[@title='supplier']

Click Action Container
    Click Element    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[3]/dew-select/dew-dropdown/div/div/dew-dropdown-trigger
    Wait Until Element Is Visible    Xpath://div[@title='Create']
    Click Element    Xpath://div[@title='Create']

Click Submit Button
    Click Button    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div/product-selection/div/dew-row/dew-col[4]/dew-btn/button

Click Download Bulk Upload Template Button
    Click Button    xpath=/html/body/app-root/div/app-root/div/app-root/div/eproc-create/div/div[2]/data-template/dew-block/div/div/dew-attachment/dew-view-attachments/div/div/div/div[2]/dew-btn/button
    Sleep    20

Verify Downloaded Template File
    [Arguments]    ${filename}
    ${result} =  verify_downloaded_file  ${filename}
    Should Be Equal  ${result}  ${True}

# ! Not working yet
Upload Downloaded Template File
    Choose File   //*[@id="file"]/dew-file-upload/div/input[1]    C:\Users\ojt.it.zycus\Downloads\Historical Bulk Upload Template_143_AppX (10).xlsx
    Sleep    30