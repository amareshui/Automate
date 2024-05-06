*** Settings ***
Library                SeleniumLibrary
Library    String
Resource               ${CURDIR}/item_var.robot

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

Check Item Type Page
    Click Element                          ${locator_menu_program}
    # Wait Until Element Is Visible          ${locator_menu_Program_dd}
    Wait Until Element Is Visible          ${locator_menu_itemtype}
    Click Element                          ${locator_menu_itemtype}
    Wait Until Element Is Visible          ${locator_program_itemtype_navigator}
    Wait Until Element Is Visible          ${locator_program_itemtype_btn_create}
    Wait Until Element Is Visible          ${locator_program_itemtype_export}
    Wait Until Element Is Visible          ${locator_itemtype_search_bar}
    Wait Until Element Is Visible          ${locator_program_itemtype_table}
    Wait Until Element Is Visible          ${locator_program_itemtype_pagination}

Check Create ItemType Page for 10 sub
    [Arguments]                            ${sub1}    ${sub2}    ${sub3}    ${sub4}    ${sub5}    ${sub6}    ${sub7}    ${sub8}    ${sub9}    ${sub10}
    Click Element                          ${locator_program_itemtype_btn_create}
    Wait Until Element Is Visible          ${locator_create_itemtype_navigator}
    Wait Until Element Is Visible          ${locator_create_itemtype_name}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname_2}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname}
    Click Element                          ${locator_create_itemtype_btn_cancel}
    Wait Until Element Is Visible          ${locator_program_itemtype_table}
    Wait Until Element Is Visible          ${locator_program_itemtype_btn_create}
    Click Element                          ${locator_program_itemtype_btn_create}
    Click Element                          ${locator_create_itemtype_btn_save}
    Wait Until Page Contains               Please enter Items Type Name
    Input Text                             ${locator_create_itemtype_name}             test10sub
    Input Text                             ${locator_create_itemtype_subitemname}        ${sub1}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_2}      ${sub2}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_3}      ${sub3}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_4}      ${sub4}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_5}      ${sub5}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_6}      ${sub6}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_7}      ${sub7}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_8}      ${sub8}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_9}      ${sub9}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_10}      ${sub10}
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Click Element                          ${locator_create_itemtype_btn_save}
    
Check Create ItemType Page
    Click Element                          ${locator_program_itemtype_btn_create}
    Wait Until Element Is Visible          ${locator_create_itemtype_navigator}
    Wait Until Element Is Visible          ${locator_create_itemtype_name}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname_2}
    Wait Until Element Is Visible          ${locator_create_itemtype_subitemname}
    Click Element                          ${locator_create_itemtype_btn_cancel}
    Wait Until Element Is Visible          ${locator_program_itemtype_table}
    Wait Until Element Is Visible          ${locator_program_itemtype_btn_create}
    Click Element                          ${locator_program_itemtype_btn_create}
    Click Element                          ${locator_create_itemtype_btn_save}
    Wait Until Page Contains               Please enter Items Type Name
    Input Text                             ${locator_create_itemtype_name}             test
    Input Text                             ${locator_create_itemtype_subitemname}      testing
    Click Element                          ${locator_create_itemtype_addsubitemname}
    Input Text                             ${locator_create_itemtype_subitemname_2}    tosy
    Click Element                          ${locator_create_itemtype_delete_subitem}
    Click Element                          ${locator_create_itemtype_btn_save}

Check Search / Filter
    Input Text                             ${locator_itemtype_search_field}            Test
    Wait Until Element Is Visible          ${locator_itemtype_search_checktable}
    Element Should Be Disabled             ${locator_itemtype_search_filter}
    Click Element                          ${locator_itemtype_search_closeicon}
    Wait Until Element Is Enabled          ${locator_itemtype_search_filter}
    Click Element                          ${locator_itemtype_search_filter}
    Wait Until Element Is Visible          ${locator_itemtype_filter}
    Wait Until Element Is Visible          ${locator_itemtype_filter_itemtypename}
    Wait Until Element Is Visible          ${locator_itemtype_filter_status}
    Input Text                             ${locator_itemtype_filter_itemtypename}     Test
    Click Element                          ${locator_itemtype_filter_status}
    Wait Until Element Is Visible          ${locator_itemtype_filter_status_dd}
    Click Element                          ${locator_itemtype_filter_status_active}
    Click Element                          ${locator_itemtype_filter_btn_clear}
    Input Text                             ${locator_itemtype_filter_itemtypename}     Test
    Click Element                          ${locator_itemtype_filter_status}
    Wait Until Element Is Visible          ${locator_itemtype_filter_status_dd}
    Click Element                          ${locator_itemtype_filter_status_active}
    Click Element                          ${locator_itemtype_filter_btn_search}
    Wait Until Element Is Visible          ${locator_itemtype_search_checktable}

