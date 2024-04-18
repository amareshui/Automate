*** Settings ***
Library    SeleniumLibrary
Resource   ${CURDIR}/roles_key.robot
Suite Setup    Set Selenium Speed    0.5s
Test Setup    Open Browser Web
Test Teardown    Close Browser
Suite Teardown    Close All Browsers

*** Test Cases ***
TC01-Check Unit List Page
    Input Data for Login Pass
    Check Roles Page

TC02-Create Roles Page
    Input Data for Login Pass
    Check Roles Page
    Create Roles Page

TC03-View Roles page
    Input Data for Login Pass
    Check Roles Page
    View Roles

TC04-Edit Roles Pass
    Input Data for Login Pass
    Check Roles Page
    View Roles
    Update Roles Pass

TC05-Search Filter
    Input Data for Login Pass
    Check Roles Page
    Check Search And Filter

# TC06-Check Pagination
#     Open Browser Web