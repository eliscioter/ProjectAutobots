
*** Variables ***
# *XPaths
${create_event_btn_xpath}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/dew-listing/div[1]/div[2]/div[3]/dew-listing-create/dew-btn/button
${create_event_modal_xpath}     //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal

# *Choices for Event type
${rfi}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[2]/dew-col/dew-input-container/div[2]
${rfp}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[2]/dew-col/dew-input-container/div[2]
${rfq}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[2]/dew-col/dew-input-container/div[2]
${auction}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[3]/dew-modal-body/div/div/div/div/dew-row[2]/dew-col/dew-input-container/div[2]

# *To Chose Event Type
${chosen_event_type}    ${rfi}

${create_submit_btn_xpath}    //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/isource-home/dew-page-wrapper/div/div/dew-page-content/isource-events-list/isource-create-event/dew-modal/div[2]/div/div[4]/dew-modal-footer/div/div[2]/dew-btn/button

# *Addtional Details Section
# *Group Company dropdown
${group_company_xpath}    //*[@id="common_aditional_details"]/div/dew-section-body[1]/isource-additional-details/dew-row/dew-col[1]/dew-input-container/div[2]/dew-elmdfield-autocomplete/div/input
# !Change xpath to desired group company
${sm_retail_xpath}    //*[@id="cdk-overlay-8"]/div/div/div[2]

# *Business Unit dropdown
${business_unit_xpath}    //*[@id="common_aditional_details"]/div/dew-section-body[1]/isource-additional-details/dew-row/dew-col[2]/dew-input-container/div[2]/dew-elmdfield-autocomplete/div/input
# !Change xpath to desired business unit
${ace_hardware_xpath}    //*[@id="cdk-overlay-9"]/div/div/div[3]

# *Department dropdown
${department_xpath}    //*[@id="common_aditional_details"]/div/dew-section-body[1]/isource-additional-details/dew-row/dew-col[3]/dew-input-container/div[2]/dew-elmdfield-autocomplete/div/input
# !Change xpath to desired department
${fas_business_xpath}    //*[@id="cdk-overlay-10"]/div/div/div[6]

# *Category dropdown
${category_xpath}    //*[@id="common_aditional_details"]/div/dew-section-body[1]/isource-additional-details/dew-row/dew-col[4]/dew-input-container/div[2]/dew-elmdfield-autocomplete/div/input
# !Change xpath to desired category
${pest_control_xpath}    //*[@id="cdk-overlay-11"]/div/div/div[2]

# *Sourcing type dropdown
${sourcing_type_xpath}    //*[@id="common_aditional_details"]/div/dew-section-body[1]/isource-additional-details/dew-row/dew-col[5]/dew-input-container/div[2]/dew-elmdfield-autocomplete/div/input
# !Change xpath to desired sourcing type
${normal_xpath}    //*[@id="cdk-overlay-12"]/div/div/div[3]

# *PR/Service Request number
${pr_req_num_xpath}    //*[@id="df_24_7_2020_18_46_45_3_1qspw1pav"]/input
${budget_amount_xpath}    //*[@id="df_24_7_2020_18_47_50_752_vs6fzq0mm"]/input
${ref_date_xpath}    //*[@id="df_12_3_2023_12_9_37_7_e27ku0mk4"]/div/input
${justification_xpath}    //*[@id="df_24_7_2020_18_46_56_375_fxm0c4xew"]/textarea
