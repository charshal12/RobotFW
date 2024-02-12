*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
checking radio buttons and check boxes
    open browser    ${url}  ${browser}
    maximize browser window

    # Selecting radio buttons
    select radio button    sex   Female
    select radio button    exp      6
    sleep   2

     # Selecting check boxes
    select checkbox    profession
    select checkbox    tool
    sleep   2
    unselect checkbox    tool
    sleep   2

*** Keywords ***
