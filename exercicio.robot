*** Settings ***
Library    BuiltIn

*** Variables ***
@{NUMEROS}    1    2    3    4    5    6    7    8    9    10

*** Test Cases ***
Teste Verificacao
    Verifica Numeros

*** Keywords ***
Verifica Numeros
    FOR    ${numero}    IN    @{NUMEROS}
        IF    '${numero}' == '5'
            Log    Eu sou o número 5!
        ELSE IF    '${numero}' == '10'
            Log    Eu sou o número 10!
        ELSE
            Log    Eu não sou o número 5 e nem o 10!
        END
    END

