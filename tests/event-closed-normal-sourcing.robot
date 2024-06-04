*** Settings ***
Documentation    Normal Sourcing Scenario
Library          SeleniumLibrary
Library          ../resources/variables.resource
Library    ../python/select_dropdown.py
Resource         ../resources/keywords.resource
Resource    ../resources/normal-sourcing/normal-sourcing-keywords.resource
Resource    ../resources/normal-sourcing/normal-sourcing-variables.resource

*** Test Cases ***
Valid Login
    Input Valid Login    ${NORMAL_SOURCING_SCREENSHOT_PATH}    ${USER2}    ${USER2 PASS}

Full Source Page
    Click Hamburger Menu
    Click Module    iSource
    Click Sub-module    Full Source
    Wait Browser Load
    Verify Title    All Sourcing Events - iSource Portal

Go To Created Event
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/dew-listing/div[3]/dew-block/dew-block[1]/dew-row/dew-col[3]/dew-row[2]/dew-col/div/div/div/div/span
    Wait Browser Load
    Sleep    5

Analysis Negotiate
# * Uncomment when new event is created
    # Move to analysis
    # Click Element    //*[@id="scrollId"]/dew-page-content/form/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn[2]
    # Sleep    5
    # # Yes to move analysis button
    # Wait Until Element Is Visible    //*[@id="cdk-overlay-1"]/dew-confirm/div[2]/div/div/dew-btn[2]
    # Click Element    //*[@id="cdk-overlay-1"]/dew-confirm/div[2]/div/div/dew-btn[2]
    # Wait Browser Load
    # Sleep    5
    # Manage Supplier
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/dew-spotlight/div/div[3]/div[2]/div/isource-section-tabs/dew-listing-nav-tabs/dew-tabset/div/div[1]/div/div/dew-paginator/div/div[1]/div/div/ul/li[3]/a
    Sleep    5
    # Negotiate Button
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-manage-supplier/isource-analyze-negotiate-manage-supplier/div/dew-block/dew-block/dew-listing/div[3]/dew-block/dew-block/dew-row[2]/dew-col[3]/dew-row/dew-col/dew-actions-menu/div/div[1]/div/span/div
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-manage-supplier/isource-analyze-negotiate-manage-supplier/div/dew-block/dew-block/dew-listing/div[3]/dew-block/dew-block/dew-row[2]/dew-col[3]/dew-row/dew-col/dew-actions-menu/div/div[1]/div/span/div
    Wait Browser Load
    Sleep    5
    # Request Offer button
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-negotiation-manage-supplier/dew-row/dew-col[2]/dew-btn[2]
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-negotiation-manage-supplier/dew-row/dew-col[2]/dew-btn[2]
    Wait Browser Load
    # Download Bid button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-negotiation-manage-supplier/dew-listing/div[3]/dew-block/dew-block/dew-row/dew-col[8]/dew-row[2]/dew-col/a
    Wait Browser Load
    Sleep    10
    [Teardown]    Close Browser