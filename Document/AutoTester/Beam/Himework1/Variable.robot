*** Variables ***
${url}                        https://automate-test.stpb-digital.com/login/
${browser}                    chrome
${locator_page}               xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/div[1]/h6
${locator_Email}              id = email
${locator_password}           name = password
${locator_btnlogin}           id = btn-login
${locator_btnunmark}          xpath = //*[@id="__next"]/div[1]/div/div/div/div/div/form/div[2]/div/div/button
${locator_err_email}          xpath = //*[@id="__next"]/div[1]/div/div/div/div/div/form/div[1]/p
${locator_err_password}       xpath = //*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[2]/p
${locator_create_account}     xpath = //*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[4]/p[2]/a