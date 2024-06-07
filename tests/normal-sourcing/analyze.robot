*** Settings ***
Documentation    Normal Sourcing Scenario
Library          SeleniumLibrary
Library          ../../resources/variables.resource
Resource           ../../resources/keywords.resource
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

Perform Analysis
    # Analyze button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/dew-spotlight/div/div[3]/div[2]/div/isource-section-tabs/dew-listing-nav-tabs/dew-tabset/div/div[1]/div/div/dew-paginator/div/div[1]/div/div/ul/li[4]/a
    Sleep    5
    # Analyze button under 360 degree analysis
    Wait Until Element Is Visible    //*[@id="analysis360"]/dew-section/div/dew-section-body/div/isource-analysis360-degree/dew-row/dew-col/dew-table/div/div/div/div/div/div/table/tbody/tr/td[7]/dew-actions-menu/div/div/div/span/div/span
    Click Element    //*[@id="analysis360"]/dew-section/div/dew-section-body/div/isource-analysis360-degree/dew-row/dew-col/dew-table/div/div/div/div/div/div/table/tbody/tr/td[7]/dew-actions-menu/div/div/div/span/div/span
    Wait Browser Load
    Sleep    5
    # Cancel button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-level/div/isource-event-level-supplier/dew-section/div/dew-section-body/isource-event-section-suppliers/dew-footer-actions/footer/div/dew-footer-action/dew-btn
    Sleep    5
    Wait Browser Load
    # Click Pricing Analysis
    Wait Until Element Is Visible    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div/div/div/ul/li[2]/a/div/dew-default-tab-head
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div/div/div/ul/li[2]/a/div/dew-default-tab-head
    Sleep    5
    # Click Analyze for cherry picking
    Click Element    //*[@id="pricing"]/dew-section/div/dew-section-body/div/isource-pricing-analysis/dew-view-all/dew-listing/div[2]/dew-block/dew-block/dew-row/dew-col[7]/dew-row[2]/dew-col/div/div/a
    Wait Browser Load
    Sleep    5
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-pricing-senario/dew-page-content/dew-footer-actions/footer/div/dew-footer-action/dew-btn
    Wait Browser Load
    Sleep    5

Awarding
     # Analyze button under 360 degree analysis
    Wait Until Element Is Visible    //*[@id="analysis360"]/dew-section/div/dew-section-body/div/isource-analysis360-degree/dew-row/dew-col/dew-table/div/div/div/div/div/div/table/tbody/tr/td[7]/dew-actions-menu/div/div/div/span/div/span
    Click Element    //*[@id="analysis360"]/dew-section/div/dew-section-body/div/isource-analysis360-degree/dew-row/dew-col/dew-table/div/div/div/div/div/div/table/tbody/tr/td[7]/dew-actions-menu/div/div/div/span/div/span
    Wait Browser Load
    Sleep    5
    # Checkbox supplier
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-level/div/isource-event-level-supplier/dew-section/div/dew-section-body/isource-event-section-suppliers/dew-block/dew-block/dew-row/dew-col[2]/dew-swiper/div/div[1]/div/div/div/div[1]/dew-row/dew-col[1]/dew-icon
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-level/div/isource-event-level-supplier/dew-section/div/dew-section-body/isource-event-section-suppliers/dew-block/dew-block/dew-row/dew-col[2]/dew-swiper/div/div[1]/div/div/div/div[1]/dew-row/dew-col[1]/dew-icon
    Wait Browser Load
    Sleep    5
    # Award event button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-level/div/isource-event-level-supplier/dew-section/div/dew-section-body/isource-event-section-suppliers/dew-footer-actions/footer/div/dew-flex-item/dew-footer-action/dew-btn
    Wait Browser Load
    Sleep    5
    # Save and go to workflow button
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-award-summary-form/dew-page-content/form/dew-anchor-tabs/dew-tabset/div/div[2]/div/dew-flex/div/div/dew-btn
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-award-summary-form/dew-page-content/form/dew-anchor-tabs/dew-tabset/div/div[2]/div/dew-flex/div/div/dew-btn
    Wait Browser Load
    Sleep    5
    # Send for approval button
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-workflows/dew-row/dew-col/dew-footer-actions/footer/div/dew-footer-action[1]/dew-btn
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-workflows/dew-row/dew-col/dew-footer-actions/footer/div/dew-footer-action[1]/dew-btn
    Wait Browser Load
    Sleep    5
    # Comment text area for sending approval
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-workflows/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-input-container/textarea
    Input Text    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-workflows/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-input-container/textarea    Congratulations
    Sleep    5
    # Send for approval button final
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-event-workflows/dew-modal/div[2]/div/div[3]/dew-modal-footer/dew-btn/button/div/span
    Sleep    10
    [Teardown]    Close Browser