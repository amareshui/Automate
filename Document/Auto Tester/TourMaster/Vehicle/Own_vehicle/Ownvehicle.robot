*** Settings ***
Library               SeleniumLibrary
Resource              ${CURDIR}/OwnVehicle_key.robot
Suite Setup           Set Selenium Speed    0.5s
Test Setup            Open Web & Input for login
Test Teardown         Close Browser
Suite Teardown        Close All Browsers

*** Test Cases ***
TC01 - Check Own Vehicle Page
    Check Ownvehicle Page

TC02 - Check Create Own Vehicle
    Check Ownvehicle Page
    Check Create Ownvehicle Page

TC03 - Check search / Filter
    Check Ownvehicle Page
    Check Search / Filter

TC04 - Check View Page
    Check Ownvehicle Page
    Check View Page

TC05 - Check Edit Page
    Check Ownvehicle Page
    Check View Page
    Check Edit Page
# TC06 - Check Pagination
#     Check Ownvehicle Page
#     Check Pagination