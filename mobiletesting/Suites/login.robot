*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPages/loginPage.robot
Test Setup       Run Keywords     Open Flight Android Application        AND  Verify Home Screen Appears
Test Teardown    Close Flight Application


Library    OperatingSystem

*** Test Cases ***  
User should be able to login with valid data
    Click Sign In Button On Home Screen
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In button On Login Screen
    Verify User Successfully Login
    
User should be able to login with unvalid data
    Click Sign In Button On Home Screen
    Input Username    username=support.com
    Input Password    password=abc123
    Click Sign In button On Login Screen
    Verify User Successfully Login
    
User should not be able to login with empty password
    Click Sign In Button On Home Screen
    Input Username    username=support.com
    Input Password    password=${EMPTY}
    Click Sign In button On Login Screen
    Verify User Successfully Login
    

