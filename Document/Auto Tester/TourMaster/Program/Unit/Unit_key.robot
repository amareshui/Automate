*** Settings ***
Library                SeleniumLibrary
Library    String
Resource               ${CURDIR}/Unit_var.robot

*** Keywords ***
Open Browser Web
    Open Browser                           ${url}                                ${browser}
    Maximize Browser Window
    Set Selenium Speed                     0.5s

Input Data for Login Pass
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard

Check Unit Page
    Click Element                          ${locator_menu_program}
    Sleep                                  0.5s
    Click Element                          ${locator_menu_unit}
    Wait Until Element Is Visible          ${locator_program_unit_navigator}
    Wait Until Element Is Visible          ${locator_program_unit_create}
    Wait Until Element Is Visible          ${locator_program_unit_export}
    Wait Until Element Is Visible          ${locator_unit_search_bar}
    Wait Until Element Is Visible          ${locator_program_unit_table}
    Wait Until Element Is Visible          ${locator_program_unit_navigator}

Check create Page
    [Arguments]                            ${unitname}
    Click Element                          ${locator_program_unit_create}
    Wait Until Element Is Visible          ${locator_create_unit_navigator}
    Wait Until Element Is Visible          ${locator_create_unit_name}
    Wait Until Element Is Visible          ${locator_create_unit_type}
    Click Element                          ${locator_create_unit_btn_cancel}
    Wait Until Element Is Visible          ${locator_program_unit_table}
    Click Element                          ${locator_program_unit_create}
    Click Element                          ${locator_create_unit_btn_save}
    Wait Until Page Contains               Please enter your unit name 
    Wait Until Page Contains               Please select type
    Input Text                             ${locator_create_unit_name}             ${unitname}
    Click Element                          ${locator_create_unit_type}
    Wait Until Element Is Visible          ${locator_create_unit_type_option}
    Click Element                          ${locator_create_unit_type_person}
    Click Element                          ${locator_create_unit_btn_save}
    Wait Until Page Contains               Warning
    Click Element                          ${locator_create_unit_warning_cancel}
    Wait Until Element Is Visible          ${locator_create_unit_name}
    Click Element                          ${locator_create_unit_btn_save}
    Wait Until Page Contains               Warning
    Click Element                          ${locator_create_unit_warning_ok}
    Wait Until Element Is Visible          ${locator_program_unit_table}

Check Search / Filter
    [Arguments]                            ${unitname}
    Input Text                             ${locator_unit_search_field}                  ${unitname}
    Wait Until Element Contains            ${locator_unit_search_table}            testets
    Element Should Be Disabled             ${locator_unit_search_filter}
    Click Element                          ${locator_unit_search_closeicon}
    Wait Until Element Is Enabled          ${locator_unit_search_filter}
    Click Element                          ${locator_unit_search_filter}
    Wait Until Element Is Visible          ${locator_unit_filter}
    Wait Until Element Is Visible          ${locator_unit_filter_unitname}
    Wait Until Element Is Visible          ${locator_unit_filter_status}
    Input Text                             ${locator_unit_filter_unitname}         ${unitname}
    Click Element                          ${locator_unit_filter_status}
    Click Element                          ${locator_unit_filter_btn_clear}
    Input Text                             ${locator_unit_filter_unitname}         ${unitname}
    Click Element                          ${locator_unit_filter_status}
    Click Element                          ${locator_unit_filter_action}
    Click Element                          ${locator_unit_filter_btn_search}
    Wait Until Element Contains            ${locator_unit_search_table}            testets

Check View Page
    Click Element                          ${locator_unit_action}
    Wait Until Element Is Visible          ${locator_unit_action_dd}
    Click Element                          ${locator_unit_action_view}
    Wait Until Element Is Visible          ${locator_view_unit_navigator}
    Wait Until Element Is Visible          ${locator_view_unit_detail}
    Element Should Be Disabled             ${locator_view_unit_name}
    Wait Until Element Is Visible          ${locator_view_unit_type}
    Wait Until Element Is Visible          ${locator_view_unit_btn_cancel}
    Wait Until Element Is Visible          ${locator_view_unit_btn_edit}
    Click Element                          ${locator_view_unit_btn_cancel}
    Click Element                          ${locator_unit_table_unitname}
    Wait Until Element Is Visible          ${locator_view_unit_navigator}
    Wait Until Element Is Visible          ${locator_view_unit_detail}
    Element Should Be Disabled             ${locator_view_unit_name}
    Wait Until Element Is Visible          ${locator_view_unit_type}
    Wait Until Element Is Visible          ${locator_view_unit_btn_cancel}
    Wait Until Element Is Visible          ${locator_view_unit_btn_edit}

Check Edit Page
    Click Element                          ${locator_view_unit_btn_edit}
    Wait Until Element Is Visible          ${locator_edit_unit_navigator}
    Wait Until Element Is Visible          ${locator_edit_unit_detail}
    Wait Until Element Is Visible          ${locator_edit_unit_status}
    Click Element                          ${locator_edit_unit_btn_cancel}
    Wait Until Element Is Visible          ${locator_view_unit_navigator}
    Click Element                          ${locator_view_unit_btn_edit}
    Wait Until Element Is Enabled          ${locator_edit_unit_name}
    Wait Until Element Is Enabled          ${locator_edit_unit_type}
    Click Element                          ${locator_edit_unit_status}
    Click Element                          ${locator_edit_unit_inactive}
    Click Element                          ${locator_edit_unit_btn_save}
    Wait Until Page Contains               Warning 
    Click Element                          ${locator_edit_unit_warning_cancel}
    Wait Until Element Is Visible          ${locator_edit_unit_name}
    Click Element                          ${locator_edit_unit_btn_save}
    Wait Until Page Contains               Warning
    Click Element                          ${locator_edit_unit_warning_ok}

Check Pagination
    Click Element                          ${locator_unit_pagination}
    Wait Until Element Is Visible          ${locator_unit_pagination_dd}
    Click Element                          ${locator_unit_pagination_dd_25page}
    Wait Until Element Is Visible          ${locator_unit_table_row_16}
    Wait Until Element Is Visible          ${locator_unit_table_row_20}
    Click Element                          ${locator_unit_pagination_25page}
    Wait Until Element Is Visible          ${locator_unit_pagination_dd_2}
    Click Element                          ${locator_unit_pagination_dd_15page}
    Wait Until Element Is Not Visible      ${locator_unit_table_row_16}
    Wait Until Element Is Not Visible      ${locator_unit_table_row_20}
    Wait Until Element Is Visible          ${locator_unit_pagination_num_2}
    Wait Until Element Is Visible          ${locator_unit_pagination_>}
    Click Element                          ${locator_unit_pagination_>}
    Wait Until Element Is Visible          ${locator_unit_table_page2_row16}
    Element Should Be Disabled             ${locator_unit_pagination_>}
    Wait Until Element Is Enabled          ${locator_unit_pagination_<}
    Click Element                          ${locator_unit_pagination_num_1}
    Wait Until Element Is Enabled          ${locator_unit_pagination_>}
