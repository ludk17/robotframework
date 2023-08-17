*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
API Test
    Create Session    api    https://api.publicapis.org/
    ${response}    GET On Session    api    /entries
    Should Be Equal As Strings    ${response.status_code}    200
    Should Contain    ${response.text}    entries
    Delete All Sessions