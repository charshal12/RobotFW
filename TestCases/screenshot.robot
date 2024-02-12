*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://omayo.blogspot.com/
#${url2}   https://testpages.eviltester.com/styled/alerts/alert-test.html
${browser}  chrome
*** Test Cases ***
screenshot testing
    open browser    ${url1}  ${browser}
    maximize browser window
    capture element screenshot    //div[@id='HTML29']//img  element.png
    capture page screenshot    website.png
*** Keywords ***
