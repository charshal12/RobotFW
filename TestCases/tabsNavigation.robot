*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
navigatebrowsertabs
    open browser    https://robotframework.org/     chrome
    maximize browser window
    sleep   3
    click link    //a[normalize-space()='Github issues.']
    sleep    5
    switch window    Robot Framework
    sleep   3
    close window
    sleep   3
    close browser


    #close browser  close only last browser opened
    #close all browsers      #close all the browsers

*** Keywords ***
