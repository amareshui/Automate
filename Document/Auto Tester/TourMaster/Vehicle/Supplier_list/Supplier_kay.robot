*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/Suppiler_var.robot

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
    # Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_supplier}
    Click Element                          ${locator_menu_supplier}
    Wait Until Element Is Visible          ${locator_supplier_navigator}
    Wait Until Element Is Visible          ${locator_supplier_btn_create}
    Wait Until Element Is Visible          ${locator_supplier_table}

