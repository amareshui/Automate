*** Settings ***
Library                SeleniumLibrary
Resource               ${CURDIR}/Supplier_var.robot

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

Check Supplier Page
    Click Element                          ${locator_menu_vehicle}
    # Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_supplier}
    Click Element                          ${locator_menu_supplier}
    Wait Until Element Is Visible          ${locator_supplier_navigator}
    Wait Until Element Is Visible          ${locator_supplier_btn_create}
    Wait Until Element Is Visible          ${locator_supplier_table}

Check Create Supplier Page
    [Documentation]                        ตรวจสอบการสร้าง Supplier หน้า General Detail
    [Arguments]                            ${sup_name}    ${sup_contact}    ${sup_line}    ${sup_phone}    ${sup_email}    ${sup_adress}
    Click Element                          ${locator_supplier_btn_create}
    Wait Until Element Is Visible          ${locator_create_supplier_navigator}
    Wait Until Element Is Visible          ${locator_create_supplier_name}
    Wait Until Element Is Visible          ${locator_create_supplier_payment}
    Click Element                          ${locator_create_supplier_btn_cancel}
    Wait Until Element Is Visible          ${locator_supplier_table}
    Wait Until Element Is Visible          ${locator_supplier_btn_create}
    Click Element                          ${locator_supplier_btn_create}
    Wait Until Element Is Visible          ${locator_create_supplier_btn_next}
    Wait Until Element Is Visible          ${locator_create_supplier_grouptype}
    Click Element                          ${locator_create_supplier_btn_next}
    Wait Until Page Contains               Please enter Supplier Name
    Wait Until Page Contains               Please select Group type
    Input Text                             ${locator_create_supplier_name}                          ${sup_name}
    Input Text                             ${locator_create_supplier_contactperson}                 ${sup_contact}
    Input Text                             ${locator_create_supplier_lineid}                        ${sup_line}
    Input Text                             ${locator_create_supplier_phone}                         ${sup_phone}
    Input Text                             ${locator_create_supplier_email}                         ${sup_email}
    Input Text                             ${locator_create_supplier_address}                       ${sup_adress}
    Click Element                          ${locator_create_supplier_country}
    Wait Until Element Is Visible          ${locator_create_supplier_country_select}
    Click Element                          ${locator_create_supplier_country_select}
    Click Element                          ${locator_create_supplier_province}
    Wait Until Element Is Visible          ${locator_create_supplier_province_select}
    Click Element                          ${locator_create_supplier_province_select}
    Click Element                          ${locator_create_supplier_district}
    Wait Until Element Is Visible          ${locator_create_supplier_district_select}
    Click Element                          ${locator_create_supplier_district_select}
    Click Element                          ${locator_create_supplier_subdistrict}
    Wait Until Element Is Visible          ${locator_create_supplier_subdistrict_select}
    Click Element                          ${locator_create_supplier_subdistrict_select}

Check Create Supplier Page Bank Detail
    [Documentation]                        ตรวจสอบการใส่ข้อมูล Payment Method ต่างๆ
    [Arguments]                            ${acc_name}    ${acc_num}    ${credit_name}
    Click Element                          ${locator_create_supplier_payment}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_banktran}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_cash}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_chque}
    Click Element                          ${locator_create_supplier_payment_banktran}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_banktr_accname}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_banktr_accnum}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_banktr_bank}
    Input Text                             ${locator_create_supplier_payment_banktr_accname}        ${acc_name}
    Input Text                             ${locator_create_supplier_payment_banktr_accnum}         ${acc_num}
    Click Element                          ${locator_create_supplier_payment_banktr_bank}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_banktr_kbank}
    Click Element                          ${locator_create_supplier_payment_banktr_kbank}
    Click Element                          ${locator_create_supplier_payment}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_cash}
    Click Element                          ${locator_create_supplier_payment_cash}
    Click Element                          ${locator_create_supplier_payment}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit}
    Click Element                          ${locator_create_supplier_payment_credit}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_name}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_type}
    Click Element                          ${locator_create_supplier_payment_credit_type}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_visa}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_jcb}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_unionpay}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_credit_mastercard}
    Click Element                          ${locator_create_supplier_payment_credit_visa}
    Input Text                             ${locator_create_supplier_payment_credit_name}           ${credit_name}
    Click Element                          ${locator_create_supplier_payment}
    Wait Until Element Is Visible          ${locator_create_supplier_payment_chque}
    Click Element                          ${locator_create_supplier_payment_chque}

