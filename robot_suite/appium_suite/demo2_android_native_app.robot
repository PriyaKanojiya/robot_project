*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Sign Up
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

    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element       xpath=//android.widget.ImageView[@content-desc='Settings']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='First name']
    Input Text     xpath=//android.widget.EditText[@text='First name']    Priya

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Last name']
    Input Text     xpath=//android.widget.EditText[@text='Last name']    K

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Birthday']
    Click Element     xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='Jun']
    Click Element     xpath=//android.widget.EditText[@text='Jun']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='Jun']
    Clear Text    xpath=//android.widget.EditText[@text='Jun']
    Input Text     xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']    Oct
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='01']
    Click Element     xpath=//android.widget.EditText[@text='01']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='01']
    Clear Text    xpath=//android.widget.EditText[@text='01']
    Input Text     xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]     16
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='2000']
    Click Element     xpath=//android.widget.EditText[@text='2000']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='2000']
    Clear Text    xpath=//android.widget.EditText[@text='2000']
    Input Text     xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]     2001
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='OK']
    Click Element    xpath=//android.widget.Button[@text='OK']
    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    10s
    [Teardown]   Close Application