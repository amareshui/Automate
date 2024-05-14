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
${locator_menu_supplier}                          id=vehicle_supplierlist

# Check Supplier Page
${locator_supplier_navigator}                     xpath=//*[@id="root"]/div/div/main/div/div[1]
${locator_supplier_btn_create}                    xpath=//*[@id="root"]/div/div/main/div/div[1]/div/div/button
${locator_supplier_table}                         xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div

# Check Create Supplier Page
${locator_create_supplier_navigator}              xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_create_supplier_progressbar}            xpath=//*[@id="root"]/div/div/main/div/div/div[2]
${locator_create_supplier_btn_cancel}             xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_supplier_btn_next}               xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
# general detail
${locator_create_supplier_add_img}                xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[1]/div/div/span/div/span
${locator_create_supplier_name}                   name=name
${locator_create_supplier_contactperson}          name=contract_person
${locator_create_supplier_lineid}                 name=line_id
${locator_create_supplier_phone}                  name=phone
${locator_create_supplier_email}                  name=email
${locator_create_supplier_address}                name=address
${locator_create_supplier_country}                xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[8]/div[1]/div/div/div/span[1]
${locator_create_supplier_country_select}         xpath=/html/body/div[5]/div/div/div[2]/div/div/div
${locator_create_supplier_province}               xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[8]/div[2]/div/div/div/span[1]
${locator_create_supplier_province_select}        xpath=/html/body/div[6]/div/div/div[2]/div[1]/div/div/div[1]
${locator_create_supplier_district}               xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[8]/div[3]/div/div/div/span[1]
${locator_create_supplier_district_select}        xpath=/html/body/div[7]/div/div/div[2]/div[1]/div/div/div[4]
${locator_create_supplier_subdistrict}            xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[8]/div[4]/div/div/div/span[1]
${locator_create_supplier_subdistrict_select}     xpath=/html/body/div[8]/div/div/div[2]/div/div/div/div[5]
${locator_create_supplier_postalcode}             name=postal_code
# Bank Detail Payment
${locator_create_supplier_payment}                    xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[2]/div/div[2]/div/div/div/div/div/span[1]
${locator_create_supplier_payment_banktran}           xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[1]
${locator_create_supplier_payment_banktr_bank}        xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[2]/div/div[2]/div/div[2]/div/div/div/span[1]
${locator_create_supplier_payment_banktr_kbank}       xpath=/html/body/div[6]/div/div/div[2]/div[1]/div/div/div[2]
${locator_create_supplier_payment_banktr_accnum}      name=acc_no
${locator_create_supplier_payment_banktr_accname}     name=acc_name
${locator_create_supplier_payment_cash}               xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[2]
${locator_create_supplier_payment_credit}             xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[3]
${locator_create_supplier_payment_credit_type}        xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[2]/div/div[2]/div/div[2]/div/div/div/span[1]
${locator_create_supplier_payment_credit_visa}        xpath=/html/body/div[6]/div/div/div[2]/div/div/div/div[1]
${locator_create_supplier_payment_credit_jcb}         xpath=/html/body/div[6]/div/div/div[2]/div/div/div/div[2]
${locator_create_supplier_payment_credit_unionpay}    xpath=/html/body/div[6]/div/div/div[2]/div/div/div/div[3]
${locator_create_supplier_payment_credit_mastercard}  xpath=/html/body/div[6]/div/div/div[2]/div/div/div/div[4]
${locator_create_supplier_payment_credit_name}        name=acc_name
${locator_create_supplier_payment_chque}              xpath=/html/body/div[5]/div/div/div[2]/div/div/div/div[4]
# Group type
${locator_create_supplier_grouptype}                  xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[3]/div/div[2]/div/div/div/div/div
# select multi group type เปลี่ยนชื่อที่ต้องการได้
${locator_create_supplier_grouptype_select1}          name=!@#
${locator_create_supplier_grouptype_select2}          name=baba
# Create Grouptype in supplier
${locator_create_supplier_create_grouptype}              xpath=/html/body/div[5]/div/div/div[4]
${locator_create_supplier_create_grouptype_table}        xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div
${locator_create_supplier_create_grouptype_pagina}       xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/ul
${locator_create_supplier_create_grouptype_name}         name=name
${locator_create_supplier_create_grouptype_capacity}     name=capacity
${locator_create_supplier_create_grouptype_capacity_+}   xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[2]/div/div[2]/div/div[1]/span[1]
${locator_create_supplier_create_grouptype_guide}        name=guide_staff
${locator_create_supplier_create_grouptype_recommend}    name=recommend
${locator_create_supplier_create_grouptype_btn_cancel}   xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_create_supplier_create_grouptype_btn_save}     xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_create_supplier_create_grouptype_warn_can}     xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_supplier_create_grouptype_warn_ok}      xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button
${locator_create_supplier_create_grouptype_closeicon}    xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[1]/div[2]

# Create supplier in Supplier Login
${locator_create_supplier_supplierlogin_username}        name=username
${locator_create_supplier_supplierlogin_password}        name=password
${locator_create_supplier_supplierlogin_password_eye}    xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div/div[2]/div/div[2]/span[1]/span
${locator_create_supplier_supplierlogin_con_pass}        name=c_password
${locator_create_supplier_supplierlogin_con_pass_eye}    xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div/div[2]/div/div[3]/span[1]/span
${locator_create_supplier_supplierlogin_btn_cancel}      xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_supplier_supplierlogin_btn_back}        xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_supplier_supplierlogin_btn_save}        xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[3]/button
${locator_create_supplier_supplierlogin_warning_cancel}  xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_supplier_supplierlogin_warning_ok}      xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Search / Filter
${locator_supplier_search_bar}                           id=text
${locator_supplier_search_check}                         xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[5]/td[3]
${locator_supplier_search_closeicon}                     xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_supplier_search_filter}                        xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button
${locator_supplier_filter_supplier_name}                 name=name                               
${locator_supplier_filter_status}                        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/form/div/div[2]/div/div/div
${locator_supplier_filter_status_active}                 xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_supplier_filter_status_inactive}               xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[2]
${locator_supplier_filter_btn_clear}                     xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_supplier_filter_btn_search}                    xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_supplier_filter_btn_closeicon}                 xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button/div[2]

