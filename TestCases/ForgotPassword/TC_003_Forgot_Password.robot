*** settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Pre-condition.robot

*** Variables ***



*** Test Cases ***
At Fotgot Password page, Leave Email field blank and clicking on Retrive Password button
    [Tags]  Regression
    [Documentation]  This case is to check forgot password function without input value
    [Setup]  Navigate to application and Maximize  http://the-internet.herokuapp.com/forgot_password  Firefox  0
    [Teardown]  Close Browser Window
    Click on Retrieve Password button
    ${Error}=  Get Title
    Log  ${Error}


*** Keywords ***

