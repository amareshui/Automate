*** Variables ***
${url}                                                    https://dev-tm.techmaster.in.th/login
${browser}                                                chrome

# Login Page
${locator_username}                                       name=username
${locator_password}                                       name=password
${locator_btneye}                                         xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div/div/div/span/span[2]/span
${locator_btnlogin}                                       id=btn_login_submit

# Nav_bar
${locator_icon_left_right}                                xpath=//*[@id="root"]/div/aside/div/div[1]/div[1]/button
${locator_dashboard}                                      xpath=//*[@id="root"]/div/aside/div/ul/li[1]/span
${locator_menu_vehicle}                                   xpath=//*[@id="root"]/div/aside/div/ul/li[5]/ul/li[3]/div
# ${locator_menu_vehicle_dd}                                xpath=//*[@id="rc-menu-uuid-65833-1-VEHICLE-popup"]
${locator_menu_ownvehicle}                                id=vehicle_ownvehicle

# Check Group Type Page
${locator_ownvehicle_navigator}                           xpath=//*[@id="root"]/div/div/main/div/div[1]
${locator_ownvehicle_btn_create}                          xpath=//*[@id="root"]/div/div/main/div/div[1]/div/div/button
${locator_ownvehicle_export}                              xpath=//*[@id="root"]/div/div/main/div/div[2]/div[1]/button
${locator_ownvehicle_table}                               xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div

# Check Create Own Vehicle Page
${locator_create_ownvehicle_navigator}                    xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_create_ownvehicle_vehicleplate}                 name=vehicle_plate
${locator_create_ownvehicle_grouptype}                    xpath=//*[@id="rc_select_33"]
${locator_create_ownvehicle_grouptype_dd}                 xpath=/html/body/div[4]/div/div/div[2]/div[1]
    ## หากมีการดำเนินการแล้วต้องเปลี่ยน name ใหม่ ให้อ้างอิงจากที่มีอยู่ในลิส
${locator_create_ownvehicle_grouptype_chose1}             name=baba
    # Add group type in create own vehicle        
${locator_create_ownvehicle_create_grouptype}             xpath=/html/body/div[4]/div/div/div[4]/div/div/button
    ## table group type in create own vehicle
${locator_create_ownvehicle_grouptype_table}              xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div
${locator_create_ownvehicle_grouptype_pagina}             xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[8]/div/div[1]/span[1]
${locator_create_ownvehicle_grouptype_pagina_25}          xpath=//*[@id="rc_select_29_list_1"]
${locator_create_ownvehicle_grouptype_pagina_row20}       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div/div[2]/table/tbody/tr[21]
${locator_create_ownvehicle_grouptype_pagina_15}          xpath=//*[@id="rc_select_29_list_0"]
${locator_create_ownvehicle_grouptype_pagina_row10}       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div/div[2]/table/tbody/tr[11]
${locator_create_ownvehicle_grouptype_pagina_<}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[1]/button
${locator_create_ownvehicle_grouptype_pagina_num1}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[2]/a
${locator_create_ownvehicle_grouptype_pagina_num2}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[3]/a
${locator_create_ownvehicle_grouptype_pagina_>}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[7]/button
    ## Create group type in create own vehicle
${locator_create_ownvehicle_create_grouptype_name}        name=name
${locator_create_ownvehicle_create_grouptype_capacity}    name=capacity
${locator_create_ownvehicle_create_grouptype_guide}       name=guide
${locator_create_ownvehicle_create_grouptype_recommend}   name=recommend
${locator_create_ownvehicle_create_grouptype_cancel}      xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_create_ownvehicle_create_grouptype_save}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
# Check Create Own Vehicle Page (ต่อ)
${locator_create_ownvehicle_driver_name}                  name=driver_name
${locator_create_ownvehicle_phone_number}                 name=phone
${locator_create_ownvehicle_btn_cancel}                   xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_ownvehicle_btn_save}                     xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_ownvehicle_warning_cancel}               xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_ownvehicle_warning_ok}                   xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Search / Filter
${locator_ownvehicle_searchbar}                           id=text
${locator_ownvehicle_searchbar_closeicon}                 xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_ownvehicle_filter}                              xpath=//*[@id="root"]/div/div/main/div/div[2]/div[2]/button
${locator_ownvehicle_filter_grouptype}                    xpath=//*[@id="rc_select_30"]
${locator_ownvehicle_filter_grouptype_chose1}             xpath=/html/body/div[4]/div/div/div[2]/div[1]/div/div/div[3]
${locator_ownvehicle_filter_drivername}                   name=name
${locator_ownvehicle_filter_status}                       xpath=//*[@id="rc_select_31"]
${locator_ownvehicle_filter_status_ac}                    xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[1]
${locator_ownvehicle_filter_status_inac}                  xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[2]
${locator_ownvehicle_filter_btn_clear}                    xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_ownvehicle_filter_btn_search}                   xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button

