*** Settings ***
Library            SeleniumLibrary
Library            venv/Lib/site-packages/robot/libraries/Telnet.py
Resource           variables.resource

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Wait Browser Load
    Set Browser Implicit Wait    30 

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

Click Hamburger Menu
    Click Element    class=au--sideMenu

Click Module
    [Arguments]    ${module}
    Click Element  Xpath://li[@title='${module}']

Click Sub-module
    [Arguments]    ${sub_module}
    Click Element  //span[.//text() = '${sub_module}']
    Sleep    5

Verify Title
    [Arguments]    ${title}
    Wait Browser Load
    Title Should Be    ${title}
    # *alternative
    # ${page_title}    Get Title
    # IF    '${page_title}' != '${title}'
    #     Fail
    # END

Input Valid Login
    [Arguments]    ${SCREENSHOT_PATH}     ${EMAIL}    ${PASS}
    Open Browser To Login Page
    Set Screenshot Directory    ${SCREENSHOT_PATH}
    Wait Browser Load    
    Input Username    ${EMAIL}
    Input User Password    ${PASS}
    Submit Credentials
    Welcome Page Should Be Open