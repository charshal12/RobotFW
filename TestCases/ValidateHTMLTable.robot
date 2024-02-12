*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   http://opensource-demo.orangehrmlive.com/
${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome

*** Test Cases ***
TableValidation
    launchingBrowser
    login
    timeSheetOperations



*** Keywords ***
launchingBrowser
    open browser    ${url1}     ${browser}
    maximize browser window
    wait until element is visible    xpath://input[@placeholder='Username']

login
    input text    xpath://input[@placeholder='Username']    Admin
    input text    xpath://input[@placeholder='Password']    admin123
    click button    xpath://button[@type='submit']
    sleep   5
    element text should be    xpath://h6[@class='oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module']    Dashboard

timeSheetOperations
    click element    xpath://ul[@class='oxd-main-menu']/li[4]/a
    sleep    5
    #wait until element is visible    xpath://li[@class='oxd-topbar-body-nav-tab --parent --visited']   Timesheets
    click element    xpath://div[contains(text(),'Linda Jane Anderson')]/parent::div/following-sibling::div[2]//button
    sleep    3
    element text should be    xpath://form[@class='oxd-form orangehrm-paper-container']//h6   Timesheet for Linda Anderson
    ${rows}     get element count   xpath://table[@class='orangehrm-timesheet-table']/tbody//tr
    sleep    3
    ${columns}  get element count   xpath://table[@class='orangehrm-timesheet-table']/tbody//tr/td
    sleep    10
    log to console    ${rows}
    log to console    ${columns}

#    ${data}   get text    xpath://table[@class='orangehrm-timesheet-table']/tbody//tr[2]/td[1]
#    log to console  ${data}

#How to fetch all the data from the row
    ${data}   get text    xpath://table[@class='orangehrm-timesheet-table']/tbody
    log to console  ${data}
    log    ${data}

#Validate the data from the table
    table cell should contain   xpath://table[@class='orangehrm-timesheet-table']   2   2   Assessing Project and Resource Requirements
    table column should contain    xpath://table[@class='orangehrm-timesheet-table']  2     Support & Maintanence
    table row should contain    xpath://table[@class='orangehrm-timesheet-table']  3   Global Corp and Co - Global Software phase - 2
    table header should contain     xpath://table[@class='orangehrm-timesheet-table']  Project
    #table footer should contain     xpath://table[@class='orangehrm-timesheet-table']   Status: Submitted
