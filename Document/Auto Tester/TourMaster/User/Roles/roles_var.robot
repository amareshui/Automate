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
${locator_manu_roles}                         id=user_roles

# check in page Roles
${locator_btn_Create}                         xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_search}                             id=text
${locator_filter}                             xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button
${locator_icon_action}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[7]/td[5]/a
${locator_btn_view}                           xpath=/html/body/div[4]/div/ul/li[1]
${locator_table_roles}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div
${locator_pagination}                         xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul
${locator_pagination_count}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[5]/div/div[1]/span[1]
${locator_pagination_list_<}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_pagination_list_Num}                xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]
${locator_pagination_list_>}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]

# check roles page
${locator_create_roles_role_name}                  name=name
${locator_create_roles_selectall}                  xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/div
${locator_create_roles_dashboard_checkbox}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[1]/div/div[1]/div/label/span/input
${locator_create_roles_check_dashboard_view}       xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[2]/div/label/span/input
${locator_create_roles_check_dashboard_create}     xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[3]/div/label/span/input
${locator_create_roles_btn_cancel}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_roles_btn_save}                   xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_roles_err_role_name}              xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[1]/div/div[2]/form/div/span

# roles page save data
${locator_create_roles_save_warning}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div
${locator_create_roles_save_btn_cancel}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_roles_save_btn_save}          xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# view roles page
${locator_view_roles_status}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[1]/div/div[1]/div/div[2]/div
${locator_view_roles_btn_cancel}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_view_roles_btn_edit}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# edit roles page
${locator_edit_roles_status}                       xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[1]/div/div[1]/div/div[2]/a/div
${locator_edit_roles_status_active}                xpath=/html/body/div[3]/div
${locator_edit_roles_checkbox_booking}             xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[2]/td/div/div[1]/div/label/span/input
${locator_edit_roles_checkbox_overview}            xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[3]/td[1]/div/div[1]/div/label/span/input   
${locator_edit_roles_checkbox_delete_overview}     xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/div[2]/div/div[2]/table/tbody/tr[3]/td[5]/div/label/span/input
${locator_edit_roles_btn_cancel}                   xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_edit_roles_btn_save}                     xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_edit_roles_warning}                      xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div
${locator_edit_roles_warning_cancel}               xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_edit_roles_warning_save}                 xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Search And Filter
${locator_search_tablename}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr/td[2]
${locator_search_close}                            xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_search_filter}                           xpath=/html/body/div[3]/div/div[2]/div/div[2]
${locator_search_filter_status}                    xpath=//*[@id="rc_select_0"]
${locator_search_filter_active}                    xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_search_filter_inactivate}                xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[2]
${locator_search_filter_rolename}                  xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/form/div/div[2]/input
${locator_search_filter_btn_clear}                 xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_search_filter_btn_search}                xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button

# Pagination
