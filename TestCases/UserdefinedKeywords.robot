*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://testpages.eviltester.com/styled/validation/input-validation.html
${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome

*** Test Cases ***
PracticeForm
    launchingBrowser    ${url1}     ${browser}
    fillUpForm

*** Keywords ***
launchingBrowser
    [Arguments]     ${weburl}   ${webbrowser}
    open browser    ${weburl}     ${webbrowser}
    maximize browser window

fillUpForm
    input text    xpath://input[@id='firstname']    Coders
    input text    xpath://input[@id='surname']      Zone
