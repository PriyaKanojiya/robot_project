*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open browser    url=http://google.com/    browser=chrome
    ${actual_title}     get title
    Log To Console  ${actual_title}
    Log  ${actual_title}
    Should Be Equal  ${actual_title}    google

TC2
    Open Browser    url:ttps://www.db4free.net/phpMyAdmin/
    Input Text  id=input_username   hello@gmail.com
    Input Password  id=input_password   welcome123
    Click Element   id=languageSelectLabel