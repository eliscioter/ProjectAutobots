*** Settings ***
Documentation    Add event name
Library    SeleniumLibrary
Library    ../../venv/Lib/site-packages/robot/libraries/XML.py
Library    ../../python/select_dropdown.py
Resource    ../../resources/variables.resource
Resource    ../../resources/keywords.resource

*** Test Cases ***
Valid Login
    Input Valid Login    ${QUICK_SOURCE_SCREENSHOT_PATH}    ${USER1}    ${USER1 PASS}

Go To Quick Source
    Click Hamburger Menu
    Click Module    iSource
    Click Sub-module    Quick Source
    Wait Browser Load
    Verify Title    All Sourcing Events - iSource Portal

Go To Event
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-quicksource-list/dew-listing/div[3]/dew-block/dew-block[1]/dew-row/dew-col[2]/dew-row[2]/dew-col/div/div/div/div/a
    Wait Browser Load
    Sleep    5

Save and Go To Workflow
    # Click go to responses
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-view-quicksource-event/dew-page-content/dew-footer-actions/footer/div/div/div/dew-btn[2]/button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-view-quicksource-event/dew-page-content/dew-footer-actions/footer/div/div/div/dew-btn[2]/button
    Wait Browser Load
    Sleep    5
    # Click checkbox
    Wait Until Element Is Visible    css=.checkbox-disable:nth-child(1) > .w-100
    Click Element    css=.checkbox-disable:nth-child(1) > .w-100
    Sleep    5
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div/div/div/ul/li[2]/a/div/dew-default-tab-head
    Sleep    5
    # Click group company
    Click Element    //*[@id="DFSECTION_21_9_2020_12_15_40_593_bidw0enz2"]/div[3]/dew-row/dew-col[1]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # select sm retail
    Wait Until Element Is Visible    //*[@id="cdk-overlay-1"]/div/div/div[1]
    Click Element    //*[@id="cdk-overlay-1"]/div/div/div[1]
    Sleep    5
    # CLick business unit
    Click Element    //*[@id="DFSECTION_21_9_2020_12_15_40_593_bidw0enz2"]/div[3]/dew-row/dew-col[2]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # select ace
    Wait Until Element Is Visible    //*[@id="cdk-overlay-2"]/div/div/div[2]
    Click Element    //*[@id="cdk-overlay-2"]/div/div/div[2]
    Sleep    5
    # click department
    Click Element    //*[@id="DFSECTION_21_9_2020_12_15_40_593_bidw0enz2"]/div[3]/dew-row/dew-col[3]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    Wait Until Element Is Visible    //*[@id="cdk-overlay-3"]/div/div/div[3]
    Click Element    //*[@id="cdk-overlay-3"]/div/div/div[3]
    Sleep    5
    # click category
    Click Element    //*[@id="DFSECTION_21_9_2020_12_15_40_593_bidw0enz2"]/div[3]/dew-row/dew-col[4]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # select thread
    Wait Until Element Is Visible    //*[@id="cdk-overlay-4"]/div/div/div[4]
    Click Element    //*[@id="cdk-overlay-4"]/div/div/div[4]
    Sleep    5
    # Click save and go to workflow
    Wait Until Element Is Enabled    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-quick-source-view-responses/div/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn[2]
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-quick-source-view-responses/div/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn[2]
    Sleep    5
