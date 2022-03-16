*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
     Open Browser             browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default

     Input Text     id=authUser    admin
     Input Text     id=clearPass    pass
     Select From List By Label    name=languageChoice          English (Indian)
     Click Element     xpath=//button[@type='submit']
     Click Element    xpath=//div[contains(text(),'Messages')]
     Select Frame    name=msg
     Click Element    partial link=Add New
     Input Text    id=note    Hello
     Select From List By Label    id=form_note_type     Pharmacy
     Select From List By Label    id=form_message_status        Forwarded
     Select From List By Index    id=users
     Click Button    xpath=//button[@id="newnote"]
     Element Text Should Be    id=error_reply_to    Plese choose a patient


