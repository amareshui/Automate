*** Settings ***
Library                                      SeleniumLibrary
Resource                                     ${CURDIR}/Var.robot

*** Keywords ***
Open Web Kru P'Beam & Login
    [Arguments]                               ${email}                               ${password}
    Open Browser                              ${url}                                ${browser}
    Wait Until Element Is Visible             ${locator_Email}
    Wait Until Element Is Visible             ${locator_password}
    Input Text                                ${locator_Email}                       ${email}
    Input Text                                ${locator_password}                    ${password}
    Click Element                             ${locator_hidden_eye}
    Click Element                             ${locator_btn_login}

Open Web Kru P'Beam & Login & add user
    [Arguments]                               ${email}                               ${password}
    Open Browser                              ${url}                                ${browser}
    Wait Until Element Is Visible             ${locator_Email}
    Wait Until Element Is Visible             ${locator_password}
    Input Text                                ${locator_Email}                       ${email}
    Input Text                                ${locator_password}                    ${password}
    Click Element                             ${locator_hidden_eye}
    Click Element                             ${locator_btn_login}
    Wait Until Element Is Visible             ${locator_btn_add_user}
    Click Element                             ${locator_btn_add_user}

# Search Page
Search Page
    Wait Until Element Is Visible             ${locator_search_select_role}
    Wait Until Element Is Visible             ${locator_search_select_plan}
    Wait Until Element Is Visible             ${locator_search_select_status}

Check result Search
    [Arguments]    ${locator}    ${msg}
    Wait Until Element Contains               ${locator}            ${msg}

Check Search Select
    [Arguments]    ${role}    ${plan}    ${status}    ${table}    ${msg}
    IF        ${role} == 0
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_selectrow}
        Click Element                          ${locator_search_role_selectrow}
    END
    IF        ${role} == 1
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_admin}
        Click Element                          ${locator_search_role_admin}
    ELSE IF   ${role} == 2
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_author}
        Click Element                          ${locator_search_role_author}
    ELSE IF   ${role} == 3
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_editor}
        Click Element                          ${locator_search_role_editor}
    ELSE IF   ${role} == 4
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_maintainer}
        Click Element                          ${locator_search_role_maintainer}
    ELSE IF   ${role} == 5
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_subscriber}
        Click Element                          ${locator_search_role_subscriber}
    END
    IF        ${plan} == 0
        Click Element                          ${locator_search_select_plan}
        Wait Until Element Is Visible          ${locator_search_plan_selectrow}
        Click Element                          ${locator_search_plan_selectrow}
    END
    IF        ${plan} == 1
        Click Element                          ${locator_search_select_plan}
        Wait Until Element Is Visible          ${locator_search_plan_basic}
        Click Element                          ${locator_search_plan_basic}
    ELSE IF   ${plan} == 2
        Click Element                          ${locator_search_select_plan}
        Wait Until Element Is Visible          ${locator_search_plan_company}
        Click Element                          ${locator_search_plan_company}
    ELSE IF   ${plan} == 3
        Click Element                          ${locator_search_select_plan}
        Wait Until Element Is Visible          ${locator_search_plan_enterprise}
        Click Element                          ${locator_search_plan_enterprise}
    ELSE IF   ${plan} == 4
        Click Element                          ${locator_search_select_plan}
        Wait Until Element Is Visible          ${locator_search_plan_team}
        Click Element                          ${locator_search_plan_team}
    END
    IF        ${status} == 0
        Click Element                          ${locator_search_select_status}
        Wait Until Element Is Visible          ${locator_search_status_selectrow}
        Click Element                          ${locator_search_status_selectrow}
    END
    IF        ${status} == 1
        Click Element                          ${locator_search_select_status}
        Wait Until Element Is Visible          ${locator_search_status_pending}
        Click Element                          ${locator_search_status_pending}
    ELSE IF   ${status} == 2
        Click Element                          ${locator_search_select_status}
        Wait Until Element Is Visible          ${locator_search_status_active}
        Click Element                          ${locator_search_status_active}
    ELSE IF   ${status} == 3
        Click Element                          ${locator_search_select_status}
        Wait Until Element Is Visible          ${locator_search_status_inactive}
        Click Element                          ${locator_search_status_inactive}
    END

    Click Element                              ${locator_search_btn_search}
    Wait Until Element Is Visible              ${locator_table}
    Check result Search                        ${table}            ${msg}

Notification & Profile
    Click Element                             ${locator_noti}
    Wait Until Element Is Visible             ${locator_noti_read_all}
    Click Element                             ${locator_noti_read_all}
    Click Element                             ${locator_profile}
    Wait Until Element Is Visible             ${locator_profile_logout}
    Sleep                                     1s
    Click Element                             ${locator_profile_logout}
    Wait Until Element Is Visible             ${locator_Email}
    Wait Until Element Is Visible             ${locator_password}
        
