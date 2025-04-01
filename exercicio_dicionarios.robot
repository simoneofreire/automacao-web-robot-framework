*** Settings ***
Library           BuiltIn
Library           Collections

*** Variables ***
&{MESES_DIAS}    JANEIRO=31
...              FEVEREIRO=28
...              MARÇO=31
...              ABRIL=30
...              MAIO=31
...              JUNHO=30
...              JULHO=31
...              AGOSTO=31
...              SETEMBRO=30
...              OUTUBRO=31
...              NOVEMBRO=30
...              DEZEMBRO=31

*** Test Cases ***
Caso de teste 01 - Contagem dos meses do ano e sua respectiva quantidade de dias 
    Listar meses e quantidade de dias

*** Keywords ***
Listar meses e quantidade de dias
    ${meses} =    Set Variable    ${MESES_DIAS}
    FOR    ${mes}    IN    @{meses.keys()}
        ${dias} =    Get From Dictionary    ${meses}    ${mes}
        Log To Console    ${mes} tem ${dias} dias
    END