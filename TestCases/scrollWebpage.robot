*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${url1}   https://en.wikipedia.org/wiki/Main_Page
#${url2}   https://testpages.eviltester.com/styled/alerts/alert-test.html
${browser}  chrome
*** Test Cases ***
Scroll Webpage with pixels
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    5
    execute javascript    window.scrollTo(0,1800)
    sleep   5
    element should be visible    //img[@alt='MediaWiki logo']

Scroll Webpage testing to an element
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    5
    #execute javascript    window.scrollTo(0,1300)
    #sleep   5
    scroll element into view    //img[@alt='Ely Cathedral']
    capture element screenshot   //img[@alt='Ely Cathedral']     jhoomer.png

Scroll Webpage testing to an end
    open browser    ${url1}  ${browser}
    maximize browser window
    sleep    5
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    5
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)

*** Keywords ***