Check View Page
    Click Element                          ${locator_itemtype_action}
    Wait Until Element Is Visible          ${locator_itemtype_action_dd}
    Click Element                          ${locator_itemtype_action_view}
    Wait Until Element Is Visible          ${locator_view_itemtype_navigator}
    Element Should Be Disabled             ${locator_view_itemtype_status}
    Click Element                          ${locator_view_itemtype_btn_cancel}
    Wait Until Element Is Visible          ${locator_program_itemtype_table}
    Click Element                          ${locator_itemtype_action}
    Wait Until Element Is Visible          ${locator_itemtype_action_dd}
    Click Element                          ${locator_itemtype_action_view}
    Element Should Be Disabled             ${locator_view_itemtype_itemtype_name}
    Element Should Be Disabled             ${locator_view_itemtype_subitemtype_name}
    Element Should Be Disabled             ${locator_view_itemtype_delete_subitem}
    Element Should Be Disabled             ${locator_view_itemtype_add_subitem}

Check Edit Page
    Click Element                          ${locator_view_itemtype_btn_edit}
    Wait Until Element Is Visible          ${locator_edit_itemtype_navigator}
    Wait Until Element Is Enabled          ${locator_edit_itemtype_name}
    Wait Until Element Is Enabled          ${locator_edit_itemtype_subname}
    Wait Until Element Is Enabled          ${locator_edit_itemtype_addsubname}
    Click Element                          ${locator_edit_itemtype_btn_cancel}
    Wait Until Element Is Visible          ${locator_view_itemtype_btn_edit}
    Click Element                          ${locator_view_itemtype_btn_edit}
    Wait Until Element Is Visible          ${locator_edit_itemtype_status}
    Click Element                          ${locator_edit_itemtype_status}
    Wait Until Element Is Visible          ${locator_edit_itemtype_active_inact}
    Click Element                          ${locator_edit_itemtype_active_inact}
    Click Element                          ${locator_edit_itemtype_btn_save}
    Wait Until Element Is Visible          ${locator_edit_itemtype_warning_cancel}
    Click Element                          ${locator_edit_itemtype_warning_cancel}
    Wait Until Element Is Visible          ${locator_edit_itemtype_btn_save}
    Click Element                          ${locator_edit_itemtype_btn_save}
    Wait Until Element Is Visible          ${locator_edit_itemtype_warning_ok}
    Wait Until Element Is Visible          ${locator_view_itemtype_navigator}
    Element Should Be Disabled             ${locator_view_itemtype_subitemtype_name}
    Element Should Be Disabled             ${locator_view_itemtype_itemtype_name}
    
Check Pagination function
    Click Element                          ${locator_itemtype_pagination}
    Wait Until Element Is Visible          ${locator_itemtype_pagination_dd}
    Click Element                          ${locator_itemtype_pagination_dd_25page}
    Wait Until Element Is Visible          ${locator_itemtype_pagination_check_row20}
    Click Element                          ${locator_itemtype_pagination}
    Wait Until Element Is Visible          ${locator_itemtype_pagination_dd}
    Click Element                          ${locator_itemtype_pagination_dd_15page}
    Wait Until Element Is Visible          ${locator_itemtype_pagination_check_row10}
    Element Should Be Disabled             ${locator_itemtype_pagination_<}
    Click Element                          ${locator_itemtype_pagination_>}
    Wait Until Element Is Visible          ${locator_itemtype_pagination_checkrow20}
    Wait Until Element Is Enabled          ${locator_itemtype_pagination_<}
    Click Element                          ${locator_itemtype_pagination_<}