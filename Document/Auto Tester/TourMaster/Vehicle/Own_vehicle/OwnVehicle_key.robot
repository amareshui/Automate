*** Settings ***
Library                                                SeleniumLibrary
Resource                                               ${CURDIR}/OwnVehicle_var.robot

*** Keywords ***
Open Web & Input for login
    Open Browser                           ${url}                                ${browser}
    Maximize Browser Window
    Set Selenium Speed                     0.5s
    Input Text                             ${locator_username}                    superadmin
    Input Text                             ${locator_password}                    P@ssw0rd
    # Click Element                        ${locator_btneye}
    Click Element                          ${locator_btnlogin}
    Wait Until Page Contains               Dashboard
    Sleep                                  1s

Check Ownvehicle Page
    Click Element                          ${locator_menu_vehicle}
    # Wait Until Element Is Visible          ${locator_menu_vehicle_dd}
    Wait Until Element Is Visible          ${locator_menu_ownvehicle}
    Click Element                          ${locator_menu_ownvehicle}
    Wait Until Element Is Visible          ${locator_ownvehicle_navigator}
    Wait Until Element Is Visible          ${locator_ownvehicle_table}
    Wait Until Element Is Visible          ${locator_ownvehicle_btn_create}
    Wait Until Element Is Visible          ${locator_ownvehicle_export}

Check Create Ownvehicle Page
    Click Element                          ${locator_ownvehicle_btn_create}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_navigator}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_vehicleplate}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_driver_name}
    Click Element                          ${locator_create_ownvehicle_btn_cancel}
    Click Element                          ${locator_ownvehicle_btn_create}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_phone_number}
    Click Element                          ${locator_create_ownvehicle_btn_save}
    Wait Until Page Contains               Please enter Vehicle Plate
    Wait Until Page Contains               Please select Group Type
    Input Text                             ${locator_create_ownvehicle_vehicleplate}                soda2154
    # เช็คการ Add Group Type
    Click Element                          ${locator_create_ownvehicle_grouptype}
    Click Element                          ${locator_create_ownvehicle_create_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_create_grouptype_cancel}
    Click Element                          ${locator_create_ownvehicle_create_grouptype_cancel}
    Click Element                          ${locator_create_ownvehicle_grouptype}
    Click Element                          ${locator_create_ownvehicle_create_grouptype}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype_table}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_create_grouptype_name}
    Click Element                          ${locator_create_ownvehicle_create_grouptype_save}
    Wait Until Page Contains               Please enter Group type name
    Wait Until Page Contains               Please enter Capacity
    Input Text                             ${locator_create_ownvehicle_create_grouptype_name}       testestest
    Input Text                             ${locator_create_ownvehicle_create_grouptype_capacity}   15
    Input Text                             ${locator_create_ownvehicle_create_grouptype_guide}      2
    Input Text                             ${locator_create_ownvehicle_create_grouptype_recommend}  12
    Click Element                          ${locator_create_ownvehicle_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_create_grouptype_warning_cc}
    Click Element                          ${locator_create_ownvehicle_create_grouptype_warning_cc}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype_table}
    Click Element                          ${locator_create_ownvehicle_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_create_grouptype_warning_sa}
    Click Element                          ${locator_create_ownvehicle_create_grouptype_warning_sa}
    # create own vehicle (ต่อ)
    Wait Until Element Is Visible          ${locator_create_ownvehicle_create_grouptype_closeicon}  1s    
    Click Element                          ${locator_create_ownvehicle_create_grouptype_closeicon}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_grouptype}
    Click Element                          ${locator_create_ownvehicle_grouptype}
    Click Element                          ${locator_create_ownvehicle_grouptype_chose1}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_driver_name}
    Input Text                             ${locator_create_ownvehicle_driver_name}                 sababa
    Input Text                             ${locator_create_ownvehicle_phone_number}                0985421354
    Click Element                          ${locator_create_ownvehicle_btn_save}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_warning_cancel}
    Click Element                          ${locator_create_ownvehicle_warning_cancel}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_btn_save}
    Click Element                          ${locator_create_ownvehicle_btn_save}
    Wait Until Element Is Visible          ${locator_create_ownvehicle_warning_ok}
    Click Element                          ${locator_create_ownvehicle_warning_ok}

