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

Add Event Name
    Sleep    5
    # Click Create Event
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-quicksource-list/dew-listing/div[1]/div[2]/div[3]
    Sleep    5

Fill Out Item Details
    ${value}=     Get Element Attribute   //*[@id="primaryCurrencyInputContainer"]/input      value
    ${backspaces count}=    Get Length      ${value}
    Run Keyword If    """${value}""" != ''    # if there's no current value - no need to slow down by an extra SE call
    ...     Repeat Keyword  ${backspaces count +1}  Press Key  //*[@id="primaryCurrencyInputContainer"]/input     \\08
    # Clear Element Text    //*[@id="primaryCurrencyInputContainer"]/input
    Sleep    5
    # Input event name
    Input Text    //*[@id="primaryCurrencyInputContainer"]/input    Automated Quick Source
    Sleep    5
    # Click test event
    Click Element    //*[@id="common_item_details"]/div/dew-section-body/dew-row[4]/dew-col[1]/dew-input-container/dew-row/dew-col/dew-checkbox
    Sleep    5
    # Input Description
    Input Text    //*[@id="common_description_0"]    Automated test
    Sleep    5
    # Input Quantity
    Input Text    //*[@id="common_quantity_0"]    2
    Sleep    5
    # Input UOM
    Input Text    //*[@id="common_item_details"]/div/dew-section-body/dew-list-view/dew-block/dew-block/dew-row[2]/dew-col[2]/div/div/dew-row/dew-col[3]/input    TBD
    Sleep    5
    # Input Current price
    Input Text    //*[@id="common_currentPrice_0"]    50
    Sleep    5
    # Click + icon
    # Click Element    //*[@id="common_item_details"]/div/dew-section-body/dew-list-view/dew-block/dew-block/dew-row[2]/dew-col[3]/div/dew-row/dew-col/div
    # Sleep    5

Fill Out Additional Details
    # Click Additional details tab
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[2]/a/div/dew-default-tab-head
    Sleep    5
    # Click group company container
    Wait Until Element Is Visible    //*[@id="DFSECTION_21_9_2020_12_12_0_803_nr4qmir8u"]/div[2]/dew-row/dew-col[1]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Click Element    //*[@id="DFSECTION_21_9_2020_12_12_0_803_nr4qmir8u"]/div[2]/dew-row/dew-col[1]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # Click sm retail from the dropdown
    Click Element    //*[@id="cdk-overlay-2"]/div/div/div[1]
    # Input SM Retail to group company
    # Wait Until Element Is Visible    id=flexiform_06oz2
    # Input Text    id=flexiform_06oz2    sm retail
    Sleep    5
    # Press Keys    None    ENTER
    Wait Browser Load
    Sleep    5
    # Click Business Unit container
    Click Element    //*[@id="DFSECTION_21_9_2020_12_12_0_803_nr4qmir8u"]/div[2]/dew-row/dew-col[2]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # Click ace from the dropdown
    Click Element    //*[@id="cdk-overlay-3"]/div/div/div[2]
    # Input ace
    # Input Text    xpath=//input[@id='flexiform_pgr6k']    ace
    # Sleep    5
    # Press Keys    None    ENTER
    Wait Browser Load
    Sleep    5
    # Click department container
    Click Element    //*[@id="DFSECTION_21_9_2020_12_12_0_803_nr4qmir8u"]/div[2]/dew-row/dew-col[3]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # Click IT from the dropdown
    Click Element    //*[@id="cdk-overlay-4"]/div/div/div[3]
    # Input manpower
    # Input Text    xpath=//input[@id='flexiform_3ugif']    manpower
    # Sleep    5
    # Press Keys    None    ENTER
    Wait Browser Load
    Sleep    5
    # Click category container
    Click Element    //*[@id="DFSECTION_21_9_2020_12_12_0_803_nr4qmir8u"]/div[2]/dew-row/dew-col[4]/ffdew-dropdown/div/div/dew-input-container/div[2]
    Sleep    5
    # Click thread
    Click Element    //*[@id="cdk-overlay-5"]/div/div/div[4]
    # Input thread
    # Input Text   xpath=//input[@id='flexiform_i0x67']    thread
    # Sleep    5
    # Press Keys    None    ENTER
    Wait Browser Load
    Sleep    5

