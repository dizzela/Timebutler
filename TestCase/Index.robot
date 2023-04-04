*** Settings ***
Resource    ../Resources/imports.resource
Resource    ../Resources/Keywords.robot


*** Test Cases ***
Open the Browser
    Hape browserin

Enter LoginButton
    Click the loginButton

Enter informations
    Enter Info

Tracking Hours
    Tracking in Calendar View
    Sleep    1s
