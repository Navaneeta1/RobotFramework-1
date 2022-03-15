*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Open Browser     url=https://www.goto.com/meeting        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     
     Click Element    id=truste-consent-button
     Click Element    link=Get a Demo
     Input Text    xpath=//input[@data-sc-field-name='firstName']    Navaneeta
     Input Text    xpath=//input[@data-sc-field-name='lastName']    Y
     Input Text    xpath=//input[@data-sc-field-name='email']    nav@gmail.
     Get Selected List Label    xpath=//select[@data-sc-field-name='employees']       10 - 99
     Click Element    xpath=//input[@type='submit']
     [Teardown]     Close Browser


