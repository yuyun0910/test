*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login
    Open Browser                                      https://rc-webd.rctiplus.com/login       chrome
    Maximize Browser Window         
    Wait Until Element Is Enabled                     id:username                               1
    Input Text                                        id:username                               yuyunjoe529@gmail.com
    Input Text                                        id:password                               yuyun0910
    Click Element                                     id:btnLogin
    Wait Until Element Is Enabled                     xpath://a[contains(text(),'NEWS+')]                          1
    Click Element                                     //*[@id="collapsingNavbar3"]/ul[1]/li[4]/a
    Wait Until Element Is Enabled                     //*[@id="daily"]/div/div/div[1]/div/ul/div/div/div[2]/div/div/a/span  1
    Click Element                                     //*[@id="daily"]/div/div/div[1]/div/ul/div/div/div[2]/div/div/a/span
    Input Text                                        id:keyword                                                            banjir
    Press Keys                                        id:keyword                                                            Reload
    Page Should Contain                               results for banjir
    #Close Browser
*** Keywords ***