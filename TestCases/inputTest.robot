*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    input text    xpath://textarea[@id='APjFqb']  Amazon
    click button    xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    sleep   2
    clear element text  xpath://textarea[@id='APjFqb']
    sleep    2
    input text    xpath://textarea[@id='APjFqb']  Flipkart
    click button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
*** Keywords ***
