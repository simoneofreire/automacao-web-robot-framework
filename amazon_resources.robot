*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                         http://www.amazon.com.br
${MENU_ELETRONICOS}            //a[normalize-space()='Eletrônicos']
${HEADER_ELETRONICOS}          (//span[contains(text(),'Eletrônicos e Tecnologia')])[1]
${NAO_OBRIGADO}                //input[contains(@aria-labelledby,'attachSiNoCoverage-announce')]
${ADICIONADO_NO_CARRINHO}     (//h1[normalize-space()='Adicionado ao carrinho'])[1]
${CARRINHO}                   nav-cart
${EXCLUIR}                    //input[contains(@value,'Excluir')]
${REMOVIDO_DO_CARRINHO}      (//span[@class='a-size-base sc-list-item-removed-msg-text-delete'])[1]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
     Go To    url=${URL}
     Sleep    10s
     Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TÍTULO}"
    Title Should Be    title=${TÍTULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//span[@class='a-size-base-plus'][normalize-space()='${NOME_CATEGORIA}']

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}
    
 Clicar no botão de pesquisa
     Click Element    locator=nav-search-submit-button
     
Verificar o resultado da pesquisa se esta listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//h2[@aria-label='${PRODUTO}'])[1]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=(//h2[@aria-label='${PRODUTO}'])[1]
    Click Button     locator=add-to-cart-button
    Wait Until Element Is Visible    locator=${NAO_OBRIGADO}
    Click Button    locator=${NAO_OBRIGADO}

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=${ADICIONADO_NO_CARRINHO}
    Click Link    locator=${CARRINHO}
    Wait Until Element Is Visible    locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]


Remover o produto "Console Xbox Series S" do carrinho
    Click Element   locator=${EXCLUIR}

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=${REMOVIDO_DO_CARRINHO}

## GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

 Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
     Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

 E um produto da linha "Xbox Series S" deve ser mostrado na página
     Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"

Quando adicionar o produto "Console Xbox Series S" no carrinho 
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

E existe o produto "Console Xbox Series S" no carrinho
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho 

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
     Verificar se o carrinho fica vazio