Check Search Clear & Check Pagination
    Wait Until Element Is Visible          ${locator_search_select_role}
    Click Element                          ${locator_search_select_role}
    Wait Until Element Is Visible          ${locator_search_role_author}
    Click Element                          ${locator_search_role_author}
    Click Element                          ${locator_search_select_plan}
    Wait Until Element Is Visible          ${locator_search_plan_company}
    Click Element                          ${locator_search_plan_company}
    Click Element                          ${locator_search_btn_clear}
    Click Element                          ${locator_search_btn_search}
    Wait Until Element Is Visible          ${locator_table_all}
    Execute JavaScript                     window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible          ${locator_pagination_count}
    Click Element                          ${locator_pagination_count}
    Click Element                          ${locator_pagination_50}
    Execute JavaScript                     window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible          ${locator_pagination_page50}
    Click Element                          ${locator_pagination_>}
    Wait Until Element Is Enabled          ${locator_pagination_<}
    Click Element                          ${locator_pagination_<}
    

Select Nationality
    Click Element                          ${locator_add_user_nationality}
    Wait Until Element Is Visible          ${locator_add_user_nationality_thai}
    Click Element                          ${locator_add_user_nationality_thai}

Select Role
    Click Element                          ${locator_add_user_select_role}
    Wait Until Element Is Visible          ${locator_add_user_select_role_admin}
    Click Element                          ${locator_add_user_select_role_admin}

Select Plan
    Click Element                          ${locator_add_user_select_plan}
    Wait Until Element Is Visible          ${locator_add_user_select_plan_basic}
    Click Element                          ${locator_add_user_select_plan_basic}

Add User Pass
    [Arguments]    ${fname}    ${lname}    ${email}    ${pw}    ${phone}    ${gender}    ${course}    ${national}    ${role}    ${plan}
    Click Element                               ${locator_btn_add_user}
    Wait Until Element Is Visible               ${locator_add_user_firstname}
    Input Text                                  ${locator_add_user_firstname}        ${fname}
    Input Text                                  ${locator_add_user_lastname}         ${lname}
    Input Text                                  ${locator_add_user_email}            ${email}
    Input Text                                  ${locator_add_user_password}         ${pw}
    Input Text                                  ${locator_add_user_mobile_phone}     ${phone}
    IF        "${gender}" == "female"
        Click Element                           ${locator_add_user_gender_female}
    ELSE IF    "${gender}" == "male"
        Click Element                           ${locator_add_user_gender_male}
    END
    IF  ${course} == 1
        Select Checkbox                         ${locator_add_user_sql}
    ELSE IF    ${course} == 2
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    ELSE IF    ${course} == 3
        Select Checkbox                         ${locator_add_user_automate_test}
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    ELSE IF    ${course} == 4
        Select Checkbox                         ${locator_add_user_automate_test2}
        Select Checkbox                         ${locator_add_user_automate_test}
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    END
    IF  ${national} == 1
        Select Nationality
    END
    IF  ${role} == 1
        Select Role
    END
    IF  ${plan} == 1
        Select Plan
    END
    Click Element                               ${locator_add_user_btn_sign_up}
    Wait Until Element Is Visible               ${locator_add_user_warning_btn_ok}
    Click Element                               ${locator_add_user_warning_btn_ok}

Check Add User Pass
    Wait Until Element Is Visible               ${locator_search_select_role}
    Wait Until Element Is Visible               ${locator_search_select_plan}
    Click Element                               ${locator_search_select_role}
    Wait Until Element Is Visible               ${locator_search_role_admin}
    Click Element                               ${locator_search_role_admin}
    Click Element                               ${locator_search_select_plan}
    Wait Until Element Is Visible               ${locator_search_plan_basic}
    Click Element                               ${locator_search_plan_basic}
    Click Element                               ${locator_search_btn_search}
    Wait Until Page Contains                    test


Add User fail
    [Arguments]    ${fname}    ${lname}    ${email}    ${pw}    ${phone}    ${gender}    ${course}    ${national}    ${role}    ${plan}    ${locator}    ${errmsg}=${EMPTY}
    Wait Until Element Is Visible               ${locator_add_user_firstname}
    Input Text                                  ${locator_add_user_firstname}        ${fname}
    Input Text                                  ${locator_add_user_lastname}         ${lname}
    Input Text                                  ${locator_add_user_email}            ${email}
    Input Text                                  ${locator_add_user_password}         ${pw}
    Input Text                                  ${locator_add_user_mobile_phone}     ${phone}
    IF        "${gender}" == "female"
        Click Element                           ${locator_add_user_gender_female}
    ELSE IF    "${gender}" == "male"
        Click Element                           ${locator_add_user_gender_male}
    END
    IF  ${course} == 1
        Select Checkbox                         ${locator_add_user_sql}
    ELSE IF    ${course} == 2
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    ELSE IF    ${course} == 3
        Select Checkbox                         ${locator_add_user_automate_test}
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    ELSE IF    ${course} == 4
        Select Checkbox                         ${locator_add_user_automate_test2}
        Select Checkbox                         ${locator_add_user_automate_test}
        Select Checkbox                         ${locator_add_user_sql}
        Select Checkbox                         ${locator_add_user_test_manual}
    END
    IF  ${national} == 1
        Select Nationality
    END
    IF  ${role} == 1
        Select Role
    END
    IF  ${plan} == 1
        Select Plan
    END
    Click Element                      ${locator_add_user_btn_sign_up}
    ${txt}=        Get Text            ${locator}
    Should Be Equal As Strings         ${txt}        ${errmsg}
    Reload Page