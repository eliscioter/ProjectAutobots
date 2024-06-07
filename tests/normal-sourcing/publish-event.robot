*** Settings ***
Documentation    Normal Sourcing Scenario
Library          SeleniumLibrary
Library          ../../resources/variables.resource
Resource         ../resources/keywords.resource
Resource    ../resources/normal-sourcing/normal-sourcing-keywords.resource
Resource    ../resources/normal-sourcing/normal-sourcing-variables.resource

*** Test Cases ***
Valid Login
    Input Valid Login    ${NORMAL_SOURCING_SCREENSHOT_PATH}    ${USER2}    ${USER2 PASS}

Publish Event
    Click Hamburger Menu
    Click Module    iSource
    Click Sub-module    Full Source
    Wait Browser Load
    Verify Title    All Sourcing Events - iSource Portal
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/dew-listing/div[3]/dew-block/dew-block[1]/dew-row/dew-col[3]/dew-row[2]/dew-col/div/div/div/div/span
    Sleep    3
    Click Element    //*[@id="scrollId"]/dew-flex/div/div/dew-btn[3]
    Sleep    3
    Wait Browser Load
    Sleep    3
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-create-events-forms/div[2]/isource-event-publish/div/isource-email-template/dew-modal
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-create-events-forms/div[2]/isource-event-publish/div/isource-email-template/dew-modal/div[2]/div/div[3]/dew-modal-footer/dew-btn
    Wait Browser Load
    Sleep    3

View Supplier Response
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/dew-spotlight/div/div[3]/div[2]/div/isource-section-tabs/dew-listing-nav-tabs/dew-tabset/div/div[1]/div/div/dew-paginator/div/div[1]/div/div/ul/li[3]/a
    Wait Browser Load
    Sleep    3
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-manage-supplier/isource-common-manage-supplier/dew-page-content/dew-listing/div[3]/dew-block/dew-block/dew-row/dew-col[1]/dew-row[2]/dew-col/dew-checkbox
    Sleep    3
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-manage-supplier/isource-common-manage-supplier/dew-page-content/dew-listing/div[1]/div[2]/div[3]/dew-listing-create/dew-btn[4]
    Sleep    3
    [Teardown]    Close Browser    