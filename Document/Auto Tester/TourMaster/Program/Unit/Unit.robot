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
    