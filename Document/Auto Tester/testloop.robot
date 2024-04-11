*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                            https://automate-test.stpb-digital.com/login/
${browser}                        chrome
${locator_page}                   xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/div[1]/h6
${locator_Email}                  id = email
${locator_password}               name = password
${locator_btnlogin}               id = btn-login
${locator_btnunmark}              xpath = //*[@id="__next"]/div[1]/div/div/div/div/div/form/div[2]/div/div/button
${locator_err_email}              xpath = //*[@id="__next"]/div[1]/div/div/div/div/div/form/div[1]/p
${locator_err_password}           xpath = //*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[2]/p
${locator_create_account}         xpath = //*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[4]/p[2]/a

*** Keywords ***
Open Website
    Open Browser                  ${url}                ${browser}
    Maximize Browser Window
    Wait Until Page Contains      Welcome to Kru P' Beam!

Input Email
    [Arguments]                       ${input}              
    Wait Until Element Is Visible     ${locator_Email}
    Input Text                        ${locator_Email}      ${input}
    Press Keys                        ${locator_Email}      Enter

Input Data
    [Arguments]                       ${input_email}        ${input_password}
    Wait Until Element Is Visible     ${locator_email}
    Wait Until Element Is Visible     ${locator_password}
    Input Text                        ${locator_Email}      ${input_email}
    Input Text                        ${locator_password}   ${input_password}
    Click Element                     ${locator_btnlogin}

Verify error massage email
    Wait Until Element Is Visible     ${locator_err_email}
    ${txt}=                           Get Text              ${locator_err_email}
    Should Be Equal As Strings        ${txt}                email must be a valid email

Verrify error massage password
    Wait Until Element Is Visible     ${locator_err_password}
    ${txt_pass}=                      Get Text              ${locator_err_password}
    Should Be Equal As Strings        ${txt_pass}           password must be at least 5 characters

*** Test Cases ***
Verify Input Email fail
    @{list}                            Create List          kkkkkkk    0000000    เทสๆ
    FOR  ${i}  IN  @{list}
        Open Website
        Input Email                     ${i}
        Verify error massage email
        Close All Browsers
    END

Verify Input Data fail
    @{list}                            Create List          0000000000    123    lllllllll    กกก    dfgdดกเก    สสส
    FOR                                ${email}    ${pass}  IN            @{list}
        Open Website
        Input Data                     ${email}    ${pass}
        Verify error massage email
        Verrify error massage password
        Close All Browsers
    
    END
    
    