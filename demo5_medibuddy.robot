*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.medibuddy.in/
    Click Element    link=Login
    Click Element    xpath=//div[conatins(text(),'an Insurance')]
    Click Element    xpath=//div[contains(text(),'using Username')]
    Input Text    name=userName    john
    Click Element    xpath=//button[text()='Proceed']
    Input Text    name=password    john123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[text()='Log in']
    Element Should Contain    //*[conatins(text(),'incorrect password')]       incorrect password