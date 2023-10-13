*** Settings ***
Library               RequestsLibrary

*** Test Cases ***
Quick GET On Session Test
    ${response}=    GET  https://www.google.com

Quick GET On Session With Parameters Test
    ${response}=    GET  https://www.google.com/search  params=query=ciao  expected_status=200

Quick Get A JSON Body Test
    ${response}=    GET  https://jsonplaceholder.typicode.com/posts/1
    Should Be Equal As Strings    1  ${response.json()}[id]