## 1. Projeto de Automação Mobile e Web com Robot Framework

Este projeto utiliza o Robot Framework e a AppiumLibrary para automação de testes em dispositivos móveis e a SeleniumLibrary para testes web. O objetivo é fornecer uma estrutura de testes abrangente que pode ser utilizada tanto para aplicações web quanto para aplicativos móveis.

## 2. Sobre o Robot Framework

    - O Robot é um framework focado em automação de testes, que permite automatizar em qualquer tipo de sistemas: API, WEB, MOBILE, DESKTOP e Banco de Dados.
    - Utiliza palavras-chaves para automação, não precisa utilizar uma linguagem de programação para automatizar com o robot.
    - Desenvolvido em Python
    - É open source e multiplataforma (Windows, Mac, Linux)
    - Documentação oficial: https://robotframework.org/

## 3. Estrutura do Projeto

A estrutura do projeto é organizada de maneira a facilitar a manutenção e a escalabilidade dos testes. Abaixo está um exemplo de como a estrutura pode ser organizada:
- **tests/**: Contém subdiretórios para testes web e mobile, facilitando a localização e a organização dos testes.
- **resources/**: Inclui palavras-chave personalizadas e variáveis globais que podem ser reutilizadas em todos os testes.
- **results/**: Onde os logs e relatórios gerados após a execução dos testes serão armazenados.

## 4. Documentação para Instalação do Robot Framework
Este documento fornece instruções para a instalação do Robot Framework em sistemas operacionais macOS e Windows.

## Pré-requisitos
    - Python 3.6 ou superior
    - `pip` (geralmente incluído com a instalação do Python)
    - Acesso ao terminal (macOS) ou Prompt de Comando (Windows)

## 5. Instalar o Python e Robot Framework

### 1. Instalação no macOS
1. Vá até o [site oficial do Python](https://www.python.org/downloads/) e faça o download da versão mais recente.
2. Siga as instruções para instalar o Python. **Certifique-se de marcar a opção "Add Python to PATH" durante a instalação.**
3. Verifique se o Python está instalado corretamente:
   python3 --version
   which python3
   
4. Configurar o PATH:
   Abra o terminal e edite o arquivo .zshrc: 
   nano ~/.zshrc
   
   Adicione a seguinte linha para garantir que o diretório do Python esteja no PATH:
   export PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:$PATH" **Lembre-se de verificar a versão do Python**

   Salve e saia do editor (pressionando Control + O, Enter, e depois Control + X).
   Recarregue o arquivo .zshrc:
   source ~/.zshrc
   
5. Instalar o Robot Framework:
   Após garantir que o Python está instalado e o PATH está configurado, instale o Robot Framework e suas bibliotecas usando pip:
   python3 -m pip install robotframework robotframework-seleniumlibrary robotframework-requests
   
   Para listar as bibliotecas instaladas usando pip, execute:
   python3 -m pip list
   
6. Passos para Instalar a Biblioteca robotframework-appiumlibrary 

    Certifique-se de que o Appium está instalado: 
    Se você ainda não instalou o Appium, você pode instalá-lo globalmente usando o npm (Node Package Manager). Para isso, você precisa ter o Node.js instalado. Você pode instalar o Appium com o seguinte comando:
    npm install -g appium

    Instalar a biblioteca Appium para o Robot Framework:
    python3 -m pip install robotframework-appiumlibrary

    Após a instalação, verifique se a biblioteca foi instalada corretamente:
    python3 -m pip show robotframework-appiumlibrary

    Para verificar se a biblioteca está na lista de pacotes instalados:
    python3 -m pip list
   
   ### 2. Instalação no Windows
1. Vá até o [site oficial do Python](https://www.python.org/downloads/) e faça o download da versão mais recente.
2. Siga as instruções para instalar o Python. **Certifique-se de marcar a opção "Add Python to PATH" durante a instalação.**
3. Verifique se o Python está instalado corretamente:
    python --version
    where python

4. Instalar o Robot Framework:
    Após garantir que o Python está instalado e configurado, instale o Robot Framework e suas bibliotecas usando pip:
    python -m pip install robotframework robotframework-seleniumlibrary robotframework-requests

    Para listar os pacotes instalados usando pip, execute:
    python -m pip list

5. Passos para Instalar a Biblioteca robotframework-appiumlibrary
    Se você ainda não instalou o Appium, você pode instalá-lo globalmente usando o npm (Node Package Manager). Primeiro, você precisa ter o Node.js instalado. Após instalar o Node.js, abra o Prompt de Comando e execute:
    npm install -g appium

    Instalar a biblioteca Appium para o Robot Framework:
    python -m pip install robotframework-appiumlibrary

    Após a instalação, você pode verificar se a biblioteca foi instalada corretamente:
    python -m pip show robotframework-appiumlibrary

    Para verificar se a biblioteca está na lista de pacotes instalados:
    python -m pip list

## 6. Instalação do Chromedriver
    Para realizar testes WEB usando a Seleniumlibrary é necessario instalar o chromedriver:
    Para baixar chromedrivers da versão 115 adiante, siga os passos:
    1 - Entre em https://googlechromelabs.github.io/chrome-for-testing/
    2 - Role a página para baixo, até encontrar umas tabelas com URLs
    3 - Procure pela versão do seu Chrome, por exemplo, se o seu Chrome atual for 134, procure tabela de URLs da versão 134
    4 - Procure a linha relativa ao "chromedriver" e ao Sistema Operacional da sua máquina
    5 - Pegue a URL e cole no navegador para fazer o download
    OBS.: Para evitar conflitos, lembre-se de apagar todos os Chromedrivers antigos e que possam estar em outras pastas da sua máquina também, antes de baixar um chromedriver novo.
     
     **Configurar o Chromedriver**:
   - Após o download, extraia o arquivo do Chromedriver e mova o executável para um diretório que esteja no seu `PATH`. Por exemplo, você pode movê-lo para `/usr/local/bin` no macOS ou para um diretório apropriado no Windows.
   - Para garantir que o Chromedriver esteja acessível, você pode verificar a instalação executando:

   chromedriver --version
   
## 7. Plugins Recomendados
    Para facilitar a criação de localizadores e melhorar a automação, considere instalar os seguintes plugins:
        1 - SelectorsHub - XPath Helper:
             Um plugin útil para ajudar na criação de localizadores XPath e CSS. Você pode instalá-lo na loja de extensões do Chrome.
        2 - Visual Studio Code:
            É recomendado usar o Visual Studio Code como seu editor de texto.
            Plugins recomendados:
                Robot Framework Language Server: Para suporte a linguagem no Robot Framework.
                Dracula Theme Official: Para um tema escuro.
                Material Icon Theme: Para uma melhor visualização de ícones.
    Esses plugins e ferramentas podem melhorar sua produtividade ao escrever e manter seus testes.


## Observações: 
    É recomendável que todos os membros da equipe sigam as mesmas etapas de instalação para evitar problemas de compatibilidade.