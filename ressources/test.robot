*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${JENKINS_URL}    http://18.201.83.167:8080
${USERNAME}       admin
${BAD_PASSWORD}   mauvais_mot_de_passe

*** Test Cases ***
Connexion Jenkins avec mauvais mot de passe
    Ouvrir Jenkins
    Saisir identifiants invalides
    Cliquer sur Sign in
    Fermer le navigateur

*** Keywords ***
Ouvrir Jenkins
    Open Browser    ${JENKINS_URL}    chrome
    Wait Until Page Contains Element    id=j_username

Saisir identifiants invalides
    Input Text    id=j_username    ${USERNAME}
    Input Text    name=j_password    ${BAD_PASSWORD}

Cliquer sur Sign in
    Click Button    name=Submit
    Sleep    1

Fermer le navigateur
    Close Browser
