*** Settings ***
Library                                                SeleniumLibrary
Resource                                               ${CURDIR}/Keyword.robot
Suite Setup                                            Set Selenium Speed                                0.7s
Test Setup                                             Open Web Kru P'Beam
Test Teardown                                          Close Browser
Suite Teardown                                         Close All Browsers

*** Test Cases ***
Tc01 - login pass
    Login Pass                                         user.test@krupbeam.com                            123456789

Tc02 - Search Page
    Login Pass                                         user.test@krupbeam.com                            123456789
    Search Page
    Check DD Select Role

