*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.youtube.com/c/CodersArcade
${browser}  chrome
*** Test Cases ***
Google
    insidegoogle

*** Keywords ***
insidegoogle
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    10
    close browser
