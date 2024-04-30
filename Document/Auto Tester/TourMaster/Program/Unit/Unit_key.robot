*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/Unit_var.robot

*** Keywords ***
Open Browser Web
    Open Browser                           ${url}                                ${browser}
    Maximize Browser Window
    Set Selenium Speed                     0.5s

Input Data for Login Pass
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard

Check Unit Page
    Click Element                          ${locator_menu_program}
    Sleep                                  0.5s
    Click Element                          ${locator_menu_unit}
    Wait Until Element Is Visible          ${locator_program_unit_navigator}
    Wait Until Element Is Visible          ${locator_program_unit_create}
    Wait Until Element Is Visible          ${locator_program_unit_export}
    Wait Until Element Is Visible          ${locator_unit_search}
    Wait Until Element Is Visible          ${locator_program_unit_table}
    Wait Until Element Is Visible          ${locator_program_unit_navigator}

Check create Page
    Click Element                          ${locator_program_unit_create}
    Wait Until Element Is Visible          ${locator_create_unit_navigator}
    