# Hover Grouptype quantity
${locator_hover_quantity}                                xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[4]
${locator_hover_quantity_dd}                             xpath=/html/body/div[5]/div/div

# Action 
${locator_supplier_action}                               xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[7]/a
${locator_supplier_action_view}                          xpath=/html/body/div[4]/div/ul/li[1]/span/div/span
${locator_supplier_action_delete}                        xpath=/html/body/div[4]/div/ul/li[2]/span/div/span

# View Page
${locator_supplier_view_navigator}                       xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_supplier_view_tabmenu_gendetail}               xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div[1]/div/div[1]
${locator_supplier_view_tabmenu_suplogin}                xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div[1]/div/div[2]
${locator_supplier_view_name}                            name=name
${locator_supplier_view_contactperson}                   name=contract_person
${locator_supplier_view_lineid}                          name=line_id
${locator_supplier_view_phone}                           name=phone
${locator_supplier_view_email}                           name=email
${locator_supplier_view_address}                         name=address
${locator_supplier_view_btn_cancel}                      xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_supplier_view_btn_edit}                        xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Edit Page
${locator_supplier_edit_navigator}                       xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[1]
${locator_supplier_edit_tabmenu_gendetail}               xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div[1]/div/div[1]
${locator_supplier_edit_add_img}                         xpath=//*[@id="rc-tabs-0-panel-General Detail"]/div/div[1]/div/div[2]/div/div/div[1]/div/div/span
${locator_supplier_edit_view_img}                        xpath=//*[@id="rc-tabs-0-panel-General Detail"]/div/div[1]/div/div[2]/div/div/div[1]/div/div/div/span[1] 
${locator_supplier_edit_delete_img}                      xpath=//*[@id="rc-tabs-0-panel-General Detail"]/div/div[1]/div/div[2]/div/div/div[1]/div/div/div/span[2]
${locator_supplier_edit_name}                            name=name
${locator_supplier_edit_contactperson}                   name=contract_person
${locator_supplier_edit_lineid}                          name=line_id
${locator_supplier_edit__phone}                          name=phone
${locator_supplier_edit_email}                           name=email
${locator_supplier_edit_address}                         name=address
${locator_supplier_edit_payment}                         xpath=//*[@id="rc-tabs-0-panel-General Detail"]/div/div[2]/div/div[2]/div/div[1]/div/div/div
${locator_supplier_edit_payment_cash}                    xpath=/html/body/div[7]/div/div/div[2]/div/div/div/div[2]
${locator_supplier_edit_grouptype}                       xpath=//*[@id="rc-tabs-0-panel-General Detail"]/div/div[3]/div/div[2]/div/div/div/div/div
${locator_supplier_edit_grouptype_selectout}             xpath=/html/body/div[8]/div/div/div[2]/div[1]/div/div/div[1]
${locator_supplier_edit_grouptype_add_grouptype}         xpath=/html/body/div[8]/div/div/div[4]
# Add Grouptype in Edit Supplier
${locator_supplier_edit_grouptype_add_gt_table}          xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/div[1]/div/div/div/div/div/div/div
${locator_supplier_edit_grouptype_add_gt_name}           name=name
${locator_supplier_edit_grouptype_add_gt_capacity}       name=capacity
${locator_supplier_edit_grouptype_add_gt_guide}          name=guide_staff
${locator_supplier_edit_grouptype_add_gt_recommend}      name=recommend
${locator_supplier_edit_grouptype_add_gt_btn_cancel}     xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_supplier_edit_grouptype_add_gt_closeicon}      xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[1]/div[1]/div[2]
${locator_supplier_edit_grouptype_add_gt_btn_save}       xpath=/html/body/div[4]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_supplier_edit_grouptype_add_gt_warn_cancel}    xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_supplier_edit_grouptype_add_gt_warn_ok}        xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Edit Supplier Menu Suppliter Login
${locator_supplier_edit_tabmenu_suplogin}                xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div[1]/div/div[2]
${locator_supplier_edit_suplogin_username}               name=username
${locator_supplier_edit_suplogin_pass}                   name=password
${locator_supplier_edit_suplogin_confirm_pass}           name=c_password
${locator_supplier_edit_suplogin_re_pass}                xpath=//*[@id="rc-tabs-0-panel-Supplier login"]/div/div/div[2]/div[2]
${locator_supplier_edit_suplogin_re_pass_new}            name=new_password
${locator_supplier_edit_suplogin_re_pass_confirm_new}    name=confirm_password
${locator_supplier_edit_suplogin_re_pass_new_eye}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[1]/span[1]/span    
${locator_supplier_edit_suplogin_re_pass_con_eye}        xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div/form/div[2]/span[1]/span
${locator_supplier_edit_suplogin_re_pass_btn_cancel}     xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_supplier_edit_suplogin_re_pass_btn_save}       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_supplier_edit_suplogin_re_pass_warn_cancel}    xpath=/html/body/div[7]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_supplier_edit_suplogin_re_pass_warn_ok}        xpath=/html/body/div[7]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

