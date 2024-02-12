*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
TimeOut
    ${speed}    get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium timeout    10  #Changed the default timeout from 5 to 10 seconds
    wait until page contains    Webdriver Commands_Example  #default timeout of 5secs

    input text    firstname     Harshal
    input text    lastname      Chaudhari

    select radio button    sex   Female
    select radio button    exp      6

*** Keywords ***
