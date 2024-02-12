*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://testpages.eviltester.com/styled/validation/input-validation.html
${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome

*** Test Cases ***
#Returning Values with Keywords
#    ${pagetitle}    launchingBrowser    ${url1}     ${browser}
#    log to console    ${pagetitle}
#    fillUpForm

Returning Values with Keywords Log
    ${pagetitle}    launchingBrowser    ${url2}     ${browser}
    log    ${pagetitle}

*** Keywords ***
launchingBrowser
    [Arguments]     ${weburl}   ${webbrowser}
    open browser    ${weburl}     ${webbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}


fillUpForm
    input text    xpath://input[@id='firstname']    Coders
    input text    xpath://input[@id='surname']      Zone
