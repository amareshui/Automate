*** Settings ***
Library                                                SeleniumLibrary
Resource                                               ${CURDIR}/OwnVehicle_var.robot

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

Check Ownvehicle Page
    Click Element                          ${locator_menu_vehicle}
    # Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_ownvehicle}
    Click Element                          ${locator_menu_ownvehicle}
    Wait Until Element Is Visible          ${locator_ownvehicle_navigator}
    Wait Until Element Is Visible          ${locator_ownvehicle_table}
    Wait Until Element Is Visible          ${locator_ownvehicle_btn_create}
    Wait Until Element Is Visible          ${locator_ownvehicle_export}

Check Create Ownvehicle Page
    Click Element                          ${locator_ownvehicle_btn_create}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_navigator}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_vehicleplate}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_driver_name}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_phone_number}
    Input Text                             ${locator_create_ownvehicle_vehicleplate}                soda2154
    Click Element                          ${locator_ownvehicle_edit_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype_dd}
    Click Element                          ${locator_create_ownvehicle_grouptype_chose1}
    Input Text                             ${locator_create_ownvehicle_driver_name}                 sababa
    Input Text                             ${locator_create_ownvehicle_phone_number}                0985421354
    Click Element                          ${locator_create_ownvehicle_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype_dd}
    Click Element                          ${locator_create_ownvehicle_create_grouptype}
    