*** Settings ***
Library               SeleniumLibrary

*** Variables ***
${url}                              https://automate-test.stpb-digital.com/register/
${browser}                          chrome
${locator_fristname}                id=firstname
${locator_lastname}                 id=lastname
${locator_email}                    id=email
${locator_password}                 id=password
${locator_phone}                    id=mobile-phone
${locator_radio}                    validation-basic-radio
${locator_checksql}                 name=courses.SQL
${locator_checkmanual}              name=courses.Test Manual
${locator_select_nation}            id=nationality
${locator_select_nation_afghan}     xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_select_nation_jp}         xpath=//*[@id="menu-"]/div[3]/ul/li[112]
${locator_select_role}              id=select-role
${locator_select_role_admin}        css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(1)
${locator_select_plan}              id=select-plan
${locator_select_plan_basic}        css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(1)
${locator_btn_register}             id=btn-sign-up
${locator_link_reset}               id=reset

# Error Text
${locator_err_firstname}            id=error-firstname
${locator_err_lastname}             id=error-lastname
${locator_err_email}                id=error-email
${locator_err_password}             id=error-password
${locator_err_phone}                id=error-mobile-phone
${locator_err_gender}               id=validation-basic-gender
${locator_err_courses}              id=validation-basic-courses
${locator_err_nationality}          id=validation-basic-nationality
${locator_err_role}                 id=validation-role
${locator_err_plan}                 id=validation-plan

# Register Success
${locator_txt_success}              xpath=/html/body/div[2]/div[3]/div/div[2]/p
${locator_btn_ok}                   id=btn-ok

*** Keywords ***
Open Web Browser
    Set Selenium Speed              0.6s
    Open Browser                    ${url}                   ${browser}
    Wait Until Page Contains        Kru P' Beam              2s
    Maximize Browser Window 
    
Input Data for Register
    Input Text                      ${locator_fristname}     กนกนวล
    Input Text                      ${locator_lastname}      อินขาน
    Input Text                      ${locator_email}         Beam1234@gmail.com
    Input Text                      ${locator_password}      1234567890
    Input Text                      ${locator_phone}         08222222222
    Select Radio Button             ${locator_radio}         female
    Select Checkbox                 ${locator_checksql}
    Select Checkbox                 ${locator_checkmanual}
    Click Element                   ${locator_select_nation}
    Wait Until Element Is Visible   ${locator_select_nation_afghan}
    Click Element                   ${locator_select_nation_jp}
    Click Element                   ${locator_select_role}
    Wait Until Element Is Visible   ${locator_select_role_admin}
    Click Element                   ${locator_select_role_admin}
    Click Element                   ${locator_select_plan}
    Wait Until Element Is Visible   ${locator_select_plan_basic}
    Click Element                   ${locator_select_plan_basic}
    
Input Email Wrong Format and Empty Field
    Input Text                      ${locator_fristname}     ${EMPTY}
    Input Text                      ${locator_lastname}      ${EMPTY}
    Input Text                      ${locator_email}         Beam1234gmail.com
    Input Text                      ${locator_password}      ${EMPTY}
    Input Text                      ${locator_phone}         ${EMPTY}
    Click Element                   ${locator_btn_register}
    ${fristname}=                   Get Text                 ${locator_err_firstname}
    Should Be Equal As Strings      ${fristname}             This field is required
    ${lastname}=                    Get Text                 ${locator_err_lastname}
    Should Be Equal As Strings      ${lastname}              This field is required
    ${email}=                       Get Text                 ${locator_err_email}
    Should Be Equal As Strings      ${email}                 Invalid email address
    ${password}=                    Get Text                 ${locator_err_password}
    Should Be Equal As Strings      ${password}              This field is required
    ${phone}=                       Get Text                 ${locator_err_phone}
    Should Be Equal As Strings      ${phone}                 This field is required
    ${gender}=                      Get Text                 ${locator_err_gender}
    Should Be Equal As Strings      ${gender}                This field is required
    ${courses}=                     Get Text                 ${locator_err_courses}
    Should Be Equal As Strings      ${courses}               This field is required
    ${nationality}=                 Get Text                 ${locator_err_nationality}
    Should Be Equal As Strings      ${nationality}           This field is required
    ${role}=                        Get Text                 ${locator_err_role}
    Should Be Equal As Strings      ${nationality}           This field is required
    ${plan}=                        Get Text                 ${locator_err_plan}
    Should Be Equal As Strings      ${plan}                  This field is required

Check Empty Field In register
    Input Text                      ${locator_fristname}            ${EMPTY}
    Input Text                      ${locator_lastname}             ${EMPTY}
    Input Text                      ${locator_email}                ${EMPTY}
    Input Text                      ${locator_password}             ${EMPTY}
    Input Text                      ${locator_phone}                ${EMPTY}
    Click Element                   ${locator_btn_register}
    Wait Until Element Contains     ${locator_err_firstname}        This field is required
    Wait Until Element Contains     ${locator_err_lastname}         This field is required
    Wait Until Element Contains     ${locator_err_email}            This field is required
    Wait Until Element Contains     ${locator_err_gender}           This field is required
    Wait Until Element Contains     ${locator_err_courses}          This field is required
    Wait Until Element Contains     ${locator_err_nationality}      This field is required
    Wait Until Element Contains     ${locator_err_role}             This field is required
    Wait Until Element Contains     ${locator_err_plan}             This field is required

Sign Up Complete
    Input Text                      ${locator_fristname}     กนกนวล
    Input Text                      ${locator_lastname}      อินขาน
    Input Text                      ${locator_email}         Beam1234@gmail.com
    Input Text                      ${locator_password}      1234567890
    Input Text                      ${locator_phone}         08222222222
    Select Radio Button             ${locator_radio}         female
    Select Checkbox                 ${locator_checksql}
    Select Checkbox                 ${locator_checkmanual}
    Click Element                   ${locator_select_nation}
    Wait Until Element Is Visible   ${locator_select_nation_afghan}
    Click Element                   ${locator_select_nation_jp}
    Click Element                   ${locator_select_role}
    Wait Until Element Is Visible   ${locator_select_role_admin}
    Click Element                   ${locator_select_role_admin}
    Click Element                   ${locator_select_plan}
    Wait Until Element Is Visible   ${locator_select_plan_basic}
    Click Element                   ${locator_select_plan_basic}
    Click Element                   ${locator_btn_register}
    Wait Until Element Is Visible   ${locator_txt_success}
    Click Element                   ${locator_btn_ok}
    Wait Until Page Contains        Welcome to Kru P' Beam!

*** Test Cases ***
TC001 - Check Input data In register
    Open Browser
    Input Data for Register
    Click Element                   ${locator_btn_register}
    Close All Browsers

TC002 - Reset Data
    Open Web Browser
    Input Data for Register
    Click Element                   ${locator_link_reset}
    Close All Browsers

TC003 - Email Wrong format and Empty Field
    Open Web Browser
    Input Email Wrong Format and Empty Field
    Close All Browsers

TC004 - Empty Field Check Error text
    Open Web Browser
    Check Empty Field In register
    Close All Browsers

TC005 - Check when Sign Up Complete
    Open Web Browser
    Sign Up Complete
    Close All Browsers