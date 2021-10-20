*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    Wait Until Page Contains  Customer Service
    Input Text  twotabsearchtextbox  Ferrari 458
    Click Button  nav-search-submit-button
    Wait Until Page Contains  results for "Ferrari 458"
    Click Element  /html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[1]/div/span/div/div/div/div/span/a
    #Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/h2/a
    #Click Link  css=.widgetId\=search-results_1 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > h2:nth-child(2) > a:nth-child(1)
    Wait Until Page Contains  Back to results
    Click Button  iadd-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  //*[@id="hlb-ptc-btn-native"]
    Page Should Contain Element  continue
    Close Browser

*** Keywords ***
