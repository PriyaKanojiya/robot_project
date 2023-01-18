*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.goto.com/meeting/
    Input Text    name=FirstName    John
    Input Text    name=LastName    wick
    Input Text    name=Email    john@gmail.com
    Input Text    name=CompanySize    10-99
