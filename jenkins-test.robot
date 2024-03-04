*** Settings ***
Library    RequestsLibrary

# *** Test Cases ***
# Test Plus Two Integers Endpoint
#     [Documentation]    Test the /plus/:num1/:num2 endpoint
#     ${responds}=     GET    http://localhost:5000/plus/2/8
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Be Equal As Numbers    ${responds.text}    ${10}
#     Delete All Sessions

# Test Plus Two Floating Endpoint
#     [Documentation]    Test the /plus/:num1/:num2 endpoint
#     ${responds}=     GET    http://localhost:5000/plus/3.2/4.6
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Be Equal As Numbers    ${responds.text}    ${7.8}
#     Delete All Sessions

# Test Plus First Int Second Floating Endpoint
#     [Documentation]    Test the /plus/:num1/:num2 endpoint
#     ${responds}=     GET    http://localhost:5000/plus/5/8.5
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Be Equal As Numbers    ${responds.text}    ${13.5}
#     Delete All Sessions

# Test Plus First Floating second Int Endpoint
#     [Documentation]    Test the /plus/:num1/:num2 endpoint
#     ${responds}=     GET    http://localhost:5000/plus/4.7/6
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Be Equal As Numbers    ${responds.text}    ${10.7}
#     Delete All Sessions

*** Test Cases ***
true_when_x_is_17
    [Documentation]    Test 17
    ${responds}=     GET    http://localhost:5000/is_prime/17
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be True    ${responds.json()}
    Delete All Sessions

false_when_x_is_36
    [Documentation]    Test 36
    ${responds}=     GET    http://localhost:5000/is_prime/36
    Should Be Equal     ${responds.status_code}    ${200}
    Should Not Be True    ${responds.json()}
    Delete All Sessions

true_when_x_is_13219
    [Documentation]    Test 13219
    ${responds}=     GET    http://localhost:5000/is_prime/13219
    Should Be Equal     ${responds.status_code}    ${200}
    Should Be True    ${responds.json()}
    Delete All Sessions

# false_when_x_is_abcd
#     [Documentation]    Test abcd
#     ${responds}=     GET    http://localhost:5000/is_prime/abcd
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Not Be True    ${responds.json()}
#     Delete All Sessions

# false_when_x_is_2.3
#     [Documentation]    Test 2.3
#     ${responds}=     GET    http://localhost:5000/is_prime/2.3
#     Should Be Equal     ${responds.status_code}    ${200}
#     Should Not Be True    ${responds.json()}
#     Delete All Sessions

# VM2 - cd workspace
# VM2 - cd jenkins-test
# VM2 - cd robot
# ^-^ อันข้างบนคือ เข้าโฟลเดอร์นะงับ


# VM2 - python3 -m robot jenkin-test.robot
# ^-^ อันข้างบนคือ รัน robotframework นะครับ แต่มันจะเฟล เพราะว่า jenkins ที่ออกแบบไว้จะล้าง docker container ทำให้ api ไม่ทำงาน อาจารย์อาจจะให้ใช้คำสั่ง cat report.html