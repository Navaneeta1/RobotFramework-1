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
     Input Text    id=getInTouchMobile    9988
     Input Text    id=getInTouchEmpCount    1
     Input Text    id=getInTouchDesignation    Student
     Click Element    xpath=//button[@text()='Get in Touch']
     Element Text Should Be    //div[contains(text(),'digits')]   Mobile Number should be 10 digits
     [Teardown]    Close Browser


