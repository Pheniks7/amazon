*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
    #Click Link  id=a-autoid-0-announce
    Click Link  xpath=//*[@id="hlb-ptc-btn-native"]