*** Settings ***
Library                                      SeleniumLibrary
Resource                                     ${CURDIR}/Var.robot

*** Keywords ***
Open Web Kru P'Beam
    Open Browser                              ${url}                                ${browser}
    Wait Until Element Is Visible             ${locator_Email}
    Wait Until Element Is Visible             ${locator_password}

# Check Login Page
Login Pass
    [Arguments]                               ${email}                               ${password}
    Input Text                                ${locator_Email}                       ${email}
    Input Text                                ${locator_password}                    ${password}
    Click Element                             ${locator_hidden_eye}
    Click Element                             ${locator_btn_login}

Create Account
    Click Element                             ${locator_btn_create_account}
    Wait Until Element Is Visible             ${locator_create_account_page}

# Search Page
Search Page
    Wait Until Element Is Visible             ${locator_search_select_role}
    Wait Until Element Is Visible             ${locator_search_select_plan}
    Wait Until Element Is Visible             ${locator_search_select_status}

Check DD Select Role
    Click Element                             ${locator_search_select_role}
    Wait Until Element Is Visible             ${locator_search_role_selectrow}
    Click Element                             ${locator_search_role_selectrow}