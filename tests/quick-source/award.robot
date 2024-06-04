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

Award Event
    # Click got to responses
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-view-quicksource-event/dew-page-content/dew-footer-actions/footer/div/div/div/dew-btn