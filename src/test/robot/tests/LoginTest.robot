*** Settings ***
Documentation     Suite de testes - Pesquisa no google
Resource    ../resources/steps/LoginSteps.resource

Suite Setup    Setup WebDriverManager

*** Test Cases ***
Acessar pagina da google e pesquisar por praia
    Acessar a pagina do google
    digitar no campo de pesquisa "Cardif"
    #clicar no botão pesquisar
    #clicar em imagens
    #conferir se o resultado é exibido corratamente

