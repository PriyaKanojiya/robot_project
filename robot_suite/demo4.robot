*** Settings ***
Library     OperatingSystem
Library    Collections
Library    String

*** Test Cases ***
TC1
    ${files}    List Files In Directory    path=C:${/}Users${/}40032345${/}AppData${/}Local${/}Temp
    Log To Console    ${files}
    Log List    ${files}
    Log To Console    ${files}[0]
    
TC2
    Remove File    path=C:${/}Users${/}40032345${/}demooo.txt"

TC3
    ${name}     Set Variable     robot framework session
    Log To Console    ${name}
    ${convert}  Convert To Upper Case    ${name}
    Log To Console    ${convert}
    ${str}  Remove String    ${name}  SESSION
    Log To Console    ${str}

TC4
    ${num1}     Set Variable    $200,100
    ${num2}     Set Variable    $200
    ${N1}   Remove String    ${num1}    $
    ${N2}   Remove String    ${num2}    $
    ${num3}     Evaluate    ${N1}+${N2}
    $

