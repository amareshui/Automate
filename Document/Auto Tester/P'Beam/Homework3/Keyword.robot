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
    IF        ${role} == 0
        Click Element                          ${locator_search_select_role}
        Wait Until Element Is Visible          ${locator_search_role_selectrow}
        Click Element                          ${locator_search_role_selectrow}
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

Check Search Clear
    Click Element                          ${locator_search_select_role}
    Wait Until Element Is Visible          ${locator_search_role_author}
    Click Element                          ${locator_search_role_author}
    Click Element                          ${locator_search_select_plan}
    Wait Until Element Is Visible          ${locator_search_plan_company}
    Click Element                          ${locator_search_plan_company}
    Click Element                          ${locator_search_btn_clear}