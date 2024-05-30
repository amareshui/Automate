*** Settings ***
Library               SeleniumLibrary
Resource              ${CURDIR}/Supplier_kay.robot
Suite Setup           Set Selenium Speed    0.5s
Test Setup            Open Web & Input for login
Test Teardown         Close Browser
Suite Teardown        Close All Browsers

*** Test Cases ***
TC01 - Check Supplier Page
    Check Supplier Page

TC02 - Check Create Supplier Page
    Check Supplier Page
    Check Create Supplier Page          sup_name=sodom    sup_contact=sodean    sup_line=supream    sup_phone=0123456789    sup_email=ama.hu@gm.co    sup_adress=142/152 sd sdf
    # Check Create Supplier Page Bank Detail    acc_name=soso    acc_num=123456789    credit_name=sdasd
    Check Create Supplier Page Group Type
    # Check Create Group type In Create Supplier
