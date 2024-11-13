*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Open the browser
    Open Browser    browser=chrome     options=add_argument("--disable-search-engine-choice-screen")
    Maximize Browser Window

Close the browser 
    Close Browser