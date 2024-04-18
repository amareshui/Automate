*** Variables ***
${url}                        https://dev-tm.techmaster.in.th/login
${browser}                    chrome
${locator_username}           id=login999
${locator_no_username}        xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/span[2]
${locator_password}           id=pass999
${locator_no_password}        xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/span[2]
${locator_btneye}             xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/span[1]/span[2]/span/svg
${locator_btnlogin}           id=btn_login_submit
${locator_err_user_pass}      xpath=//*[@id="root"]/div/div/div[2]/form/div[3]

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