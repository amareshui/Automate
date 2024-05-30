*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/roles_var.robot

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

Check Roles Page
    Click Element                          ${locator_manu_user}
    Wait Until Element Is Visible          ${locator_manu_roles}
    Sleep                                  1s
    Click Element                          ${locator_manu_roles}
    Wait Until Page Contains               Roles
    sleep                                  2s
    Wait Until Page Contains Element       ${locator_btn_Create}
    Wait Until Page Contains Element       ${locator_search}
    Wait Until Page Contains Element       ${locator_filter}
    Wait Until Page Contains Element       ${locator_table_roles}
    Wait Until Page Contains Element       ${locator_pagination_count}
    Wait Until Page Contains Element       ${locator_pagination_list_<}
    Wait Until Page Contains Element       ${locator_pagination_list_Num}
    Wait Until Page Contains Element       ${locator_pagination_list_>}

Create Roles Page
    Click Element                           ${locator_btn_Create}
    Wait Until Page Contains                Create Roles
    Sleep                                   1s
    Input Text                              ${locator_create_roles_role_name}       ${EMPTY}
    Click Element                           ${locator_create_roles_selectall}
    Sleep                                   1s
    Click Element                           ${locator_create_roles_selectall}
    Click Element                           ${locator_create_roles_dashboard_checkbox}
    Click Element                           ${locator_create_roles_check_dashboard_view}
    Click Element                           ${locator_create_roles_check_dashboard_create}
    Click Element                           ${locator_create_roles_btn_save}
    Wait Until Page Contains                Please enter your role name
    Input Text                              ${locator_create_roles_role_name}       testing1
    Click Element                           ${locator_create_roles_btn_save}
    Wait Until Element Is Visible           ${locator_create_roles_save_warning}
    Click Element                           ${locator_create_roles_save_btn_cancel}
    Click Element                           ${locator_create_roles_btn_save}
    Wait Until Element Is Visible           ${locator_create_roles_save_warning}
    Click Element                           ${locator_create_roles_save_btn_save}
    Sleep                                   1s   
    Wait Until Page Contains                Roles

View Roles
    Click Element                           ${locator_icon_action}
    Wait Until Page Contains                View
    Sleep                                   1s
    Click Element                           ${locator_btn_view}
    Wait Until Page Contains                View Roles
    Sleep                                   1s
    Click Element                           ${locator_view_roles_btn_cancel}
    Wait Until Page Contains                Roles
    Click Element                           ${locator_icon_action}
    Wait Until Page Contains                View
    Sleep                                   0.5s
    Click Element                           ${locator_btn_view}
    Wait Until Page Contains                View Roles
    Sleep                                   1s

Update Roles Pass
    Click Element                           ${locator_view_roles_btn_edit}
    Wait Until Page Contains                Edit Roles
    Click Element                           ${locator_edit_roles_status}
    Sleep                                   1s
    Click Element                           ${locator_edit_roles_status_active}
    Click Element                           ${locator_edit_roles_checkbox_booking}
    Click Element                           ${locator_edit_roles_btn_cancel}
    Wait Until Page Contains                View Roles
    Sleep                                   1s
    Click Element                           ${locator_view_roles_btn_edit}
    Click Element                           ${locator_edit_roles_checkbox_booking}
    Click Element                           ${locator_edit_roles_btn_save}
    Wait Until Page Contains                Warning
    Click Element                           ${locator_edit_roles_warning_cancel}
    Wait Until Page Contains                Edit Roles
    Click Element                           ${locator_edit_roles_btn_save}
    Wait Until Page Contains                Warning
    Click Element                           ${locator_edit_roles_warning_save}
    Sleep                                   1s
    Wait Until Page Contains                Roles

Check Search And Filter
    Input Text                              ${locator_search}                test
    Wait Until Page Contains                test2314
    Click Element                           ${locator_search_close}
    Sleep                                   1s
    Click Element                           ${locator_filter}
    Wait Until Element Is Visible           ${locator_search_filter}
    Click Element                           ${locator_search_filter_status}
    Wait Until Element Is Visible           ${locator_search_filter_active}
    Wait Until Element Is Visible           ${locator_search_filter_inactivate}
    Click Element                           ${locator_search_filter_active}
    Click Element                           ${locator_search_filter_btn_clear}
    Wait Until Element Does Not Contain     ${locator_search_filter_status}    Active
    Click Element                           ${locator_search_filter_status}
    Click Element                           ${locator_search_filter_active}
    Input Text                              ${locator_search_filter_rolename}  test
    Click Element                           ${locator_search_filter_btn_search}
    Sleep                                   1s
    Wait Until Page Contains                test3

Check Pagination
    Click Element                           ${locator_pagination_list_>}
    Wait Until Element Is Visible           ${locator_pagination_nextpage_row_16}
    Wait Until Page Contains                superXXXXXX	
    Click Element                           ${locator_pagination_list_<}
    Wait Until Element Is Visible           ${locator_pagination_row_1}
    Wait Until Page Contains                CEO