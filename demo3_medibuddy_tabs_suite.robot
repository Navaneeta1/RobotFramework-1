*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Open Browser             browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://www.medibuddy.in/
     Click Element    xpath=//button[text()='Not Now']
     Click Element    link=For Employer
     Switch Window       MediBuddy LaunchPad
     Input Text    id=getInTouchName    Nav
     Input Text    id=getInTouchEmail    nav@gmail.com
     Input Text    id=getInTouchMobile    9988776655
     Input Text    id=getInTouchEmpCount    1
     Click Element    xpath=//input[@type='submit']
