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
${locator_menu_Program_dd}                    xpath=//*[@id="rc-menu-uuid-68547-1-SETTING_PROGRAM-popup"]
${locator_menu_itemtype}                      xpath=//*[@id="rc-menu-uuid-68547-1-SETTING_PROGRAM-popup"]/li[2]/span

# Check Itemtype Page
${locator_program_itemtype_navigator}        xpath=//*[@id="root"]/div/div/main/div/div[1]/div[1]
${locator_program_itemtype_btn_create}       xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_program_itemtype_export}           xpath=//*[@id="root"]/div/div/main/div/div[2]/div[1]/button
${locator_program_itemtype_table}            xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div
${locator_program_itemtype_pagination}       xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul

# Check Create Itemtype Page
${locator_create_itemtype_navigator}         xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_create_itemtype_name}              name=name
${locator_create_itemtype_subitemname}       name=item_type_subs.0.name
${locator_create_itemtype_subitemname_2}     name=item_type_subs.1.name
${locator_create_itemtype_subitemname_3}     name=item_type_subs.2.name
${locator_create_itemtype_subitemname_4}     name=item_type_subs.3.name
${locator_create_itemtype_subitemname_5}     name=item_type_subs.4.name
${locator_create_itemtype_subitemname_6}     name=item_type_subs.5.name
${locator_create_itemtype_subitemname_7}     name=item_type_subs.6.name
${locator_create_itemtype_subitemname_8}     name=item_type_subs.7.name
${locator_create_itemtype_subitemname_9}     name=item_type_subs.8.name
${locator_create_itemtype_subitemname_10}    name=item_type_subs.9.name
${locator_create_itemtype_addsubitemname}    xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div/div[1]
${locator_create_itemtype_delete_subitem}    xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[2]/div/div
${locator_create_itemtype_btn_cancel}        xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_itemtype_btn_save}          xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_itemtype_warning}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[2]
${locator_create_itemtype_warning_cancel}    xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_itemtype_warning_ok}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Search / Filter
${locator_itemtype_search_bar}               xpath=//*[@id="myFormText"]/div/div/div/div/div/span
${locator_itemtype_search_field}             id=text
${locator_itemtype_search_checktable}        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[2]
${locator_itemtype_search_closeicon}         xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_itemtype_search_filter}            xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_itemtype_filter}                   xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]
${locator_itemtype_filter_itemtypename}      name=name
${locator_itemtype_filter_status}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/form/div/div[2]/div/div/div/span[1]
${locator_itemtype_filter_status_dd}         xpath=/html/body/div[4]/div/div/div[2]/div/div/div
${locator_itemtype_filter_status_active}     xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_itemtype_filter_btn_clear}         xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_itemtype_filter_btn_search}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button

# Check Action Btn
${locator_itemtype_action}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[4]/td[6]/a
${locator_itemtype_action_dd}                xpath=/html/body/div[5]/div/ul
${locator_itemtype_action_view}              xpath=/html/body/div[5]/div/ul/li[1]/span/div/span
${locator_itemtype_action_delete}            xpath=/html/body/div[5]/div/ul/li[2]/span/div/span

# Check View Page
${locator_view_itemtype_navigator}           xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_view_itemtype_status}              xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div/div[2]/div
${locator_view_itemtype_itemtype_name}       xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div/input              
${locator_view_itemtype_subitemtype_name}    xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[1]/input
${locator_view_itemtype_add_subitem}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div/div[1]
${locator_view_itemtype_delete_subitem}      xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[1]/div[2]/div/div
${locator_view_itemtype_btn_cancel}          xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_view_itemtype_btn_edit}            xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Check Edit Page
${locator_edit_itemtype_navigator}           xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_edit_itemtype_status}              xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div/div[2]/a/div
${locator_edit_itemtype_active_inact}        xpath=/html/body/div[3]/div/div
${locator_edit_itemtype_name}                name=name
${locator_edit_itemtype_subname}             name=item_type_subs.0.name
${locator_edit_itemtype_addsubname}          xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div/div[1]
${locator_edit_itemtype_subname1}            name=item_type_subs.1.name
${locator_edit_itemtype_delete_sub1}         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div[2]/div/div
${locator_edit_itemtype_btn_cancel}          xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_edit_itemtype_btn_save}            xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_edit_itemtype_warning_cancel}      xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_edit_itemtype_warning_ok}          xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Pagination
${locator_itemtype_pagination}               xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[6]/div/div[1]/span[1]
${locator_itemtype_pagination_dd}            xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[6]/div/div[2]
${locator_itemtype_pagination_dd_25page}     xpath=//*[@id="rc_select_1_list_1"]
${locator_itemtype_pagination_check_row20}   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[20]
${locator_itemtype_pagination_dd_15page}     xpath=//*[@id="rc_select_1_list_0"]
${locator_itemtype_pagination_check_row10}   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[10]
${locator_itemtype_pagination_<}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_itemtype_pagination_num1}          xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]
${locator_itemtype_pagination_num2}          xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[3]
${locator_itemtype_pagination_num3}          xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]
${locator_itemtype_pagination_>}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[5]/button
${locator_itemtype_pagination_checkrow20}    xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[5]
${locator_itemtype_pagination_checkrow32}    xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[2]