Check Create Supplier Page Group Type
    [Documentation]                        ตรวจสอบการเลือก Grouptype 
    Click Element                          ${locator_create_supplier_grouptype}
    Wait Until Element Is Visible          ${locator_create_supplier_grouptype_select1}
    Wait Until Element Is Visible          ${locator_create_supplier_grouptype_select2}
    Click Element                          ${locator_create_supplier_grouptype_select1}
    Click Element                          ${locator_create_supplier_grouptype_select2}
    
Check Create Group type In Create Supplier
    [Documentation]                        ตรวจสอบการสร้าง Group type ใน Create Supplier
    Wait Until Element Is Visible          ${locator_create_supplier_supplierlogin_btn_back}
    Click Element                          ${locator_create_supplier_supplierlogin_btn_back}
    Wait Until Element Is Visible          ${locator_create_supplier_grouptype}
    Click Element                          ${locator_create_supplier_grouptype}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype}
    Click Element                          ${locator_create_supplier_create_grouptype}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_table}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_pagina}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_btn_cancel}
    Click Element                          ${locator_create_supplier_create_grouptype_btn_cancel}
    Wait Until Element Is Visible          ${locator_create_supplier_grouptype}
    Click Element                          ${locator_create_supplier_grouptype}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype}
    Click Element                          ${locator_create_supplier_create_grouptype}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_name}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_capacity}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_guide}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_recommend}
    Click Element                          ${locator_create_supplier_create_grouptype_btn_save}
    Wait Until Page Contains               Please enter Group type name
    Wait Until Page Contains               Please enter Capacity
    Input Text                             ${locator_create_supplier_create_grouptype_name}                    soda
    FOR  ${click}  IN RANGE  10
        Click Element                      ${locator_create_supplier_create_grouptype_capacity_+}
    END
    Click Element                          ${locator_create_supplier_create_grouptype_btn_save}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_table}
    Wait Until Element Is Visible          ${locator_create_supplier_create_grouptype_closeicon}
    Click Element                          ${locator_create_supplier_create_grouptype_closeicon}
    Wait Until Element Is Visible          ${locator_create_supplier_btn_next}
    Wait Until Element Is Visible          ${locator_create_supplier_progressbar}

Check Create Supplier Login
    [Documentation]                        ตรวจสอบการสร้าง Supplier Login
    [Arguments]                            ${username}            ${password}            ${con_password}
    Wait Until Element Is Visible          ${locator_supplier_edit_suplogin_username}
    Wait Until Element Is Visible          ${locator_supplier_edit_suplogin_pass}
    Wait Until Element Is Visible          ${locator_supplier_edit_suplogin_confirm_pass}
    Wait Until Element Is Visible          ${locator_create_supplier_supplierlogin_btn_save}
    Click Element                          ${locator_create_supplier_supplierlogin_btn_save}
    Wait Until Page Contains               Please enter username
    Wait Until Page Contains               Please enter password
    Wait Until Page Contains               Please enter confirm password
    Input Text                             ${locator_create_supplier_supplierlogin_username}        ${username}
    Input Text                             ${locator_supplier_edit_suplogin_pass}                   ${password}
    Input Text                             ${locator_supplier_edit_suplogin_confirm_pass}           ${con_password}
    Click Element                          ${locator_create_supplier_supplierlogin_password_eye}
    Click Element                          ${locator_create_supplier_supplierlogin_con_pass_eye}