*** Settings ***
Resource    ../resources/variables/env.robot
Resource    ../resources/variables/test_data.robot
Resource    ../resources/keywords/megafon_keywords.robot
Test Setup    Open Megafon Site
Test Teardown    Close Browser

*** Test Cases ***
SMOKE-01: Главная страница доступна
    [Documentation]    Проверка доступности главной страницы
    [Tags]    CRITICAL
    Title Should Be   Официальный сайт МегаФона, Санкт-Петербург и область | Ведущий мобильный оператор России
    Page Should Contain Element    ${LOGIN_BUTTON}

SMOKE-02: Авторизация пользователя
    [Documentation]    Проверка входа в ЛК с тестовыми данными
    [Tags]    CRITICAL
    Perform Login    ${SMOKE_USER.login}    ${SMOKE_USER.password}
    Page Should Contain Element    ${LOGIN_ERROR}

SMOKE-03: Проверка тарифов
    [Documentation]    Проверяет все видимые пользователю тарифы
    [Tags]    CRITICAL
    Select And Verify All Tariffs
