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
${locator_create_supplier_addimg}                 xpath=//*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[1]/div/div/span/div/span
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
${locator_create_supplier_payment}                //*[@id="root"]/div/div/main/div/div/div[3]/div/div/div[2]/div/div[2]/div/div/div/div/div/span[1]
${locator_create_supplier_payment_}
${locator_create_supplier_payment_}
${locator_create_supplier_payment_}
${locator_create_supplier_payment_}
${locator_create_supplier_payment_}

${locator_create_supplier_}