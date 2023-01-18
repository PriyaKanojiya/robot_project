*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    John
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label    name=UserTitle    IT Manager
    Select From List By Value    name=CompanyEmployees  250
    Select From List By Label    name=CompanyCountry    United Kingdom
    Click Element    xpath=(//div[@class='checkbox-ui'])[1]
    Click Element    name=start my free trial

    Element Text Should Be    xpath=span[contains(@id='UserPhone')]    Enter a valid phone number
