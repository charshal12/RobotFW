*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}   https://demo.nopcommerce.com/login
#${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome

*** Keywords ***
Opening my browser
    open browser    ${url}  ${browser}
    maximize browser window

Closing my browser
    close all browsers

Logging into page
    go to   ${url}

Inputting Username
    [Arguments]     ${username}
    input text    id:Email      ${username}

Inputting Password
    [Arguments]     ${password}
    input text    id:Password      ${password}

Click Login Button
    click element    xpath://button[normalize-space()='Log in']

Click LogOut Button
    click element    xpath://a[@href='/logout']

Error message on wrong creds
    page should contain    Login was unsuccessful.

Dashboard page should be visible
    page should contain     Welcome to our store
