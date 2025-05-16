*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://robotcode.io/

*** Test Cases ***
Ouvrir La Page Robot
    Open Browser    ${URL}    chrome
    Sleep    5
    Page Should Contain    Ultimate
    Close Browser