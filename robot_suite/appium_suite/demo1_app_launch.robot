*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oppoA1601
    ...     app=C:${/}Users${/}40032345${/}component${/}khan-academy-7-3-2.apk
    

    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    10s
    Close Application

*** Test Cases ***
TC2
    ${dic}      Create Dictionary       buildName=khan lt7
    ...         projectName=khan project lt7
    ...         userName=priyakanojiya_8JV1Zl
    ...         accessKey=soMZhau7xzwzdT9X8mwr

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://dd8826b0adf4f4cbc6acf0a367899fb1ed32891a
    ...     platformVersion=9.0
    ...     bsatck:options=${dic}

    Wait Until Page Contains Element      xpath=//*[@text='Dismiss']
    Click Element      xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element       xpath=//android.widget.TextView[@text='Sign in']
    sleep   5s
    [Teardown]      Close Application



