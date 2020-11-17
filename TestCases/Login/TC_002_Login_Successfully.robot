*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Pre-condition.robot
Library  ../../ExternalKeywords/Locators.py
Documentation  This File having testcase that is related to login functionality
Default Tags  Default
Force Tags  All_TC

*** Variables ***


*** Test Cases ***
Login successfully with valid data
    [Tags]  Regression  Testing
    [Documentation]  This test case is to check login successfully with valid data
    [Setup]  Navigate to application and Maximize  http://the-internet.herokuapp.com  Chrome  0
    [Teardown]  Close Browser Window
    Redirect to Login page
    Get & Validate the Title
    Enter Username  tomsmith
    Enter Password  SuperSecretPassword!
#    Validate Login form
