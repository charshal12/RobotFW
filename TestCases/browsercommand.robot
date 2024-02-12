*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://www.google.com/
${url2}   https://testpages.eviltester.com/styled/alerts/alert-test.html
${browser}  chrome
*** Test Cases ***
checkingAlerts
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    3
    go to    ${url2}
    sleep    3
    go back
    sleep    3

*** Keywords ***
