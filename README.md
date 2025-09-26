
The automation test http://the-internet.herokuapp.com/login , for 3 cases here:
- Log in success
- Login failed - Password incorrect
- Login failed - Username not found

**Pre-notes: **

Ensure has update with 'SeleniumLibrary' (not 'Selenium2Library) // This works with Selenium4, support Python 3.8 through 3.13
$ python3 -m pip show robotframework-seleniumlibrary
or 
$ pip install --upgrade robotframework-seleniumlibrary

**How to run:**
$ robot Tests/Login_feature.robot
