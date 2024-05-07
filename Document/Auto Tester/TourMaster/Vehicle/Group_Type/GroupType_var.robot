*** Variables ***
${url}                                            https://dev-tm.techmaster.in.th/login
${browser}                                        chrome

# Login Page
${locator_username}                               name=username
${locator_password}                               name=password
${locator_btneye}                                 xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div/div/div/span/span[2]/span
${locator_btnlogin}                               id=btn_login_submit

# Nav_bar
${locator_icon_left_right}                        xpath=//*[@id="root"]/div/aside/div/div[1]/div[1]/button
${locator_dashboard}                              xpath=//*[@id="root"]/div/aside/div/ul/li[1]/span
${locator_menu_vehicle}                           xpath=//*[@id="root"]/div/aside/div/ul/li[5]/ul/li[3]/div
# ${locator_menu_vehicle_dd}                        xpath=//*[@id="rc-menu-uuid-65833-1-VEHICLE-popup"]
${locator_menu_grouptype}                         id=vehicle_grouptype

# Check Group Type Page
${locator_grouptype_navigator}                    xpath=//*[@id="root"]/div/div/main/div/div[1]
${locator_grouptype_btn_create}                   xpath=//*[@id="root"]/div/div/main/div/div[1]/div/div/button
${locator_grouptype_export}                       xpath=//*[@id="root"]/div/div/main/div/div[2]/div[1]/button
${locator_grouptype_table}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div
${locator_grouptype_pagination_page}              xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul

# Check Create Group Type Page
${locator_create_grouptype_navigator}             xpath=//*[@id="root"]/div/div/main/div/div/div[1]
${locator_create_grouptype_name}                  name=name
${locator_create_grouptype_capacity}              name=capacity
${locator_create_grouptype_capacity_plus}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[2]/div/div[1]/span[1]
${locator_create_grouptype_capacity_minus}        xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[2]/div/div[1]/span[2]
${locator_create_grouptype_guide}                 name=guide_staff
${locator_create_grouptype_guide_plus}            xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[3]/div/div[1]/span[1]
${locator_create_grouptype_guide_minus}           xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[3]/div/div[1]/span[2]
${locator_create_grouptype_recommend}             name=recommend
${locator_create_grouptype_recommend_plus}        xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[4]/div/div[1]/span[1]
${locator_create_grouptype_recommend_minus}       xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[2]/div/div[4]/div/div[1]/span[2]
${locator_create_grouptype_cancel}                xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_grouptype_save}                  xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_grouptype_warning_cancel}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_grouptype_warning_save}          xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Search / Filter
${locator_search_grouptype}                       xpath=//*[@id="myFormText"]/div/div/div/div/div/span
${locator_search_grouptype_searchfield}           id=text
${locator_search_grouptype_checksearch}           xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[15]/td[2]
${locator_search_grouptype_closeicon}             xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_search_grouptype_filter}                xpath=//*[@id="root"]/div/div/main/div/div[2]/div[2]/button
${locator_search_grouptype_filter_group_name}     name=name
${locator_search_grouptype_filter_status}         xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/form/div/div[2]/div/div/div
${locator_search_grouptype_filter_status_dd}      xpath=/html/body/div[4]/div/div/div[2]/div/div/div
${locator_search_grouptype_filter_status_act}     xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_search_grouptype_filter_status_inact}   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[2]
${locator_search_grouptype_filter_btn_clear}      xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_search_grouptype_filter_btn_search}     xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_search_grouptype_filter_checksearch}    xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[15]/td[2]
${locator_search_grouptype_filter_closeicon}      xpath=//*[@id="root"]/div/div/main/div/div[2]/div[2]/button/div[2]


# Check Action Btn 
${locator_grouptype_action}                       xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[2]/td[6]/a
# ${locator_grouptype_action_dd}                    xpath=/html/body/div[5]/div/ul
${locator_grouptype_action_view}                  xpath=/html/body/div[4]/div/ul/li[1]
${locator_grouptype_action_delete}                xpath=/html/body/div[4]/div/ul/li[2]

# Check View 
${locator_view_grouptype_nameview}                xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[2]/td[2]/a
${locator_view_grouptype_navigator}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_view_grouptype_name}                    name=name
${locator_view_grouptype_capacity}                name=capacity
${locator_view_grouptype_guide}                   name=guide_staff
${locator_view_grouptype_recommend}               name=recommend
${locator_view_grouptype_status}                  xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[1]/div/div[2]/div
${locator_view_grouptype_btn_cancel}              xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_view_grouptype_btn_edit}                xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Check Edit Page
${locator_edit_grouptype_navigator}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_edit_grouptype_name}                    name=name
${locator_edit_grouptype_capacity}                name=capacity
${locator_edit_grouptype_guide}                   name=guide_staff
${locator_edit_grouptype_recommend}               name=recommend
${locator_edit_grouptype_status}                  xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div/div/div[1]/div/div[2]/a/div
${locator_edit_grouptype_status_act_inact}        xpath=/html/body/div[3]/div/div
${locator_edit_grouptype_btn_cancel}              xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_edit_grouptype_btn_save}                xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_edit_grouptype_warning_btn_cancel}      xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_edit_grouptype_warning_btn_ok}          xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Paggination
${locator_grouptype_pagination}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[8]/div/div[1]
${locator_grouptype_pagination_page_dd}           xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[8]/div/div[2]
${locator_grouptype_pagination_25page}            xpath=//*[@id="rc_select_1_list_1"]
${locator_grouptype_pagination_table_row20}       xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[20]
${locaotr_grouptype_pagination_after_25page}      xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[6]/div/div[1]/span[2]
${locator_grouptype_pagination_15page}            xpath=//*[@id="rc_select_1_list_0"]
${locator_grouptype_pagination_row20_15page}      xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[5]
${locator_grouptype_pagination_<}                 xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_grouptype_pagination_>}                 xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[7]/button
${locator_grouptype_pagination_num_2}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[3]/a
${locator_grouptype_pagination_num_1}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]/a
