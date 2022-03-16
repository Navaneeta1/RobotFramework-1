*** Settings ***
Library    String
*** Test Cases ***
TC1
    Log To Console    hello${SPACE}${SPACE}world
    ${val}      Set Variable      nav
    ${val}     Convert To Upper Case        ${val}
    Should Be Equal    ${val}     NAV