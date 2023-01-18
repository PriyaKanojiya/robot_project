*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    link=phpMyAdmin
    Click Element    partial link=phpMyAdmin
    Switch Window    phpMyAdmin
    Input Text    id=input_username     test1223
    Input Text    id=input_password      1234


