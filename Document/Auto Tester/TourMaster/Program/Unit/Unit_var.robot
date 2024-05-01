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
${locator_menu_program}                       xpath=//*[@id="root"]/div/aside/div/ul/li[5]/ul/li[1]/div/span
${locator_menu_unit}                          id=program_unit

# Check Page Unit
${locator_program_unit_navigator}             xpath=//*[@id="root"]/div/div/main/div/div[1]/div[1]/div[3]
${locator_program_unit_create}                xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_program_unit_export}                xpath=//*[@id="root"]/div/div/main/div/div[2]/div[1]/button
${locator_program_unit_table}                 xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div
${locator_program_unit_pagination}            xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul

# Check Page Create Unit
${locator_create_unit_navigator}              xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]/div[5]
${locator_create_unit_name}                   name=name
${locator_create_unit_type}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[2]/div/div/div/span[1]
${locator_create_unit_type_select}            xpath=/html/body/div[3]/div/div/div[2]/div
${locator_create_unit_type_person}            xpath=/html/body/div[3]/div/div/div[2]/div/div/div/div[1]
${locator_create_unit_type_option}            xpath=/html/body/div[3]/div/div/div[2]/div/div/div/div[2]
${locator_create_unit_btn_cancel}             xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_unit_btn_save}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_unit_empty_name_err}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[1]/span
${locator_create_unit_warning}                xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div
${locator_create_unit_warning_cancel}         xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_unit_warning_ok}             xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Search / Filter
${locator_unit_search_bar}                    xpath=//*[@id="myFormText"]/div/div/div/div/div/span
${locator_unit_search_field}                  id=text
${locator_unit_search_table}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[2]/td[2]/a
${locator_unit_search_filter}                 xpath=//*[@id="root"]/div/div/main/div/div[2]/div[2]/button
${locator_unit_search_closeicon}              xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_unit_filter}                        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]
${locator_unit_filter_unitname}               name=name
${locator_unit_filter_status}                 xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/form/div/div[2]/div/div/div/span[1]
${locator_unit_filter_action}                 xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_unit_filter_btn_clear}              xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_unit_filter_btn_search}             xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button

# Check Action Btn
${locator_unit_action}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[7]/td[5]/a
${locator_unit_action_dd}                     xpath=/html/body/div[4]/div/ul
${locator_unit_action_view}                   xpath=/html/body/div[4]/div/ul/li[1]/span
${locator_unit_action_delete}                 xpath=/html/body/div[4]/div/ul/li[2]

# Check View Page
${locator_unit_table_unitname}                xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[12]/td[2]/a
${locator_view_unit_navigator}                xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_view_unit_detail}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div
${locator_view_unit_name}                     name=name
${locator_view_unit_type}                     xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[2]/div/div/div/span[1]
${locator_view_unit_btn_cancel}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_view_unit_btn_edit}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Check Edit Page
${locator_edit_unit_navigator}                xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_edit_unit_status}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[1]/div/div[2]/a/div
${locator_edit_unit_inactive}                 xpath=/html/body/div[3]/div/div
${locator_edit_unit_detail}                   xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div
${locator_edit_unit_name}                     name=name
${locator_edit_unit_type}                     xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[2]/div/div/div
${locator_edit_unit_select}                   xpath=/html/body/div[4]/div/div/div[2]/div/div/div
${locator_edit_unit_person}                   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${lcoator_edit_unit_option}                   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[2]
${locator_edit_unit_btn_cancel}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_edit_unit_btn_save}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_edit_unit_warning}                  xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div
${locator_edit_unit_warning_cancel}           xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_edit_unit_warning_ok}               xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Pagination
${locator_unit_pagination}                    xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[5]/div/div[1]
${locator_unit_pagination_dd}                 xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[5]/div/div[2]
# เปลี่ยนเรื่อยๆ
${locator_unit_pagination_dd_25page}          xpath=//*[@id="rc_select_1_list_1"]

${locator_unit_pagination_25page}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]/div/div[1]
${locator_unit_pagination_dd_2}               xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]/div/div[2]
# เปลี่ยนเรื่อยๆ
${locator_unit_pagination_dd_15page}          xpath=//*[@id="rc_select_1_list_0"]/div

${locator_unit_pagination_<}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_unit_pagination_>}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]/button
${locator_unit_pagination_num_1}              xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]
${locator_unit_pagination_num_2}              xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[3]
${locator_unit_table_row_16}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[16]
${locator_unit_table_row_20}                  xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[20]
${locator_unit_table_page2_row16}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[1]