*** Settings ***
Documentation     Common object
Library           SeleniumLibrary

*** Variables ***
${BROWSER}          chrome

*** Keywords ***
Begin web test
    Open Browser    about:blank     ${BROWSER}

End web test
    Close Browser
    