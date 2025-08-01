*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.google.com
${DRIVER_DIR}     ${CURDIR}/drivers
${ROLE}           "Praia da enseada no guaruja"

*** Keywords ***

Setup WebDriverManager
    Run    webdrivermanager chrome --linkpath ${DRIVER_DIR}

Acessar a pagina do google
    Open Browser    url=${URL}    browser=${BROWSER}

digitar no campo de pesquisa "${role}"
    Input Text    id=APjFqb    ${role}
    #Wait Until Element Is Visible   //li[@data-view-type]

clicar no botão pesquisar
    Scroll Element Into View        xpath=//div[@jsname="VlcLAe"]/center/input[@value="Pesquisa Google"]
    Click Element    xpath=//div[@jsname="VlcLAe"]/center/input[@value="Pesquisa Google"]

clicar em imagens
    Click Element    //div[normalize-space(text())="Imagens"][@class="YmvwI"]

conferir se o resultado é exibido corratamente
    Page Should Contain Element    //*[contains(text(),'Praia')]
