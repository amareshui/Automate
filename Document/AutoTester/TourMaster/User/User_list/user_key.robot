*** Settings ***
Library                        SeleniumLibrary
Resource                       ${CURDIR}/User_var.robot

*** Keywords ***
Open Browser Web
    Open Browser                    ${url}                    ${browser}
    Maximize Browser Window

Input Data for Login Pass
    Input Text                      ${locator_username}        superadmin
    Input Text                      ${locator_password}        P@ssW0rd
    Click Element                   ${locator_btneye}
    Click Element                   ${locator_btnlogin}
    Wait Until Page Contains        Dashboard

Check User Page
    Click Element                          ${locator_manu_user}
    Wait Until Element Is Visible          ${locator_manu_user_list}
    Sleep                                  1s
    Click Element                          ${locator_manu_user_list}
    Wait Until Page Contains               User List
    sleep                                  2s
    Wait Until Page Contains Element       ${locator_btn_Create}
    Wait Until Page Contains Element       ${locator_search}
    Wait Until Page Contains Element       ${locator_filter}
    Wait Until Page Contains Element       ${locator_table_user}
    Wait Until Page Contains Element       ${locator_pagination_count}
    Wait Until Page Contains Element       ${locator_pagination_list_<}
    Wait Until Page Contains Element       ${locator_pagination_list_Num}
    Wait Until Page Contains Element       ${locator_pagination_list_>}

Check Create Page
    Click Element                          ${locator_btn_Create}
    Wait Until Page Contains               Create User
    Wait Until Page Contains Element       ${locator_create_user_btn_cancel}
    Wait Until Page Contains Element       ${locator_create_user_btn_save}   
    Wait Until Page Contains Element       ${locator_create_user_input_image} 
    Wait Until Page Contains Element       ${locator_create_user_employee_code}   
    Wait Until Page Contains Element       ${locator_create_user_frist_name} 
    Wait Until Page Contains Element       ${locator_create_user_last_name} 
    Wait Until Page Contains Element       ${locator_create_user_email} 
    Wait Until Page Contains Element       ${locator_create_user_phone}
    Wait Until Page Contains Element       ${locator_create_user_role} 
    Wait Until Page Contains Element       ${locator_create_user_username}
    Wait Until Page Contains Element       ${locator_create_user_password} 
    Wait Until Page Contains Element       ${locator_create_user_eye_password}
    Wait Until Page Contains Element       ${locator_create_user_c_password} 
    Wait Until Page Contains Element       ${locator_create_user_eye_c_password} 

Input Data In Create Page
    Input Text                             ${locator_create_user_employee_code}    TESTTEST123
    Input Text                             ${locator_create_user_frist_name}       Test13344
    Input Text                             ${locator_create_user_last_name}        samu
    Input Text                             ${locator_create_user_email}            ${EMPTY}
    Input Text                             ${locator_create_user_phone}            ${EMPTY}
    Click Element                          ${locator_create_user_role}
    Click Element                          ${locator_create_user_role_list}
    Input Text                             ${locator_create_user_username}         Testtesttest
    Input Text                             ${locator_create_user_password}         123456
    Click Element                          ${locator_create_user_eye_password}
    Input Text                             ${locator_create_user_c_password}       123456
    Click Element                          ${locator_create_user_eye_c_password}
    Sleep                                  2s
    # Click Button                           ${locator_create_user_btn_cancel}
    # Wait Until Page Contains               User List

Check Save Data In Create User
     Click Button                          ${locator_create_user_btn_save}
     Wait Until Page Contains              Warning
     Click Element                         ${locator_create_user_save_btn_cancel}
     Wait Until Page Contains              Create User    
     Sleep                                 2s
     Click Element                         ${locator_create_user_btn_save}
     Click Element                         ${locator_create_user_save_btn_save}
     Sleep                                 2s
     Wait Until Page Contains              User list

Create User Fail
    Click Element                          ${locator_create_user_btn_save}
    Wait Until Element Is Visible          ${locator_create_user_err_role}
    Wait Until Element Is Visible          ${locator_create_user_err_username}
    Wait Until Element Is Visible          ${locator_create_user_err_password}
    Wait Until Element Is Visible          ${locator_create_user_err_con_password}

