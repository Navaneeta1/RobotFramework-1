*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
     Open Browser       url=https://opensource-demo.orangehrmlive.com/       browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    10s

     Input Text    id=txtUsername    Admin
     Input Password    id=txtPassword    admin123
     Click Element    id=btnLogin
     Click Element    id=welcome
     Click Element    Link=Logout
     



     
