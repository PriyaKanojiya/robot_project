*** Settings ***
Library  DateTime

*** Test Cases ***
TC1
    Log To Console  message=Priya
    Log To Console    hello
    
TC2
    ${my_name}  Set Variable  Priya
    Log To Console    ${my_name}

TC3
    ${current_date}  get current date
    Log To Console    ${current_date}
    
TC4
    ${radius}  Set Variable  6
     ${radius}  Evaluate    3.14${radius}*${radius}