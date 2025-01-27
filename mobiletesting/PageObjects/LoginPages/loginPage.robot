*** Settings ***
Library    AppiumLibrary
Documentation     login page keyword related
Variables         login-page-locators.yaml

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible     ${username_login_input}
    Input Text          ${username_login_input}   ${username}


Input Password
    [Arguments]     ${password}
    Input Text      ${password_login_input}    ${password}


Click Sign In button On Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]    


Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
