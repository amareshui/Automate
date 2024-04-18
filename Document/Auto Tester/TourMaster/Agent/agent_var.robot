*** Variables ***
# Open Web & Login Page
${url}                        https://dev-tm.techmaster.in.th/login
${browser}                    chrome
${locator_username}           id=login999
${locator_password}           id=pass999
${locator_btnlogin}           id=btn_login_submit

# Ckeck Agent Page
${locator_icon_left_right}                    xpath=//*[@id="root"]/div/aside/div/div[1]/div[1]/button
${locator_dashboard}                          xpath=//*[@id="root"]/div/aside/div/ul/li[1]/span
${locator_manu_agent}                         id=agent
${locator_agent_btn_create}                   xpath=//*[@id="root"]/div/div/main/div/div[1]/div[2]/div/button

# Check Create Agent Page
${locator_create_img}                         id=image-upload
${locator_create_agent_name}                  name=name
${locator_create_phone_num}                   name=phone
${locator_create_email}                       name=email
${locator_create_address}                     name=address
${locator_create_country}                     xpath=//*[@id="rc_select_16"]
${locator_create_province}                    xpath=//*[@id="rc_select_17"]
${locator_create_district}                    xpath=//*[@id="rc_select_18"]
${locator_create_subdistrict}                 xpath=//*[@id="rc_select_19"]
${locator_create_postalcode}                  name=postal_code
${locator_create_btn_cancel}                  xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_create_btn_save}                    xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_create_warning}                     xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div
${locator_create_warning_btn_cancel}          xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_create_warning_btn_ok}              xpath=/html/body/div[6]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# Search Bar
${locator_search}                             xpath=//*[@id="myFormText"]/div/div/div/div/div/span
${locator_search_field}                       id=text
${locator_search_filter}                      xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button
${locator_search_close_field}                 xpath=//*[@id="myFormText"]/div/div/div/div/div/span/span[2]/div
${locator_search_filter_modal}                xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[1]
${locator_search_filter_agent_name}           name=name
${locator_search_filter_status}               xpath=//*[@id="rc_select_21"]
${locator_search_filter_ac}                   xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[1]
${locator_search_filter_inac}                 xpath=/html/body/div[4]/div/div/div[2]/div/div/div/div[2]
${locator_search_filter_btn_clear}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[1]/button
${locator_search_filter_btn_search}           xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div/div[2]/div[2]/button
${locator_search_filter_icon_close}           xpath=//*[@id="root"]/div/div/main/div/div[2]/div/button/div[2]/svg

# View Agent
${locator_action}                             xpath=//*[@id="root"]/div/div/main/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr[3]/td[7]/a
${locator_action_view}                        xpath=/html/body/div[5]/div/ul/li[1]
${locator_action_view_dropdown}               xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[1]/div
${locator_action_view_imgview}                xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div/div[1]/div/div/span
${locator_action_view_cancel}                 xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_action_view_Edit}                   xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button

# Edit Agent
${locator_edit_img}                           xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div/div[1]/div/span/div/span/div/div
${locator_edit_img_view}                      xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div/div[1]/div/div/span[1]
${locator_edit_img_delete}                    xpath=//*[@id="root"]/div/div/main/div/div/div[2]/div/form/div[1]/div/div[2]/div/div/div[1]/div/div/span[2]
${locator_edit_agent_name}                    name=name
${locator_edit_phone_num}                     name=phone
${locator_edit_email}                         name=email
${locator_edit_address}                       name=address
${locator_edit_country}                       xpath=//*[@id="rc_select_28"]
${locator_edit_province}                      xpath=//*[@id="rc_select_29"]
${locator_edit_district}                      xpath=//*[@id="rc_select_30"]
${locator_edit_sub_district}                  xpath=//*[@id="rc_select_31"]
${locator_edit_prostalcode}                   name=postal_code
${locator_edit_btn_cancel}                    xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[1]/button
${locator_edit_btn_save}                      xpath=//*[@id="root"]/div/div/main/div/div/div[1]/div[2]/div/div[2]/button
${locator_edit_warning}                       xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div
${locator_edit_warning_btn_cancel}            xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[1]/button
${locator_edit_warning_btn_ok}                xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[4]/div[2]/button

# pagination
