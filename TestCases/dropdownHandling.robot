*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
DropdownTest
    open browser    ${url}  ${browser}
    maximize browser window

    select from list by label   continents    Africa
    sleep   5
    select from list by index   continents      6
    sleep   5

    # Select multiple items in Listbox
   select from list by index    selenium_commands   2
   sleep    3
   select from list by label    selenium_commands   WebElement Commands
   sleep    3
*** Keywords ***
