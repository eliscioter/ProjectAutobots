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

Send For Approval
     # Click go to responses
     Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-view-quicksource-event/dew-page-content/dew-footer-actions/footer/div/div/div/dew-btn[2]/button
    Click Button    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-view-quicksource-event/dew-page-content/dew-footer-actions/footer/div/div/div/dew-btn[2]/button
    Wait Browser Load
    Sleep    5
    # click save and go to workflow
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-quick-source-view-responses/div/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn[2]
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-quick-source-view-responses/div/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn[2]
    Sleep    5
    # Click send for approval
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/quicksource-workflow/dew-row/dew-col/dew-footer-actions/footer/div/dew-footer-action/dew-btn
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/quicksource-workflow/dew-row/dew-col/dew-footer-actions/footer/div/dew-footer-action/dew-btn
    Sleep    5
    # type in textarea
    Input Text    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/quicksource-workflow/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-input-container/textarea    Good
    Sleep    5
    # Click send
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/quicksource-workflow/dew-modal/div[2]/div/div[3]/dew-modal-footer/dew-btn
    Sleep    10