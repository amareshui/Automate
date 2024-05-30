*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/GroupType_var.robot

*** Keywords ***
Open Web & Input for login
    Open Browser                           ${url}                                ${browser}
    Maximize Browser Window
    Set Selenium Speed                     0.5s
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard
    Sleep                                  1s

Check Group Type Page
    Click Element                          ${locator_menu_vehicle}
    # Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_grouptype}
    Click Element                          ${locator_menu_grouptype}
    Wait Until Element Is Visible          ${locator_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_grouptype_table}
    Wait Until Element Is Visible          ${locator_grouptype_btn_create}
    Wait Until Element Is Visible          ${locator_grouptype_export}

Check Create Group Type Page
    Click Element                          ${locator_grouptype_btn_create}
    Wait Until Element Is Visible          ${locator_create_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_create_grouptype_name}
    Wait Until Element Is Visible          ${locator_create_grouptype_capacity}
    Click Element                          ${locator_create_grouptype_cancel}
    Wait Until Element Is Visible          ${locator_grouptype_table}
    Click Element                          ${locator_grouptype_btn_create}
    Wait Until Element Is Visible          ${locator_create_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_create_grouptype_name}
    Wait Until Element Is Visible          ${locator_create_grouptype_capacity}
    Mouse Over                             ${locator_create_grouptype_capacity}
    Wait Until Element Is Visible          ${locator_create_grouptype_capacity_minus}
    Wait Until Element Is Visible          ${locator_create_grouptype_capacity_plus}
    Click Element                          ${locator_create_grouptype_capacity_minus}

Input Data In Create Group Type
    [Arguments]                            ${grouptype_name}                 ${capacity}          ${guide} 
    Input Text                             ${locator_create_grouptype_name}               ${grouptype_name}
    Input Text                             ${locator_create_grouptype_capacity}           ${capacity}
    Input Text                             ${locator_create_grouptype_guide}              ${guide}
    ${capacity}                            Get Element Attribute             ${locator_create_grouptype_capacity}   value
    ${guide}                               Get Element Attribute             ${locator_create_grouptype_guide}      value
    ${recommend}                           Evaluate                          ${capacity}-3
    ${result}                              Evaluate                          ${capacity} - ${guide}
    IF                  ${capacity} != 0
        IF              ${result}<=${recommend}
             Input Text                    ${locator_create_grouptype_recommend}          ${result}      
        END   
    END
    Click Element                          ${locator_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_create_grouptype_warning_cancel}
    Click Element                          ${locator_create_grouptype_warning_cancel}
    Wait Until Element Is Visible          ${locator_create_grouptype_save}
    Click Element                          ${locator_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_create_grouptype_warning_save}
    Click Element                          ${locator_create_grouptype_warning_save}
    Wait Until Element Is Visible          ${locator_grouptype_table}
    
Check Search / Filter
    [Arguments]                            ${searchfield}        ${grouptypefield}
    Input Text                             ${locator_search_grouptype_searchfield}        ${searchfield}
    Wait Until Element Is Visible          ${locator_search_grouptype_checksearch}
    Click Element                          ${locator_search_grouptype_closeicon}
    Wait Until Element Is Enabled          ${locator_search_grouptype_filter}
    Click Element                          ${locator_search_grouptype_filter}
    Wait Until Element Is Visible          ${locator_search_grouptype_filter_group_name}
    Input Text                             ${locator_search_grouptype_filter_group_name}  ${grouptypefield}
    Click Element                          ${locator_search_grouptype_filter_status}
    Wait Until Element Is Visible          ${locator_search_grouptype_filter_status_dd}
    Click Element                          ${locator_search_grouptype_filter_status_act}
    Click Element                          ${locator_search_grouptype_filter_btn_clear}
    Input Text                             ${locator_search_grouptype_filter_group_name}  ${grouptypefield}
    Click Element                          ${locator_search_grouptype_filter_status}
    Wait Until Element Is Visible          ${locator_search_grouptype_filter_status_dd}
    Click Element                          ${locator_search_grouptype_filter_status_inact}
    Click Element                          ${locator_search_grouptype_filter_btn_search}
    Wait Until Page Contains               testy2
    Click Element                          ${locator_search_grouptype_filter_closeicon}
    Wait Until Element Is Visible          ${locator_grouptype_table}

Check View Page
    Click Element                          ${locator_grouptype_action}
    Wait Until Element Is Visible          ${locator_grouptype_action_view}
    Click Element                          ${locator_grouptype_action_view}
    Wait Until Element Is Visible          ${locator_view_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_view_grouptype_name}
    Wait Until Element Is Visible          ${locator_view_grouptype_btn_cancel}
    Click Element                          ${locator_view_grouptype_btn_cancel}
    Wait Until Element Is Visible          ${locator_grouptype_table}
    Wait Until Element Is Visible          ${locator_view_grouptype_nameview}
    Click Element                          ${locator_view_grouptype_nameview}
    Wait Until Element Is Visible          ${locator_view_grouptype_capacity}
    Wait Until Element Is Visible          ${locator_view_grouptype_guide}

Check Edit Page
    Click Element                          ${locator_view_grouptype_btn_edit}
    Wait Until Element Is Visible          ${locator_edit_grouptype_navigator}
    Wait Until Element Is Enabled          ${locator_edit_grouptype_capacity}
    Wait Until Element Is Enabled          ${locator_edit_grouptype_name}
    Wait Until Element Is Visible          ${locator_edit_grouptype_btn_cancel}
    Click Element                          ${locator_edit_grouptype_btn_cancel}
    Wait Until Element Is Visible          ${locator_view_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_view_grouptype_btn_edit}
    Click Element                          ${locator_view_grouptype_btn_edit}
    Wait Until Element Is Visible          ${locator_view_grouptype_recommend}
    Click Element                          ${locator_edit_grouptype_status}
    Wait Until Element Is Visible          ${locator_edit_grouptype_status_act_inact}
    Click Element                          ${locator_edit_grouptype_status_act_inact}
    Click Element                          ${locator_edit_grouptype_btn_save}
    Wait Until Element Is Visible          ${locator_edit_grouptype_warning_btn_cancel}
    Click Element                          ${locator_edit_grouptype_warning_btn_cancel}
    Wait Until Element Is Visible          ${locator_edit_grouptype_btn_save}
    Click Element                          ${locator_edit_grouptype_btn_save}
    Wait Until Element Is Visible          ${locator_edit_grouptype_warning_btn_ok}
    Click Element                          ${locator_edit_grouptype_warning_btn_ok}
    Wait Until Element Is Visible          ${locator_grouptype_table}

Check Pegination
    Click Element                          ${locator_grouptype_pagination}
    Wait Until Element Is Visible          ${locator_grouptype_pagination_page_dd}
    Click Element                          ${locator_grouptype_pagination_25page}
    Wait Until Element Is Visible          ${locator_grouptype_pagination_table_row20}
    Click Element                          ${locaotr_grouptype_pagination_after_25page}
    Wait Until Element Is Visible          ${locator_grouptype_pagination_15page}
    Click Element                          ${locator_grouptype_pagination_15page}
    Click Element                          ${locator_grouptype_pagination_num_2}
    Wait Until Element Is Visible          ${locator_grouptype_pagination_row20_15page}
    Wait Until Element Is Enabled          ${locator_grouptype_pagination_<}
    Click Element                          ${locator_grouptype_pagination_<}
    Wait Until Element Is Visible          ${locator_grouptype_table}
