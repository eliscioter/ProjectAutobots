*** Settings ***
Library    SeleniumLibrary
Library    ../../venv/Lib/site-packages/robot/libraries/Dialogs.py

*** Variables ***
${event_name_input_xpath}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[1]/dew-col/dew-input-container[1]/dew-row/dew-col[2]/input
${event_desc_input_xpath}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[1]/dew-col/dew-input-container[2]/dew-row/dew-col[2]/textarea


*** Keywords ***
Add Event Name
    [Arguments]    ${event_name}
    Input Text    ${event_name_input_xpath}    ${event_name}

Add Event Description
    [Arguments]    ${event_desc}
    Input Text    ${event_desc_input_xpath}    ${event_desc}

Select Event Type
    [Arguments]    ${event_type}
    Click Element    ${event_type}