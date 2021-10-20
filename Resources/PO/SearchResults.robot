*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH-TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Element  xpath=/html/body/div[1]/div[2]/div[1]/div[1]/div/span[3]/div[2]/div[1]/div/span/div/div/div/div/div[2]/div[1]/h2/a
    #Click Link  css=.widgetId\=search-results_1 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > h2:nth-child(2) > a:nth-child(1)