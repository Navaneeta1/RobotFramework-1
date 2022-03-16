*** Variables ***
&{PERSONAL_DETAIL}      firstname=Nav       lastname=abc      mobile=7878

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAIL}
    Log To Console    ${PERSONAL_DETAIL}[firstname]
    Log To Console    ${PERSONAL_DETAIL}[lastname]

TC2
    Log To Console    ${PERSONAL_DETAIL}
    Log To Console    ${PERSONAL_DETAIL}[firstname]
    Log To Console    ${PERSONAL_DETAIL}[lastname]

TC3
    &{emp_dic}      Create Dictionary   empname=Nav   companyname=lt
    Log To Console    ${emp_dic}
    Log To Console    ${emp_dic}[empname]