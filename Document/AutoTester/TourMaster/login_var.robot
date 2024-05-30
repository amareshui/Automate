*** Variables ***
${url}                        https://dev-tm.techmaster.in.th/login
${browser}                    chrome
${locator_username}           id=login999
${locator_no_username}        xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/span[2]
${locator_password}           id=pass999
${locator_no_password}        xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/span[2]
${locator_btneye}             xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/span[1]/span[2]
${locator_btnlogin}           id=btn_login_submit
${locator_err_user_pass}      xpath=//*[@id="root"]/div/div/div[2]/form/div[3]