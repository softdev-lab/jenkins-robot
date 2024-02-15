*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test Plus Two Int Endpoint
    [Documentation]    Test the /plus/:num1/:num2 endpoint
    ${responds}=     GET    http://localhost:4000/plus/2/8
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be Equal As Numbers    ${responds.text}    ${10}
    Delete All Sessions

Test Plus Two Floating Endpoint
    [Documentation]    Test the /plus/:num1/:num2 endpoint
    ${responds}=     GET    http://localhost:4000/plus/3.2/4.6
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be Equal As Numbers    ${responds.text}    ${7.8}
    Delete All Sessions

Test Plus First Int Second Floating Endpoint
    [Documentation]    Test the /plus/:num1/:num2 endpoint
    ${responds}=     GET    http://localhost:4000/plus/5/8.5
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be Equal As Numbers    ${responds.text}    ${13.5}
    Delete All Sessions

Test Plus First Floating second Int Endpoint
    [Documentation]    Test the /plus/:num1/:num2 endpoint
    ${responds}=     GET    http://localhost:4000/plus/4.7/6
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be Equal As Numbers    ${responds.text}    ${10.7}
    Delete All Sessions