Check Search / Filter
    Input Text                             ${locator_ownvehicle_searchbar}                          soda
    Wait Until Element Is Visible          ${locator_ownvehicle_search_check_search}
    Click Element                          ${locator_ownvehicle_searchbar_closeicon}
    Click Element                          ${locator_ownvehicle_filter}
    Wait Until Element Is Visible          ${locator_ownvehicle_filter_drivername}
    Wait Until Element Is Visible          ${locator_ownvehicle_filter_grouptype}
    Wait Until Element Is Visible          ${locator_ownvehicle_filter_status}
    Click Element                          ${locator_ownvehicle_filter_grouptype}
    Click Element                          ${locator_ownvehicle_filter_grouptype_chose1}
    Input Text                             ${locator_ownvehicle_filter_drivername}                  soba
    Click Element                          ${locator_ownvehicle_filter_status}
    Click Element                          ${locator_ownvehicle_filter_status_ac}
    Click Element                          ${locator_ownvehicle_filter_btn_clear}
    Wait Until Page Does Not Contain       soba
    Click Element                          ${locator_ownvehicle_filter_grouptype}
    Input Text                             ${locator_ownvehicle_filter_drivername}                  sababa
    Click Element                          ${locator_ownvehicle_filter_status}
    Click Element                          ${locator_ownvehicle_filter_status_ac}
    Click Element                          ${locator_ownvehicle_filter_btn_search}
    Wait Until Element Is Visible          ${locator_ownvehicle_search_check_search}

Check View Page
    Click Element                          ${locator_ownvehicle_action}
    Wait Until Element Is Visible          ${locator_ownvehicle_action_view}
    Click Element                          ${locator_ownvehicle_action_view}
    Wait Until Element Is Visible          ${locator_ownvehicle_view_navigator}
    Wait Until Element Is Visible          ${locator_ownvehicle_view_btn_cancel}
    Wait Until Element Is Visible          ${locator_ownvehicle_view_btn_edit}
    Click Element                          ${locator_ownvehicle_view_btn_cancel}
    Wait Until Element Is Visible          ${locator_ownvehicle_table}
    Click Element                          ${locator_ownvehicle_action}
    Wait Until Element Is Visible          ${locator_ownvehicle_action_view}
    Click Element                          ${locator_ownvehicle_action_view}
    Element Should Be Disabled             ${locator_ownvehicle_view_drivername}
    # Element Should Be Disabled             ${locator_ownvehicle_view_grouptype}
    Element Should Be Disabled             ${locator_ownvehicle_view_phone}
    Element Should Be Disabled             ${locator_ownvehicle_view_vehicleplate}

Check Edit Page
    Click Element                          ${locator_ownvehicle_view_btn_edit}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_navigator}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_btn_cancel}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_btn_save}
    Click Element                          ${locator_ownvehicle_edit_btn_cancel}
    Wait Until Element Is Visible          ${locator_ownvehicle_view_btn_edit}
    Click Element                          ${locator_ownvehicle_view_btn_edit}
    Wait Until Element Is Enabled          ${locator_ownvehicle_edit_driver_name}
    Wait Until Element Is Enabled          ${locator_ownvehicle_edit_grouptype}
    Wait Until Element Is Enabled          ${locator_ownvehicle_edit_phone_number}
    Wait Until Element Is Enabled          ${locator_ownvehicle_edit_vehicleplate}
    Click Element                          ${locator_ownvehicle_edit_status}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_status_ac_inac}
    Click Element                          ${locator_ownvehicle_edit_status_ac_inac}
    # เช็คการ Add Group Type
    Click Element                          ${locator_ownvehicle_edit_grouptype}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_create_grouptype_cancel}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_cancel}
    Click Element                          ${locator_ownvehicle_edit_grouptype}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_grouptype_table}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_create_grouptype_name}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_save}
    Wait Until Page Contains               Please enter Group type name
    Wait Until Page Contains               Please enter Capacity
    Input Text                             ${locator_ownvehicle_edit_create_grouptype_name}       testestest
    Input Text                             ${locator_ownvehicle_edit_create_grouptype_capacity}   15
    Input Text                             ${locator_ownvehicle_edit_create_grouptype_guide}      2
    Input Text                             ${locator_ownvehicle_edit_create_grouptype_recommend}  12
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_create_grouptype_warning_cc}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_warning_cc}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_grouptype_table}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_save}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_create_grouptype_warning_save}
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_warning_save}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_create_grouptype_closeicon}  1s    
    Click Element                          ${locator_ownvehicle_edit_create_grouptype_closeicon}
    Click Element                          ${locator_ownvehicle_edit_btn_save}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_warning_cancel}
    Click Element                          ${locator_ownvehicle_edit_warning_cancel}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_btn_save}
    Click Element                          ${locator_ownvehicle_edit_btn_save}
    Wait Until Element Is Visible          ${locator_ownvehicle_edit_warning_ok}
    Click Element                          ${locator_ownvehicle_edit_warning_ok}

# Check Pagination
#     Click Element                          ${locator_ownvehicle_pagination}
#     Wait Until Element Is Visible          ${locator_ownvehicle_pagination_25page}
#     Click Element                          ${locator_ownvehicle_pagination_25page}
#     Click Element                          ${locator_ownvehicle_pagination}
#     Wait Until Element Is Visible          ${locator_ownvehicle_pagination_15page}
#     Click Element                          ${locator_ownvehicle_pagination_15page}
#     Element Should Be Disabled             ${locator_ownvehicle_pagination_<}
#     Element Should Be Disabled             ${locator_ownvehicle_pagination_>}