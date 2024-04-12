*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                                        https://dev-tm.techmaster.in.th/login
${browser}                                    chrome
# Login Page
${locator_username}                           name=username
${locator_password}                           name=password
${locator_btneye}                             xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div/div/div/span/span[2]/span
${locator_btnlogin}                           id=btn_login_submit

# Nav_bar
${locator_icon_left_right}                    xpath=//*[@id="root"]/div/aside/div/div[1]/div[1]/button
${locator_dashboard}                          xpath=//*[@id="root"]/div/aside/div/ul/li[1]/span
${locator_manu_user}                          xpath=//*[@id="root"]/div/aside/div/ul/li[11]/div
${locator_manu_user_list}                     id=user_list

# check in page User List
${locator_btn_Create}                         xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_search}                             id=text
${locator_filter}                             xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button
${locator_icon_action}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[9]/a
${locator_btn_view}                           xpath=/html/body/div[4]/div/ul/li[1]
${locator_table_user}                         xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table
${locator_pagination}                         xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul
${locator_pagination_count}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]/div/div[1]
${locator_pagination_list_<}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_pagination_list_Num}                xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]
${locator_pagination_list_>}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[3]/button

# Check in page Create User
${locator_create_user_btn_cancel}             xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_user_btn_save}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_user_input_image}            id=image-upload
${locator_create_user_employee_code}          xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[2]/div/input
${locator_create_user_frist_name}             name=first_name
${locator_create_user_last_name}              name=last_name
${locator_create_user_email}                  name=email
${locator_create_user_phone}                  name=phone
${locator_create_user_role}                   id=rc_select_2
${locator_create_user_role_list}              xpath=/html/body/div[4]/div/div/div[2]/div[1]/div/div/div[1]/div
${locator_create_user_username}               name=username
${locator_create_user_password}               name=password
${locator_create_user_eye_password}           xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[3]/span[1]/span/span
${locator_create_user_c_password}             name=c_password
${locator_create_user_eye_c_password}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[4]/span[1]/span/span

# Create Date And Save Data
${locator_create_user_save_warning}           xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[2]
${locator_create_user_save_btn_cancel}        xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_user_save_btn_save}          xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Create Fail
${locator_create_user_err_role}               xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[1]/span
${locator_create_user_err_username}           xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[2]/span
${locator_create_user_err_password}           xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[3]/span[2]
${locator_create_user_err_con_password}       xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[4]/span[2]

# search and filter
${locator_search_tablename}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[3]                           
${locator_search_close}                       xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_search_filter_modal}                xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div
${locator_search_filter_role}                 xpath=//*[@id="rc_select_0"]
${locator_search_filter_select}               xpath=/html/body/div[4]/div/div/div[2]/div[1]/div/div
${locator_search_filter_select_role}          xpath=/html/body/div[4]/div/div/div[2]/div[1]/div/div/div[1]
${locator_search_filter_emp_code}             name=code
${locator_search_filter_username}             name=username   
${locator_search_filter_btn_clear}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_search_filter_btn_search}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_search_close_filter}                xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button/div[2]

# view page
${locator_user_view}                          xpath=/html/body/div[5]/div/ul/li[1]/span/div
${locator_user_view_photo}
${locator_user_view_btn_cancel}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_user_view_btn_edit}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# edit page
${locator_user_edit_btn_cancel}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_user_edit_btn_save}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button   
${locator_user_edit_status}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div/div[2]/a/div
${locator_user_edit_status_ac_inac}           xpath=/html/body/div[4]/div/div
${locator_user_edit_photo}                    xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[1]/div/div/span/div
${locator_user_edit_photo_view}               xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[1]/div/div/div/span[1]
${locator_user_edit_photo_delete}             xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[1]/div/div/div/span[2]
${locator_user_edit_role}                     xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[1]/div/div/div
${locator_user_edit_role_select_role}         xpath=/html/body/div[7]/div/div/div[2]/div[1]/div/div/div[1]
${locator_user_edit_username}                 name=username
# ${locator_user_edit_err_role}               xpath=
${locator_user_edit_err_username}             xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[2]/span
${locator_user_edit_err_Pass}                 xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[3]/span[2]
${locator_user_edit_err_con_pass}             xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[4]/span[2]

# reset password
${locator_user_edit_reset_pass}               xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]
${locator_user_reset_pass}                    xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]
${locator_user_reset_pass_new_pass}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[1]/span[1]/input
${locator_user_reset_pass_con_pass}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[2]/span[1]/input
${locator_user_reset_pass_new_eye}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[1]/span[1]/span/span
${locator_user_reset_pass_con_eye}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[2]/span[1]/span/span
${locator_user_reset_pass_btn_cancel}         xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_user_reset_pass_btn_save}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_user_reset_pass_err_new}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[1]/span[2]
${locator_user_reset_pass_err_con}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[2]/span[2]
${locator_user_reset_pass_warning_cancel}     xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_user_reset_pass_warning_save}       xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button


*** Keywords ***
Open Browser Web
    Open Browser                           ${url}                                ${browser}
    Set Selenium Speed                     0.5s

Input Data for Login Pass
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard

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


*** Test Cases ***
TC01-Check Unit List Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Close All Browsers

TC02-Check Create Page
    Open Browser Web
    Input Data for Login Pass
    Check Create Page
    Close All Browsers

TC03-Check Input Data In Create Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Input Data In Create Page
    Close All Browsers

TC04-Check Input Data In Create Page And Save Data
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Input Data In Create Page
    Check Save Data In Create User
    Close All Browsers

TC05-Check Create User Fail
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Create User Fail
    Close All Browsers

TC06-Check Search and Filter
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Search and Filter
    Close All Browsers

TC07-Check View Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Close All Browsers

TC08-Check Edit Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Check Edit Page
    Close All Browsers

TC09-Check Reset Password
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Reset Password
    Close All Browsers
    