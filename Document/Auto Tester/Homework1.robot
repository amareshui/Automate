*** Settings ***
Library    SeleniumLibrary

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

*** Keywords ***
Open Browser Web
    Open Browser                     ${url}                  ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.5s
Input data for login page
    ${p}    Set Variable             ${321654987}
    Wait Until Element Is Visible    ${locator_Email}
    Wait Until Element Is Visible    ${locator_password}
    Input Text                       ${locator_Email}         user.test@krupbeam.com
    Input Text                       ${locator_password}      123456789
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

*** Test Cases ***
TC000-Check Page
     Open Browser Web
     Maximize Browser Window
     Wait Until Page Contains                                Kru P' Beam
     Wait Until Element Is Visible    ${locator_Email}
     Wait Until Element Is Visible    ${locator_password}
     Wait Until Element Is Visible    ${locator_btnlogin}
     Wait Until Element Is Visible    ${locator_create_account}
     Close All Browsers

TC001-login pass
    Open Browser Web
    Input data for login page
    Close Browser

TC002-login fail
    Open Browser Web
    Input data for login fail
    Close All Browsers

TC003-Check Email and Password Not in Format
    Open Browser Web
    Input Data Wrong Format
    Close All Browsers

TC004-Check Error Required Field is not filled in
    Open Browser Web
    Input Empty In Email Field
    Close All Browsers

TC005-Check Click Hyperlink
    Open Browser Web
    Click Link Register
    Close All Browsers