Check Search and Filter
    Input Text                             ${locator_search}                       test
    Wait Until Page Contains               TEST00001@gmail.com
    Click Element                          ${locator_search_close}
    Click Element                          ${locator_filter}
    Wait Until Page Contains               Filter
    Click Element                          ${locator_search_filter_role}
    Wait Until Element Is Visible          ${locator_search_filter_select}
    Click Element                          ${locator_search_filter_select_role}
    Input Text                             ${locator_search_filter_emp_code}       test
    Input Text                             ${locator_search_filter_username}       test
    Click Element                          ${locator_search_filter_btn_clear}
    Input Text                             ${locator_search_filter_emp_code}       test
    Click Element                          ${locator_search_filter_btn_search}
    Wait Until Page Contains               Expected number, received string
    Click Element                          ${locator_search_filter_btn_clear}
    Input Text                             ${locator_search_filter_username}       test
    Click Element                          ${locator_search_filter_btn_search}
    Wait Until Page Contains               test38
    Click Element                          ${locator_search_close_filter}
    Wait Until Page Contains               VUUQLI

Check View Page
    Click Element                          ${locator_icon_action}
    Sleep                                  0.5s
    Click Element                          ${locator_btn_view}
    Wait Until Page Contains               View User
    Sleep                                  1s
    Click Element                          ${locator_user_view_btn_cancel}
    Wait Until Page Contains               User List
    Sleep                                  1s
    Click Element                          ${locator_icon_action}
    Sleep                                  1s
    Click Element                          ${locator_btn_view}
    Wait Until Page Contains               View User
    Sleep                                  1s

Check Edit Page
    Click Element                          ${locator_user_view_btn_edit}
    Wait Until Page Contains               Edit User
    Sleep                                  1s
    Click Element                          ${locator_user_edit_btn_cancel}
    Wait Until Page Contains               View User
    Sleep                                  1s
    Click Element                          ${locator_user_view_btn_edit}
    Wait Until Page Contains               Edit User
    Sleep                                  1s
    Click Element                          ${locator_user_edit_status}
    Wait Until Element Is Visible          ${locator_user_edit_status_ac_inac}
    Click Element                          ${locator_user_edit_status_ac_inac}
    Click Element                          ${locator_user_edit_photo}
    Press Keys                             ${None}                                    ESC
    # Choose File                            ${locator_user_edit_photo}            file_path=/results/selenium-screenshot-4.png
    # Click Element                          ${locator_user_edit_photo_view}
    # Press Keys                             ${None}                                    ESC
    # Click Element                          ${locator_user_edit_photo_delete}
    Click Element                          ${locator_user_edit_btn_save}
    Wait Until Page Contains               Please enter password
    Wait Until Page Contains               Please enter confirm password


Reset Password
    Click Element                          ${locator_user_view_btn_edit}
    Click Element                          ${locator_user_edit_reset_pass}
    Wait Until Element Is Visible          ${locator_user_reset_pass}
    Click Element                          ${locator_user_reset_pass_btn_cancel}
    Wait Until Page Contains               Edit User
    Sleep                                  1s
    Click Element                          ${locator_user_edit_reset_pass}
    Wait Until Element Is Visible          ${locator_user_reset_pass}
    Input Text                             ${locator_user_reset_pass_new_pass}        ${EMPTY}
    Input Text                             ${locator_user_reset_pass_con_pass}        ${EMPTY}
    Click Element                          ${locator_user_reset_pass_btn_save}
    Wait Until Element Is Visible          ${locator_user_reset_pass_err_new}
    Wait Until Element Is Visible          ${locator_user_reset_pass_err_con}
    Input Text                             ${locator_user_reset_pass_new_pass}        12345
    Input Text                             ${locator_user_reset_pass_con_pass}        12345
    Click Element                          ${locator_user_reset_pass_new_eye}
    Click Element                          ${locator_user_reset_pass_con_eye}
    Click Element                          ${locator_user_reset_pass_btn_save}
    Wait Until Page Contains               Warning
    Click Element                          ${locator_user_reset_pass_warning_cancel}
    Sleep                                  0.5s
    Click Element                          ${locator_user_reset_pass_btn_save}
    Wait Until Page Contains               Warning
    Click Element                          ${locator_user_reset_pass_warning_save}
    Sleep                                  0.5s
    Wait Until Page Contains               View User
