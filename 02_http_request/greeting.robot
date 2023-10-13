*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get On Session Greeting Message Hello World
    Create Session    greeting    http://localhost:3000
    ${response}=    GET On Session    greeting    /say
    Should Be Equal    ${200}    ${response.status_code}
    Should Be Equal    ${response.json()["message"]}    Hello World!