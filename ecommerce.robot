*** Settings ***
Library     SeleniumLibrary

Suite Setup     Open Browser        ${url}      ${browser}
Suite Teardown      Close Browser

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      Chrome

${user-id-elements}     //input[@id='Email']
${password-id-elements}     //input[@id='Password']
${LoginButton-id-elements}      //a[.='Log in']
${Confirm_LoginButton-id-elements}      //button[contains(text(),'Log in')]
${user-id}      pavanoltraining@gmail.com
${password}     Test@123


*** Test Cases ***
Case [Rep-1658] : Login
        Sleep    2
        Click Button    ${LoginButton-id-elements}
        Input Text    ${user-id-elements}    ${user-id}
        Input Text    ${password-id-elements}    ${password}
        Sleep    2
        Click Button    ${Confirm_LoginButton-id-elements}
        Sleep    3
