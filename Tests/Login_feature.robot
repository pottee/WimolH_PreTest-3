*** Settings ***
Resource            ../Resources/Login.robot
Resource            ../Resources/Common.robot
Test Setup          Common.Begin web test
Test Teardown       Common.End web test

*** Test Cases ***
TC1 Login success
    Login.Open login page
    Login.Enter for correct username and password
    Login.Page should display success message
    Login.Log out
    Login.Page should display logout success message

TC2 Login failed - Password incorrect
    Login.Open login page
    Login.Enter for incorrect password
    Login.Page should display invalid password error message

TC3 Login failed - Username not found
    Login.Open login page
    Login.Enter for username not found
    Login.Page should display invalid username error message
    