*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
Suite Setup    Opening my browser
Suite Teardown    Closing my browser
Test Template    InValid Login

*** Test Cases ***      username                password
right user wrong pwd    harshal@gmail.com       admin12
wrong user right pwd    harshal123@gmail.com    admin123
right user empty pwd    harshal@gmail.com       ${EMPTY}
empty user right pwd    ${EMPTY}                admin123
wrong user wrong pwd    harsh34al@gmail.com     xyz

*** Test Cases ***      username                password
right user right pwd    harshal@gmail.com       admin123

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    inputting username    ${username}
    inputting password    ${password}
    Click Login Button
    Error message on wrong creds

#Valid Login
#    [Arguments]     ${username}     ${password}
#    inputting username    ${username}
#    inputting password    ${password}
#    Click Login Button