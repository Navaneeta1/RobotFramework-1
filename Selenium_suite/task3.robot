*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Open Browser             browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://phptravels.net/