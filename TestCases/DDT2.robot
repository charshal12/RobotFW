*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
Library    DataDriver   ../Resources/Data.xlsx
Suite Setup    Opening my browser
Suite Teardown    Closing my browser
Test Template   Invalid Login

*** Test Cases ***
LoginTestUsingExcel using ${username}  and   ${password}
*** Keywords ***
Invalid Login
     [Arguments]     ${username}     ${password}
    inputting username    ${username}
    inputting password    ${password}
    Click Login Button
    Error message on wrong creds