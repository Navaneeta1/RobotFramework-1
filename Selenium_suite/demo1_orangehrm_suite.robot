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

TC2
     Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
     Open Browser       url=https://opensource-demo.orangehrmlive.com/       browser=chrome
     Maximize Browser Window


     Input Text    id=txtUsername    Admin
     Input Password    id=txtPassword    admin123
     Click Element    id=btnLogin
     Click Element    id=menu_pim_viewMyDetails
     Click Element    partial link=Emergency Contacts
     Click Element    id=btnAddContact
     Input Text    name=emgcontacts[name]    Nav
     Input Text    id=emgcontacts_relationship    Brother
     Input Text    id=emgcontacts_homePhone    77777
     Click Element    id=btnSaveEContact
     Click Element    id=btnSaveEContact
     Table Should Contain       id=emgcontact_list         Nav
     Table Should Contain       id=emgcontact_list         77777


     



     
