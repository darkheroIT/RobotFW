*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***


*** Keywords ***
Navigate to application and Maximize
    [Documentation]  This keyword is for Start Browser and Maximize its window
    [Arguments]  ${UserURL}  ${InputBrowser}  ${Delay}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    Set Selenium Speed  ${Delay}

Redirect to Login page
    Click Link  xpath://a[text()='Form Authentication']

Click on Login button
    Click button  css:button.radius

Get & Validate the Title
    ${LoginPageTitle}=  Get Title
    Log  ${LoginPageTitle}
    [Return]  ${LoginPageTitle}
    Title should be   The Internet

Enter Username
    [Arguments]  ${username}
#    ${username}=  Read Element Locator  Registration.username_txt_id
    Input text  id:username  ${username}


Enter Password
    [Arguments]  ${password}
    Input text  id:password  ${password}

Validate Message after clicking Login button
    ${Message}=  xpath://div[@id='flash']
    Log  ${Message}
    [Return]  ${Message}
    Title should be  ${Message}

Close Browser Window
    Close Browser

Click on Retrieve Password button
    Click button  id:form_submit

Before Each Test Suite
    Log    Before Each Test Suite
After Each Test Suite
    Log    After Each Test Suite

Create Function at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    Log  "Task is done successfully"

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}


Read Element Locator
    [Arguments]  JsonPath
    ${result}=  read_locator_from_json  JsonPath
    [return]  ${result}