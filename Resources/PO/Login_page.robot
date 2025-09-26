*** Settings ***
Documentation     Login page object
Library           SeleniumLibrary

*** Variables ***
${PAGE_URL}         http://the-internet.herokuapp.com/login

${SUCCESSFUL_LOGIN_MSG}       You logged into a secure area!
${SUCCESSFUL_LOGOUT_MSG}        You logged out of the secure area!
${INVALID_PASSWORD_MSG}        Your password is invalid!
${INVALID_USERNAME_MSG}         Your username is invalid!

${LOGIN_BUTTON}         xpath=//*[@id="login"]//button
${LOGOUT_BUTTON}        xpath=//div[@id="content"]/div/a
${USERNAME_FIELD}        xpath=//input[@id="username"]
${PASSWORD_FIELD}        xpath=//input[@id="password"]
${ALERT}                 xpath=//div[@id="flash"]   

*** Keywords ***
Load
    Go to       ${PAGE_URL}
    Sleep       1s

Submit login data
    [Arguments]     ${username}             ${password}
    Input Text      ${USERNAME_FIELD}       ${username}
    Input Text      ${PASSWORD_FIELD}       ${password}
    Click Button    ${LOGIN_BUTTON}

Logout
    Click Link      ${LOGOUT_BUTTON}

Wait alert displayed
    Wait until page contains element        ${ALERT}
