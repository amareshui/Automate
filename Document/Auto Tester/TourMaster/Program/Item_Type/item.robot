*** Settings ***
Library           SeleniumLibrary
Resource          ${CURDIR}/item_key.robot
Suite Setup       Set Selenium Speed    0.5s
Test Setup        Open Web & Input for login
Test Teardown     Close Browser
Suite Teardown    Close All Browsers

*** Test Cases ***

TC01 - Check Item Type Page
    Check Item Type Page

TC02 - Check Create Item Type Page
    Check Item Type Page
    Check Create ItemType Page

TC03 - Check Create Item Type Page for 10 sub
    Check Item Type Page
    Check Create ItemType Page for 10 sub    test1    test2    test3    test4    test5    test6    test7    test8    test9    test10

TC04 - Check Search / Filter
    Check Item Type Page
    Check Search / Filter

TC05 - Check View Page
    Check Item Type Page
    Check View Page

TC06 - Check Edit Page
    Check Item Type Page
    Check View Page
    Check Edit Page

TC07 - Check Pagination
    Check Item Type Page
    Check Pagination function