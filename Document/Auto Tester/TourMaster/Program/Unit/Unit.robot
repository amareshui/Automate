*** Settings ***
Library           SeleniumLibrary
Resource          ${CURDIR}/Unit_key.robot
Suite Setup       Set Selenium Speed    0.5s
Test Setup        Open Browser Web
Test Teardown     Close Browser
Suite Teardown    Close All Browsers

*** Test Cases ***
TC01-Check Unit Page
    Input Data for Login Pass
    Check Unit Page

TC02 - Check Create Unit Page
    Input Data for Login Pass
    Check Unit Page
    Check create Page    testest

TC03 - Check Search / Filter
    Input Data for Login Pass
    Check Unit Page
    Check Search / Filter    testets

TC04 - Check View Page
    Input Data for Login Pass
    Check Unit Page
    Check View Page

TC05 - Check Edit Page
    Input Data for Login Pass
    Check Unit Page
    Check View Page
    Check Edit Page

TC06 - Pagination
    Input Data for Login Pass
    Check Unit Page
    Check Pagination