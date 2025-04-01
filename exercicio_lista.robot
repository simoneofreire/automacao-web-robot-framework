*** Settings ***
# Aqui, você importa a biblioteca BuiltIn, que é necessária para usar a keyword Log To Console.
Library    BuiltIn
Documentation   Exercício do curso para criar uma variavel do tipo LISTA na seção de variaveis globais que contenha todos os meses do ano

*** Variables ***
@{MESES_DO_ANO}    JANEIRO    FEVEREIRO    MARÇO    ABRIL    MAIO    JUNHO    JULHO    AGOSTO    SETEMBRO    OUTUBRO    NOVEMBRO    DEZEMBRO   

*** Test Cases ***
Caso de teste 01- Imprimir Todos Os Meses
    Imprimir Meses
    
*** Keywords ***
Imprimir Meses
    Log To Console    ${MESES_DO_ANO}[0]
    Log To Console    ${MESES_DO_ANO}[1]
    Log To Console    ${MESES_DO_ANO}[2]
    Log To Console    ${MESES_DO_ANO}[3]
    Log To Console    ${MESES_DO_ANO}[4]
    Log To Console    ${MESES_DO_ANO}[5]
    Log To Console    ${MESES_DO_ANO}[6]
    Log To Console    ${MESES_DO_ANO}[7]
    Log To Console    ${MESES_DO_ANO}[8]
    Log To Console    ${MESES_DO_ANO}[9]
    Log To Console    ${MESES_DO_ANO}[10]
    Log To Console    ${MESES_DO_ANO}[11]
