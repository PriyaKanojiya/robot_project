*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    D:${/}\OneDrive - LTTS
    
TC2
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    jack
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']

TC3
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript  document.querySelector('#checkout').value='21-11-2023'
    Click Element    xpath=//span[@id='select2-hotels_city-container']
    
TC4
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/

    ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
    Execute Javascript  arguments[0].click()    ARGUMENTS   ${ele}


    
