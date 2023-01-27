*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Swipe
    ${dic}      Create Dictionary       buildName=khan lt7
    ...         projectName=khan project lt7
    ...         userName=priyakanojiya_8JV1Zl
    ...         accessKey=soMZhau7xzwzdT9X8mwr

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://dd8826b0adf4f4cbc6acf0a367899fb1ed32891a
    ...     platformVersion=9.0
    ...     bstack:options=${dic}
    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
    Click Element   xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element   xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}  Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90  75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']

    ${count}  Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90  85    90    15
        ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']

    ${count}  Get Matching Xpath Count    xpath=//*[contains(@text,'Taj')]
    WHILE    ${count}==0
        Swipe By Percent    90  85    90    15
         ${count}    Get Matching Xpath Count    xpath=//*[contains(@text,'Taj')]
    END
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Taj')]
    Click Element    xpath=//*[contains(@text,'Taj')]

    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    10s
    [Teardown]   Close Application

