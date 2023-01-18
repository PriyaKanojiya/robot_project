*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    url=https://www.facebook.com/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    Priya
    Input Text    name=lastname    Kanojiya
    Input Text    name=password_step_input    welcome123
    #16 Oct 2005
    Select From List By Label    id=day     16
    Select From List By Label    id=month   Oct
    Select From List By Label    id=year    2005
    Click Element    xpath=input[@value='1']


