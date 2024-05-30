*** Settings ***
Library                              SeleniumLibrary
Resource                             ${CURDIR}/Variable.robot

*** Keywords ***
Open Browser Web
    Open Browser                     ${url}                  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${locator_Email}
    Wait Until Element Is Visible    ${locator_password}
    Wait Until Element Is Visible    ${locator_btnlogin}
    Wait Until Element Is Visible    ${locator_create_account}

Input data for login page
    [Arguments]                      ${email}                 ${password}
    Wait Until Element Is Visible    ${locator_Email}
    Wait Until Element Is Visible    ${locator_password}
    Input Text                       ${locator_Email}         ${email}  
    Input Text                       ${locator_password}      ${password}
    Click Element                    ${locator_btnunmark}
    Click Element                    ${locator_btnlogin}
    Wait Until Page Contains                                  Search Filters

Input data for login fail
    Input Text                       ${locator_Email}        Beam12345678@gmail.com
    Input Text                       ${locator_password}     12345678900
    Click Element                    ${locator_btnunmark}
    Click Element                    ${locator_btnlogin}
    ${txt}=    Get Text              ${locator_err_email}
    Should Be Equal As Strings       ${txt}                     Email or Password is invalid

Input Data Wrong Format
    # Set Password เพื่อนำไปใช้กรอกรหัสผ่านได้
    ${p}    Set Variable          ${12}
    # Input Text                  ${locator_Email}   
    Input Text                    ${locator_Email}          l09912345678
    # Input Text                  ${locator_password}       123
    Input Text                    ${locator_password}       ${p}
    Click Element                 ${locator_btnlogin} 
    ${txt}=    Get Text           ${locator_err_email}
    Should Be Equal As Strings    ${txt}                    email must be a valid email
    ${txt1}=    Get Text          ${locator_err_password}
    Should Be Equal As Strings    ${txt1}                   password must be at least 5 characters   

Input Empty In Email Field
    Input Text                    ${locator_Email}           ${EMPTY}
    Click Element                 ${locator_btnlogin}
    ${txt}=    Get Text           ${locator_err_email}
    Should Be Equal As Strings    ${txt}                     email is a required field
    ${txt1}=    Get Text          ${locator_err_password}
    Should Be Equal As Strings    ${txt1}                    password must be at least 5 characters

Click Link Register
    Click Element                 ${locator_create_account}
    Wait Until Page Contains                                 Kru P' Beam