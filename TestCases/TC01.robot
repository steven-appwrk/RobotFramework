*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Contact_us_check
    Open URL
    MAXIMIZE BROWSER WINDOW
    Open Contact_US
    Input Name
    Input Email
    Selecting Country Code
*** Keywords ***
Open URL
    open browser    https://appwrk.com/    gc

Open Contact_US
    click element   xpath://a[normalize-space()='Contact us']

Input Name
    input text    xpath://input[@placeholder='Your Name']   Steven
    sleep    2s

Input Email
    input text    xpath://input[@placeholder='Your Email']    s.steven.3115@gmail.com
    sleep    2s

Selecting Country Code
    select from list by value    countryList    (Argentina) +54
    sleep    5s
