*** Variables ***
${url}                                                        https://automate-test.stpb-digital.com/login/
${browser}                                                    chrome

# Login
${locator_Email}                                              id=email
${locator_password}                                           name=password
${locator_hidden_eye}                                         xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[2]/div/div/button
${locator_btn_login}                                          id=btn-login
${locator_btn_create_account}                                 xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[4]/p[2]/a
${locator_create_account_page}                                xpath=//*[@id="__next"]/div[1]/div/div/div/div/div/div/div[1]/h6

# Search Page
${locator_search_page}                                        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[1]/div/div[1]/div/span
${locator_search_select_role}                                 id=select-role
${locator_search_select_plan}                                 id=select-plan
${locator_search_select_status}                               id=select-status
${locator_search_btn_clear}                                   id=btn-clear
${locator_search_btn_search}                                  id=btn-search

# Search Select Role
${locator_search_role_selectrow}                              xpath=//*[@id="option-select-role-0"]
${locator_search_role_admin}                                  xpath=//*[@id="option-select-role-1"]
${locator_search_role_author}                                 xpath=//*[@id="option-select-role-2"]
${locator_search_role_editor}                                 xpath=//*[@id="option-select-role-3"]
${locator_search_role_maintainer}                             xpath=//*[@id="option-select-role-4"]
${locator_search_role_subscriber}                             xpath=//*[@id="option-select-role-5"]

# Search Select Plan
${locator_search_plan_selectrow}                              xpath=//*[@id="option-select-plan-0"]
${locator_search_plan_basic}                                  xpath=//*[@id="option-select-plan-1"]
${locator_search_plan_company}                                xpath=//*[@id="option-select-plan-2"]    
${locator_search_plan_enterprise}                             xpath=//*[@id="option-select-plan-3"]
${locator_search_plan_team}                                   xpath=//*[@id="option-select-plan-4"]

# Search Select Status
${locator_search_status_selectrow}                            xpath=//*[@id="option-select-status-0"]
${locator_search_status_pending}                              xpath=//*[@id="option-select-status-1"]
${locator_search_status_active}                               xpath=//*[@id="option-select-status-2"]
${locator_search_status_inactive}                             xpath=//*[@id="option-select-status-3"]

# Table
${locator_table}                                              xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]
${locator_table_all}                                          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div
${locator_pagination_count}                                   xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]
${locator_pagination_50}                                      xpath=//*[@id="menu-"]/div[3]/ul/li[3]
${locator_pagination_page50}                                  xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/p[2]
${locator_pagination_>}                                       xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[2]
${locator_pagination_<}                                       xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[1]

# Notification
${locator_noti}                                               xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/button
${locator_noti_read_all}                                      xpath=/html/body/div[3]/div[3]/ul/li[2]/button

# profile
${locator_profile}                                            xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/span/div
${locator_profile_logout}                                     xpath=/html/body/div[3]/div[3]/ul/li

# Add User
${locator_btn_add_user}                                       xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[1]/div/a

# Page Add User
${locator_add_user_firstname}                                 xpath=//*[@id="firstname"]
${locator_add_user_lastname}                                  xpath=//*[@id="lastname"]
${locator_add_user_email}                                     id=email
${locator_add_user_password}                                  id=password
${locator_add_user_mobile_phone}                              id=mobile-phone
${locator_add_user_gender}                                    name=validation-basic-radio
${locator_add_user_gender_female}                             xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/div[6]/div/label[1]/span[1]/input
${locator_add_user_gender_male}                               xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/div[6]/div/label[2]/span[1]/input
${locator_add_user_sql}                                       name=courses.SQL
${locator_add_user_test_manual}                               name=courses.Test Manual
${locator_add_user_automate_test}                             name=courses.Automate Test
${locator_add_user_automate_test2}                            name=courses.Automate Test2
${locator_add_user_nationality}                               id=nationality
${locator_add_user_nationality_thai}                          xpath=//*[@id="menu-"]/div[3]/ul/li[221]
${locator_add_user_select_role}                               id=select-role
${locator_add_user_select_role_admin}                         xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_add_user_select_plan}                               id=select-plan
${locator_add_user_select_plan_basic}                         xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_add_user_reset}                                     xpath=//*[@id="reset"]
${locator_add_user_btn_sign_up}                               xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/button
${locator_add_user_warning}                                   xpath=/html/body/div[3]/div[3]/div
${locator_add_user_warning_btn_ok}                            xpath=//*[@id="btn-ok"]

# error Add user
${locator_err_firstname}                                      id=error-firstname
${locator_err_lastname}                                       id=error-lastname
${locator_err_email}                                          id=error-email
${locator_err_password}                                       id=error-password
${locator_err_phone}                                          id=error-mobile-phone
${locator_err_gender}                                         id=validation-basic-gender
${locator_err_course}                                         id=validation-basic-courses
${locator_err_nationality}                                    id=validation-basic-nationality
${locator_err_role}                                           id=validation-role
${locator_err_plan}                                           id=validation-plan
