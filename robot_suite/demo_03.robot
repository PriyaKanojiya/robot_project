*** Settings ***
Library     Collections

*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}       777777777
@{COLORS}   red     black     white
&{MY_DETAILS}   name=priya  role=trainee    mobile=123456

*** Test Cases ***
TC1
    ${my_name}      Set Variable    Priya
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${MOBILE_NUM}

TC3
    Log To Console    ${COLORS}[2]
    Log To Console    ${COLORS}

TC4
    ${item_count}   Get Length    ${COLORS}
   Log To Console    ${item_count}

TC5
    ${fruits}   Create List     apple    orange    mango
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}     grapes
    Remove From List    ${fruits}    0
    Insert Into List    ${fruits}    1    pineapple
    ${item_count}   Get Length    ${fruits}
    Log To Console    ${item_count}
    Log To Console    ${fruits}

TC6
    FOR    ${I}    IN RANGE    1    10
        Log    ${I}

    END

TC7
    @{fruits}   Create List     orange  mango   apple   pineapple
    FOR    ${i}    IN RANGE    0    4
        Log To Console   ${i}
        Log To Console    ${fruits}[${i}]
    END

TC8
    @{fruits}   Create List     orange  mango   apple   pineapple
    FOR    ${i}    IN    @{fruits}
        Log    ${i}

    END
TC9
    Log To Console    ${MY_DETAILS}[mobile]

TC10
    &{emp_details}  Create Dictionary   emp_id=101  emp_name=priya   role=er
    Log To Console    ${emp_details}