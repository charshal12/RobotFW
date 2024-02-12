*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://testpages.eviltester.com/styled/index.html
${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome
*** Test Cases ***
Mouse Action right click
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    5
    open context menu    xpath://a[@id='basicpagetest']
    sleep    5
    press keys    xpath://a[@id='basicpagetest']    enter
    sleep    5


Mouse Action double click
    open browser    ${url2}  ${browser}
    maximize browser window
    sleep    5
    double click element    xpath://img[@src='https://magento.softwaretestingboard.com/pub/media/wysiwyg/home/home-main.jpg']
    sleep    5
    element text should be   xpath://span[@class='base']     New Luma Yoga Collection
    sleep    5



*** Keywords ***
