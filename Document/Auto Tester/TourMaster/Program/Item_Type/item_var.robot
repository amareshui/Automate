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
${locator_menu_itemtype}                      xpath=//*[@id="rc-menu-uuid-37656-1-PROGRAM-popup"]/li[2]/span/a

# Check Itemtype Page
${locator_program_itemtype_navigator}        xpath=//*[@id="root"]/div/div/main/div/div[1]/div[1]
${locator_program_itemtype_create}           xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button
${locator_program_itemtype_export}           xpath=//*[@id="root"]/div/div/main/div/div[2]/div[1]/button
${locator_program_itemtype_table}            xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div
${locator_program_itemtype_pagination}       xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul

# Check Create Itemtype Page
${locator_create_itemtype_navigator}         xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_create_itemtype_name}              name=name
${locator_create_itemtype_subitemname}       name=item_type_subs.0.name
${locator_create_itemtype_subitemname_2}     name=item_type_subs.1.name
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
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}
${locator_view_itemtype_}

