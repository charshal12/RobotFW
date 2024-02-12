*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
FillForm
    ${speed}    get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    3 seconds

    input text    firstname     Harshal
    input text    lastname      Chaudhari

    select radio button    sex   Female
    select radio button    exp      6

*** Keywords ***
