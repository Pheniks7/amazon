*** Settings ***

*** Variables ***
${USENAME_PASSWORD_LOGGINED} =  Roman  Jdi1234  ROMAN IOVLEV

*** Test Cases ***
Variable demonstration
    Log  ${USENAME_PASSWORD_LOGGINED}[0]
    Log  ${USENAME_PASSWORD_LOGGINED}[1]
    Log  ${USENAME_PASSWORD_LOGGINED}[2]


#Variable demonstration 2
#    # Set Variable does work for creating lists...
#    # @{my_list_variable} =  Set Variable  Item 1  Item 2  Item 3
#
#    # but Create List is the best practice
#    @{my_list_variable} =  Create List  Item 1  Item 2  Item 3
#    Log  @{my_list_variable}[0]
#    Log  @{my_list_variable}[1]
#    Log  @{my_list_variable}[2]