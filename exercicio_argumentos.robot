*** Settings ***
Library           BuiltIn
Library           String

*** Variables ***
${EMAIL_DOMAIN}    @testerobot.com

*** Test Cases ***
Gerar Email Customizado
    ${email} =    Criar Email    May    Fernandes
    Log To Console    O email gerado é: ${email}

*** Keywords ***
Criar Email
    [Arguments]    ${nome}    ${sobrenome}
    ${palavra_aleatoria} =    Generate Random String    6    letters     # Gera uma string aleatória de 6 letras
    ${email} =    Set Variable    ${nome}${sobrenome}${palavra_aleatoria}${EMAIL_DOMAIN}
    RETURN    ${email}