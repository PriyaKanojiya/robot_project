*** Settings ***
Library  OperatingSystem
*** Test Cases ***
TC1
    Create Dictionary   path=C:\\demo123
    
TC2
    Log To Console    C:\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    C:${/}demo123
    Log To Console    Priya  Hi
    Log To Console    hi${SPACE}${SPACE}Priya
    Log To Console    ${SUITE_NAME}
