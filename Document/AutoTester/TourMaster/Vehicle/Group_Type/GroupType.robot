*** Settings ***
Library               SeleniumLibrary
Resource              ${CURDIR}/GroupType_key.robot
Suite Setup           Set Selenium Speed    0.5s
Test Setup            Open Web & Input for login
Test Teardown         Close Browser
Suite Teardown        Close All Browsers

*** Test Cases ***

TC01 - Check Group Type Page
    Check Group Type Page

TC02 - Check Create Group Type Page
    Check Group Type Page
    Check Create Group Type Page
    Input Data In Create Group Type                    testy            10                3

TC03 - Check Search / Filter
    Check Group Type Page
    Check Search / Filter                              test             test

TC04 - Check View Page
    Check Group Type Page
    Check View Page

TC05 - Check Edit Page
    Check Group Type Page
    Check View Page
    Check Edit Page

TC06 - Check Pagination
    Check Group Type Page
    Check Pegination