Add Questions
    # Click Question tab
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[3]/a/div/dew-default-tab-head
    Sleep    5
    # Input into first question
    Input Text    //*[@id="common_questions_0"]    How are you?
    Sleep    5
    # Click + icon more added question
    # Click Element    //*[@id="common_questions"]/div/dew-section-body/dew-input-container/dew-list-view/dew-block/dew-block/dew-row[2]/dew-col/div/dew-row/dew-col[3]/div
    # Sleep    5

Add Supplier
    # Click Add Suppliers tab
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[4]/a/div/dew-default-tab-head
    Sleep    5
    # Click input suppliers 
    Click Element    //*[@id="add_supplier"]/dew-input-container/dew-row[1]/dew-col/dew-multi-select-supplier/dew-row/div[2]
    Sleep    5
    # Input test company10
    Input Text    //*[@id="add_supplier"]/dew-input-container/dew-row[1]/dew-col/dew-multi-select-supplier/dew-row/div[2]/input    test company10
    Sleep    5
    Press Keys    None    ENTER
    Sleep    5
    # Click done button
    Wait Until Element Is Visible    //*[@id="cdk-overlay-6"]/div/div[4]/dew-btn/button
    Wait Until Element Is Enabled    //*[@id="cdk-overlay-6"]/div/div[4]/dew-btn/button
    Click Button    //*[@id="cdk-overlay-6"]/div/div[4]/dew-btn/button
    Sleep    5

Add Date
    # opening message supplier
    Input Text    //*[@id="common_suppliers"]/div/dew-section-body/dew-input-container/dew-row[1]/dew-col/textarea    TBD
    Sleep    5
    # Click date container
    # Click Element    //*[@id="date_error"]/div
    # Sleep    5
    Input Text    //*[@id="date_error"]/div/input    6/5/2024500

Attached Documents
    # ! For now, clicking the Attachments tab is done
    Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[5]/a/div/dew-default-tab-head
    Sleep    5

# Search for Collaborators
    # # Click Collaborators tab
    # Click Element    //*[@id="stickytabs-errpanel-position"]/div/div/dew-paginator/div/div[1]/div/div/ul/li[6]/a/div/dew-default-tab-head
    # Sleep    5
    # # Click collaborators input container
    # Click Element    //*[@id="common_collaborator"]/div/dew-section-body/quicksource-add-collaborator/dew-input-container/dew-row[1]/dew-col/dew-multi-select-supplier/dew-row/div[2]
    # Sleep    5
    # # Input test test
    # Input Text    //*[@id="common_collaborator"]/div/dew-section-body/quicksource-add-collaborator/dew-input-container/dew-row[1]/dew-col/dew-multi-select-supplier/dew-row/div[2]/input    test test
    # Sleep    5
    # Press Keys    None    ENTER
    # # Click Done button
    # Wait Until Element Is Visible    //*[@id="cdk-overlay-2"]/div/div[3]/dew-btn
    # Wait Until Element Is Visible    //*[@id="cdk-overlay-7"]/div/div[3]/dew-btn/button
    # Wait Until Element Is Enabled    //*[@id="cdk-overlay-7"]/div/div[3]/dew-btn/button
    # Click Button    //*[@id="cdk-overlay-7"]/div/div[3]/dew-btn/button
    # Sleep    20

Hit Send
    # Click the Send Button
    Click Element    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-quicksource-event-details/dew-page-wrapper/div/div/dew-page-content/isource-create/dew-page-content/form/dew-footer-actions/footer/div/div/div/dew-btn[2]
    Sleep    5


