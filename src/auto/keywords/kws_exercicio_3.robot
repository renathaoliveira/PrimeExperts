*** Settings ***
Documentation    Keywords Desafio Final 3 - PrimeHero

*** Keywords ***
Quando clicar em Sign in e adicionar email e preencher os campos

    ${random}            String.Generate Random String    3                                    [NUMBERS]
    Set Test Variable    ${mail}                          testrobotprime${random}@gmail.com

    Click Element                    ${sign_in}
    Wait Until Element Is Visible    ${campo_email_sign}
    Input Text                       ${campo_email_sign}      ${mail}
    Click Button                     ${create_new_account}


    Wait Until Element Is Visible    ${title}
    Click Element                    ${title}

    Input Text                   ${first_name}    Mrs
    Input Text                   ${last_name}     Renatha
    Input Text                   ${email}         ${mail}
    Input Text                   ${password}      789987aa
    Select From List By Value    id:days          11
    Select From List By Value    id:months        7
    Select From List By Value    id:years         1991
    Input Text                   ${firstname}     Mrs
    Input Text                   ${lastname}      Renatha
    Input Text                   ${address}       89 Luckie St NW
    Input Text                   ${city}          Atlanta
    Select From List By Value    id:id_state      10
    Input Text                   ${postcode}      30303
    Input Text                   ${phone}         +5581987916668
    Input Text                   ${2_address}     Rua Maio, 7895

E clicar em submeter cadastro
    Click Button    ${botao_register}

Então o cadastro será efetuado com sucesso
    Page Should Contain    Welcome to your account. Here you can manage all of your personal information and orders.
