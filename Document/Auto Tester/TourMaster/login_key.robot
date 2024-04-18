*** Settings ***
Library                        SeleniumLibrary
Resource                       ${CURDIR}/login_var.robot

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
    Should Be Equal As Strings      ${text}                    Username is required
    ${text2}=    Get Text           ${locator_no_password}
    Should Be Equal As Strings      ${text2}                   Password is required