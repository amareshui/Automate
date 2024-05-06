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

# Search Select Role
${locator_search_role_selectrow}                              xpath=//*[@id="option-select-role-0"]
${locator_search_role_admin}                                  xpath=//*[@id="option-select-role-1"]
${locator_search_role_author}                                 xpath=//*[@id="option-select-role-2"]
${locator_search_role_editor}                                 xpath=//*[@id="option-select-role-3"]