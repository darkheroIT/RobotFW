*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Pre-condition.robot


*** Variables ***
*** Test Cases ***
Test Case in BDD Format
    Given Navigate to application and Maximize  http://the-internet.herokuapp.com  Chrome  0
    When Create Function at Runtime  ABCD   XYZM
    Then Concatenate Username and Password  BDD  Framework


*** Keywords ***