# Check action
${locator_ownvehicle_action}                              xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[8]/a
${locator_ownvehicle_action_view}                         xpath=/html/body/div[6]/div/ul/li[1]
${locator_ownvehicle_action_delete}                       xpath=/html/body/div[6]/div/ul/li[2]

# Check View Page
${locator_ownvehicle_table_vehicleplate_view}             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[2]/a
${locator_ownvehicle_view_navigator}                      xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_ownvehicle_view_status}                         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div/div[2]/div
${locator_ownvehicle_view_vehicleplate}                   name=vehicle_plate
${locator_ownvehicle_view_grouptype}                      xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[2]/div/div/div/span[2]
${locator_ownvehicle_view_drivername}                     name=driver_name
${locator_ownvehicle_view_phone}                          name=phone
${locator_ownvehicle_view_btn_cancel}                     xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_ownvehicle_view_btn_edit}                       xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Check Edit Page
${locator_ownvehicle_edit_navigator}                      xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_ownvehicle_edit_status}                         xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div/div[2]/a/div
${locator_ownvehicle_edit_status_ac_inac}                 xpath=/html/body/div[5]/div/div
${locator_ownvehicle_edit_vehicleplate}                   name=vehicle_plate
${locator_ownvehicle_edit_grouptype}                      xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div[2]/div/div/div/span[1]
    ## หากมีการดำเนินการแล้วต้องเปลี่ยน name ใหม่ ให้อ้างอิงจากที่มีอยู่ในลิส
${locator_ownvehicle_edit_grouptype_chose1}             name=baba
    # Add group type in create own vehicle    
${locator_ownvehicle_edit_create_grouptype}             xpath=/html/body/div[4]/div/div/div[4]/div/div/button
    ## table group type in create own vehicle    
${locator_ownvehicle_edit_grouptype_table}              xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div
${locator_ownvehicle_edit_grouptype_pagina}             xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[8]/div/div[1]/span[1]
${locator_ownvehicle_edit_grouptype_pagina_25}          xpath=//*[@id="rc_select_39_list_1"]
${locator_ownvehicle_edit_grouptype_pagina_row20}       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div/div[2]/table/tbody/tr[21]
${locator_ownvehicle_edit_grouptype_pagina_15}          xpath=//*[@id="rc_select_39_list_0"]
${locator_ownvehicle_edit_grouptype_pagina_row10}       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div/div[2]/table/tbody/tr[11]
${locator_ownvehicle_edit_grouptype_pagina_<}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[1]/button
${locator_ownvehicle_edit_grouptype_pagina_num1}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[2]/a
${locator_ownvehicle_edit_grouptype_pagina_num2}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[3]/a
${locator_ownvehicle_edit_grouptype_pagina_>}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul/li[7]/button
    ## Create group type in create own vehicle
${locator_ownvehicle_edit_create_grouptype_name}        name=name
${locator_ownvehicle_edit_create_grouptype_capacity}    name=capacity
${locator_ownvehicle_edit_create_grouptype_guide}       name=guide_staff
${locator_ownvehicle_edit_create_grouptype_recommend}   name=recommend
${locator_ownvehicle_edit_create_grouptype_cancel}      xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_ownvehicle_edit_create_grouptype_save}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
# Check Create Own Vehicle Page (ต่อ)
${locator_ownvehicle_edit_driver_name}                  name=driver_name
${locator_ownvehicle_edit_phone_number}                 name=phone
${locator_ownvehicle_edit_btn_cancel}                   xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_ownvehicle_edit_btn_save}                     xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_ownvehicle_edit_warning_cancel}               xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_ownvehicle_edit_warning_ok}                   xpath=/html/body/div[5]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Check Pagination
${locator_ownvehicle_pagination}                        xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[4]/div/div
${locator_ownvehicle_pagination_25page}                 xpath=//*[@id="rc_select_42_list_1"]
${locator_ownvehicle_pagination_15page}                 xpath=//*[@id="rc_select_42_list_0"]
${locator_ownvehicle_pagination_<}                      xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[1]/button
${locator_ownvehicle_pagination_num1}                   xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[2]/a
${locator_ownvehicle_pagination_>}                      xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/ul/li[3]/button