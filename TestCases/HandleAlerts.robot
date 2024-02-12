*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url}   https://testpages.eviltester.com/styled/alerts/alert-test.html
${browser}  chrome
*** Test Cases ***
checkingAlerts
    open browser    ${url}  ${browser}
    maximize browser window

    #click button    //input[@id='alertexamples'
    #wait until element is visible    tag:button
    #sleep   3
    #handle alert    accept
    #sleep    5


    click button    //input[@id='confirmexample']
    sleep    5
    alert should be present    I am a confirm alert
    #handle alert    dismiss
    sleep   5
    #element text should be    You successfully clicked an alert
*** Keywords ***
