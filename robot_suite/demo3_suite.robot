*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
  Log To Console    ${CURDIR}
  Log To Console    ${EXECDIR}
  Log To Console    ${OUTPUT_DIR}
  Log To Console    ${TEMPDIR}
  Log To Console    ${TEST_NAME}


TC2
    Create Directory       E:${/}ROBOT_SESSION${/}ROBOT_PROJECTS${/}Temp
    Create File            E:${/}ROBOT_SESSION${/}ROBOT_PROJECTS${/}Temp${/}Notes.txt        Happy Birthday Navaneeta!

TC3
   Copy File    E:${/}ROBOT_SESSION${/}ROBOT_PROJECTS${/}Temp${/}Notes.txt    E:${/}ROBOT_SESSION${/}ROBOT_PROJECTS${/}Temp${/}Notes1.txt


