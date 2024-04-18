*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/login_key.robot
Suite Setup    Set Selenium Speed    0.5s
Test Setup     Open Browser Web
Test Teardown  Close Browser
Suite Teardown    Close All Browsers

*** Test Cases ***
TC01-Login Pass
    Input Data for Login Pass

TC02-Login Fail
    Input Data for login fail

TC03-Login No Username or Password
    Input Empty Data In Username And Password
    