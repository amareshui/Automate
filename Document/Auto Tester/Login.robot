*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                        https://dev-tm.techmaster.in.th/login
${browser}                    chrome
${locator_username}           id=username
${locator_no_username}        xpath=//*[@id="username_help"]/div
${locator_password}           id=password
${locator_no_password}        css=#password_help > div
${locator_btneye}             xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/div[2]/div[2]/div/div/div/div/div/span/span[2]/span
${locator_btnlogin}           xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/div/button
${locator_err_user_pass}      xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/div[2]/div[3]


*** Keywords ***
Open Browser Web
    Open Browser                    ${url}                    ${browser}
    Maximize Browser Window
    Set Selenium Speed              0.5s

Input Data for Login Pass
    Input Text                      ${locator_username}        superadmin
    Input Text                      ${locator_password}        P@ssW0rd
    Click Element                   ${locator_btneye}
    Click Element                   ${locator_btnlogin}

Input Data for login fail
    Input Text                      ${locator_username}        superandmin
    Input Text                      ${locator_password}        12345
    Click Element                   ${locator_btneye}
    Click Element                   ${locator_btnlogin}
    ${txt}=    Get Text             ${locator_err_user_pass}
    Should Be Equal As Strings      ${txt}                     Incorrect username or password.
    Click Element                   ${locator_btnlogin}

Input Delete Data Not Login
    Input Text                      ${locator_username}        1234
    Input Text                      ${locator_password}        1234
    Clear Element Text              ${locator_username}
    Clear Element Text              ${locator_password}


Input Empty Data In Username And Password
    Input Text                      ${locator_username}        ${EMPTY}
    Input Text                      ${locator_password}        ${EMPTY}
    Click Element                   ${locator_btnlogin}
    ${text}=    Get Text            ${locator_no_username}
    Should Be Equal As Strings      ${text}                    Please input your username!
    ${text2}=    Get Text           ${locator_no_password}
    Should Be Equal As Strings      ${text2}                   Please input your password!


*** Test Cases ***
TC01-Login Pass
    Open Browser Web
    Input Data for Login Pass
    Close All Browsers

TC02-Login Fail
    Open Browser Web
    Input Data for login fail
    Close All Browsers

TC03-Login No Username or Password
    Open Browser Web
    Input Empty Data In Username And Password
    Close All Browsers
    