*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/user_key.robot
Suite Setup    Set Selenium Speed    0.5s
Test Setup     Open Browser Web
Test Teardown  Close Browser
Suite Teardown    Close All Browsers


*** Test Cases ***
TC01-Check Unit List Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Close All Browsers

TC02-Check Create Page
    Open Browser Web
    Input Data for Login Pass
    Check Create Page
    Close All Browsers

TC03-Check Input Data In Create Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Input Data In Create Page
    Close All Browsers

TC04-Check Input Data In Create Page And Save Data
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Input Data In Create Page
    Check Save Data In Create User
    Close All Browsers

TC05-Check Create User Fail
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Create Page
    Create User Fail
    Close All Browsers

TC06-Check Search and Filter
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check Search and Filter
    Close All Browsers

TC07-Check View Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Close All Browsers

TC08-Check Edit Page
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Check Edit Page
    Close All Browsers

TC09-Check Reset Password
    Open Browser Web
    Input Data for Login Pass
    Check User Page
    Check View Page
    Reset Password
    Close All Browsers
    