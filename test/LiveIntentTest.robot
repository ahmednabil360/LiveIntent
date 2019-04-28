*** Settings ***

Library    SeleniumLibrary 

*** Variables ***
${GetStarted}    //a[text()='Get Started']
${url}        https://liveintent.com/free-evaluation/        
${ContactUs}    //a[@class='header-cta']

*** Test Cases ***
LiveIntent
    Open Browser    https://liveintent.com/    chrome
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Execute JavaScript    window.scrollBy(0,200)  
    Page Should Contain Element      ${GetStarted}
    Sleep    2        
    Click Element    ${GetStarted}  
    Location Should Be        ${url}  
    Sleep    2
    Page Should Contain Element    ${ContactUs}    
    Close Browser  
       
 
     
    
    
     