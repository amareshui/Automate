*** Settings ***
Library                                                SeleniumLibrary
Resource                                               ${CURDIR}/Keyword.robot
Suite Setup                                            Set Selenium Speed                                0.4s
Test Setup                                             Open Web Kru P'Beam & Login    user.test@krupbeam.com    123456789
Test Teardown                                          Close Browser
Suite Teardown                                         Close All Browsers

*** Test Cases ***
Tc01 - Search Page
    [Documentation]    ตรวจสอบการค้นหาในรูปแบบต่างๆ
    [Template]    Check Search Select
    1    0    0    ${locator_table}    Admin
    2    0    0    ${locator_table}    Author
    3    0    0    ${locator_table}    Editor
    4    0    0    ${locator_table}    Maintainer
    5    0    0    ${locator_table}    Subscriber
    0    1    0    ${locator_table}    Basic
    0    2    0    ${locator_table}    Company
    0    3    0    ${locator_table}    Enterprise
    0    4    0    ${locator_table}    Team
    0    0    1    ${locator_table}    Pending
    0    0    2    ${locator_table}    Active
    0    0    3    ${locator_table}    Inactive
    1    1    0    ${locator_table}    Admin
    1    0    2    ${locator_table}    Admin
    0    2    3    ${locator_table}    Company
    1    0    1    ${locator_table}    Admin
    4    3    2    ${locator_table}    Active

Tc02 - Clear btn
    [Documentation]    ทดสอบปุ่ม Clear
    Check Search Clear

Tc03 - Add User Pass
    [Documentation]    เพิ่มพนักงาน
    [Template]    Add User Pass
    test    test    test@gmail.com    test123    0812345679    female    3    1    1    1
    
Tc04 - Add User Fail
    [Setup]        Open Web Kru P'Beam & Login & add user   user.test@krupbeam.com    123456789    
    [Documentation]    เพิ่มพนักงานไม่ผ่านกรณีต่างๆ
    [Template]    Add User fail
    ${EMPTY}    test        test@gmail.com    test123    0812345679    female    3    1    1    1    ${locator_err_firstname}      This field is required
    test        ${EMPTY}    test@gmail.com    test123    0812345679    female    2    1    1    1    ${locator_err_lastname}       This field is required
    test        test        ${EMPTY}          test123    0812345679    female    1    1    1    1    ${locator_err_email}          This field is required
    test        test        test@gmail.com    ${EMPTY}   0812345679    female    4    1    1    1    ${locator_err_password}       This field is required
    test        test        test@gmail.com    test123    ${EMPTY}      female    2    1    1    1    ${locator_err_phone}          This field is required
    test        test        test@gmail.com    test123    0812345679    ${EMPTY}  3    1    1    1    ${locator_err_gender}         This field is required
    test        test        test@gmail.com    test123    0812345679    female    0    1    1    1    ${locator_err_course}         This field is required
    test        test        test@gmail.com    test123    0812345679    female    2    0    1    1    ${locator_err_nationality}    This field is required
    test        test        test@gmail.com    test123    0812345679    female    4    1    0    1    ${locator_err_role}           This field is required
    test        test        test@gmail.com    test123    0812345679    female    1    1    1    0    ${locator_err_plan}           This field is required
    [Teardown]    Close Browser
