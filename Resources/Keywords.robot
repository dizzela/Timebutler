*** Settings ***
Resource    imports.resource
Library     XML


*** Keywords ***
Hape browserin
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    1s

Click the LoginButton
    Click Element    ${loginLocator}

Enter Info
    Input Text    //input[@id='login']    dijamant@imbus-peja.de
    Input Password    ${passLocator}    Asdf1234.,
    Click element    ${login2Locator}

Tracking in Calendar View
    Click Element    //div[@class='navbar-right']/ul[@class="nav navbar-nav"]

    Click Element    //*[@href="/do?ha=lang&ac=1&loc=en_UK"]    #//a[@class="text-gray "]
    Click Element    ${TTCalendarView}
    #Kushti
    Page Should Contain Element    css:td[class*='ic4n']

    Click Element    css:td[class*='ic4n']    #dita
    Click Element
    ...    //div[@class='popover-content']//a[@class='btn btn-primary btn-xs'][normalize-space()='New entry']
    Press Key    //*[@id="projektid"]    No Project    #project button
    Press Key    //*[@id="dauer"]    8
    Click Element    //*[@id="newEntrySubmitBtn"]
    Sleep    5s
    Run Keyword    Tracking in Calendar View
