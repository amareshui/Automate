*** Settings ***
Library                                                SeleniumLibrary
Resource                                               ${CURDIR}/Keyword.robot
Suite Setup                                            Set Selenium Speed                                0.4s
Test Setup                                             Open Web Kru P'Beam & Login    user.test@krupbeam.com    123456789
Test Teardown                                          Close Browser
Suite Teardown                                         Close All Browsers

*** Test Cases ***
Tc01 - Search Page
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
    
Tc02 - 

