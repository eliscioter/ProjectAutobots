*** Settings ***
Documentation    Normal Sourcing Scenario
Library          SeleniumLibrary
Library    ../keywords.resource
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

# Create New Sourcing Event
#     Click Button    ${create_event_btn_xpath}
#     Wait Until Element Is Visible    ${create_event_modal_xpath}
#     Add Event Name    Automated Test Event Name
#     Add Event Description    Automated Test Event Description
#     Select Event Type    ${chosen_event_type}
#     Click Element    ${create_submit_btn_xpath}

# ! This is just test
Go To Created Event
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/dew-listing/div[3]/dew-block/dew-block[1]/dew-row/dew-col[3]/dew-row[2]/dew-col/div/div/div/div/span
Edit Created Event
    Wait Browser Load
    Wait Until Element Is Visible    //*[@id="common_aditional_details"]/dew-flex/dew-flex-item[1]/div
    Element Should Contain    class=au--section-heading    Basic details
    Wait Until Element Is Visible    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div/div/div/ul/li[2]/a/div/dew-default-tab-head
    Sleep    10
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div/div/div/ul/li[2]/a/div/dew-default-tab-head
    Sleep    10
    Input Text     ${group_company_xpath}   SM
    Sleep    10
    Press Keys    None    ENTER
    Sleep    10
    # Business Unit
    Input Text    ${business_unit_xpath}    Ace Hardware
    Sleep    10
    Press Keys    None    ENTER
    Sleep    10
    # Click Element    ${ace_hardware_xpath}
    # Department
    Input Text    ${department_xpath}    business
    Sleep    5
    Press Keys    None    ENTER
    # Category
    Input Text    ${category_xpath}    tissue
    Sleep    5
    Press Keys    None    ENTER
    # Sourcing
    Input Text    ${sourcing_type_xpath}    normal
    Sleep    5
    Press Keys    None    ENTER
    # Other Details
    Input Text    ${pr_req_num_xpath}    TBD
    Input Text    ${budget_amount_xpath}    TBD
    Input Text    ${ref_date_xpath}    5/28/2024
    Input Text    ${justification_xpath}    TBD
    Sleep    10

Create Questionares
    Click Element     //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[3]/a/div/dew-default-tab-head
    Sleep    5
    Click Button    //*[@id="common_questionnaires"]/div/dew-section-body/isource-basic-questionnaires/dew-input-container/dew-row/dew-col[2]/dew-btn[1]/button
    Wait Browser Load
    Click Button    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-container/div/isource-sidenav/div/div[1]/dew-block/div[1]/dew-btn/button
    Sleep    5
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-container/div/isource-question-wrapper/dew-block/div/isource-section-wrapper/div/dew-row/dew-col[2]/div/dew-btn/button
    Sleep    5
    Click Button    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-container/div/isource-question-wrapper/dew-block/div/isource-section-wrapper/div/dew-row/dew-col[2]/div/dew-btn/button
    Sleep    5
    Wait Until Element Is Visible    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-container/dew-modal
    Sleep    5
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-container/dew-modal/div[2]/div/div[2]/dew-modal-body/div/ul/li[3]
    Sleep    5
    Wait Until Element Is Visible    //*[@id="qtnWrapper"]/div[1]
    Sleep    5
    Click Button    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-questionnaire-v2/isource-page-footer/dew-footer-actions/footer/div/div/dew-row/dew-col[2]/div/dew-btn/button
    Wait Browser Load
    Sleep    10
    [Teardown]    Close Browser    