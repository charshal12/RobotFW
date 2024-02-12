*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
Implicit Wait
    ${wait}    get selenium implicit wait
    log to console    ${wait}

    open browser    ${url}  ${browser}
    maximize browser window

    set selenium implicit wait    10

    ${wait}    get selenium implicit wait
    log to console    ${wait}

    input text    firstname1     Harshal
    input text    lastname      Chaudhari

    select radio button    sex   Female
    select radio button    exp      6

*** Keywords ***
