*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Pre-condition.robot
Documentation  This File having testcase that is related to login functionality
Test Setup  Navigate to application and Maximize  http://the-internet.herokuapp.com  Chrome  0
Test Teardown   Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
Default Tags  Default
Force Tags  All_TC

*** Test Cases ***
Login failed if validating the login form without inputing data
    [Tags]  Smoke
    Redirect to Login page
    Click on Login button
#    Validate Message after clicking Login button


Login failed if entering the invalid username but correct password
    [Tags]  Smoke  Sanity
    Redirect to Login page
    Enter Username  tomsmith1
    Enter Password  SuperSecretPassword!
    Click on Login button

#    Validate Message after clicking Login button

Login successfully with valid data
    [Documentation]  This test case is to check login successfully with valid data
    [Setup]  Navigate to application and Maximize  http://the-internet.herokuapp.com  Chrome  0
    [Teardown]  Close Browser Window
    Redirect to Login page
    Get & Validate the Title
    Enter Username  tomsmith
    Enter Password  SuperSecretPassword!
#    Validate Login form











