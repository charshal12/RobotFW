*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.flipkart.com/
${browser}  chrome


*** Test Cases ***
ValidationTest
    open browser    ${url}  ${browser}
    wait until page contains    ${url}
    maximize browser window
    title should be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    click element    xpath://span[normalize-space()='Login']
    ${input_txt}    set variable    xpath://input[@class='_2IX_2- VJZDxU']
    element should be enabled    ${input_txt}
    element should be visible    ${input_txt}
    sleep   3
    input text    xpath://input[@class='_2IX_2- VJZDxU']    charshal12@yahoo.in
    sleep   3
    clear element text    xpath://input[@value='charshal12@yahoo.in']
    sleep    3
    close browser
*** Keywords ***
