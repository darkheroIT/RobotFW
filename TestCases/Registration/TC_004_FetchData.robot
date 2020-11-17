*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Pre-condition.robot
Documentation  This File having Fetch Data cases
Test Setup  Navigate to application and Maximize  https://www.thetestingworld.com/testings/  Chrome  0
Test Teardown   Close Browser Window


*** Variables ***


*** Test Cases ***
#Robot Fetch Title of the specific page
#    ${PageTitle}=  Get Title
#    Log  ${PageTitle}
#
#Robot Fetch Selenium Speed
#    ${Speed}=  Get Selenium Speed
#    Log  ${Speed}
#
#Robot Fetch Value
#    ${Value}=  Get Value  xpath://input[@type='submit']
#    Log  ${Value}
#
#Robot Fetch Text
#    ${Text}=  Get Text  xpath://a[@class='displayPopup']
#    Log  ${Text}

#Robot Fetch Selected Value in List/Dropdown
#    Select From List By Index  name:sex  1
#    ${Val}=  Get Selected List Value  name:sex
#    Log  ${Val}
#    ${Text}=  Get Selected List Label  name:sex
#    Log  ${Text}
#    ${AllLabel}=  Get List Items  name:sex
#    Log  ${AllLabel}

Robot Fetch URL of opened page
#    Create Function at Runtime  PythonwithSelenium  Automation
    Concatenate Username and Password  Automation  Testing
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${PageHTML}
    ${Attr}=  Get Element Attribute  name: fld_username  class
    Log  ${Attr}
    ${ElementCount}=  Get Element Count  class:field
    Log  ${ElementCount}




*** Keywords ***
