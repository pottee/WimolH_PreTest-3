*** Settings ***
Library             SeleniumLibrary
Resource            PO/Login_page.robot

*** Keywords ***
Open Login Page
    Login_page.Load

Enter for correct username and password
    Login_page.submit login data     tomsmith    SuperSecretPassword!

Page should display success message
    Login_page.Wait alert displayed
    Press Key                    xpath=//body        ESCAPE
    Page Should Contain         ${SUCCESSFUL_LOGIN_MSG}

Log out
    Login_page.Logout

Page should display logout success message
    Login_page.Wait alert displayed
    Page Should Contain        ${SUCCESSFUL_LOGOUT_MSG}

Enter for incorrect password
    Login_page.submit login data     tomsmith    Password!

Page should display invalid password error message
    Login_page.Wait alert displayed
    Page Should Contain         ${INVALID_PASSWORD_MSG}

Enter for username not found
    Login_page.submit login data     tomholland    Password!

Page should display invalid username error message
    Login_page.Wait alert displayed
    Page Should Contain         ${INVALID_USERNAME_MSG}
