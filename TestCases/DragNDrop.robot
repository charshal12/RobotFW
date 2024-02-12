*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://testpages.eviltester.com/styled/drag-drop-javascript.html
${url2}     https://magento.softwaretestingboard.com/?ref=hackernoon.com
${browser}  chrome
*** Test Cases ***

Drag and Drop Elements
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    5
    drag and drop    xpath://div[@id='draggable1']      xpath://div[@id='droppable1']
    sleep    5
    element text should be      xpath://div[@id='droppable1']    Dropped!
    sleep    5
    drag and drop    xpath://div[@id='draggable2']//p[contains(text(),'Drag me')]    xpath://div[@id='droppable1']
    sleep    5
    element text should be      xpath://div[@id='droppable1']    Get Off Me!
    sleep    5


