*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/GroupType_var.robot

*** Keywords ***
Open Web & Input for login
    Open Browser                           ${url}                                ${browser}
    Maximize Browser Window
    Set Selenium Speed                     0.5s
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard
    Sleep                                  1s

Check Group Type Page
    Click Element                          ${locator_menu_vehicle}
    Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_grouptype}
    Click Element                          ${locator_menu_grouptype}
    Wait Until Element Is Visible          ${locator_grouptype_navigator}
    Wait Until Element Is Visible          ${locator_grouptype_table}
    Wait Until Element Is Visible          ${locator_grouptype_btn_create}
    Wait Until Element Is Visible          ${locator_grouptype_export}

Check Create Group Type Page
    [Arguments]                            ${grouptype_name}         ${capacity}          ${guide}         ${recommend}
    Click Element                          ${locator_grouptype_btn_create}
    