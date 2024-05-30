*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/Keyword.robot
Suite Setup    Set Selenium Speed    0.5s
Test Setup    Open Browser Web
Test Teardown    Close All Browsers



*** Test Cases ***
TC000-Check Page
     Maximize Browser Window
     Wait Until Page Contains                                Kru P' Beam

TC001-login pass
    Input data for login page  user.test@krupbeam.com       123456789
    Wait Until Page Contains                                Kru P' Beam

TC002-login fail
    Input data for login fail

TC003-Check Email and Password Not in Format
    Input Data Wrong Format

TC004-Check Error Required Field is not filled in
    Input Empty In Email Field

TC005-Check Click Hyperlink
    Click Link Register

