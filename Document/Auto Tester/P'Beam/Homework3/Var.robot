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
