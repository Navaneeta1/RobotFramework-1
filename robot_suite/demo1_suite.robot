*** Test Cases ***
TC1 Print My Name
   Log To Console    Navaneeta

TC2
  ${session_name}  Set Variable   Robot Session
  Log To Console    ${session_name}
  Log To Console    Session Name is ${session_name}

TC3
  ${var1}    Set Variable    25
  ${va21}    Set Variable    26
  Log To Console    ${var1}
  Log To Console    ${va21}

TC4
   ${var1}    Set Variable    25
  ${var2}    Set Variable    26
  ${result}   Evaluate    ${var1}+${var2}  
  Log To Console    ${result}

TC5
   ${radius}      Set Variable     10
   ${area}        Evaluate         3.14*${radius}*${radius}
   Log To Console    ${area}

