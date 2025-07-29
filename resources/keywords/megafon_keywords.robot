*** Settings ***
Resource    ../variables/env.robot
Resource    ../variables/locators.robot
Library    SeleniumLibrary


*** Keywords ***
Close Cookie Banner
    [Documentation]    Закрыть куки баннер
    Run Keyword And Ignore Error    Click Element    ${COOKIE_BANNER}

Open Megafon Site
    [Documentation]    Перейти на главную страницу мегафона, закрыть куки баннер
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
    Close Cookie Banner
    Capture Page Screenshot    ${SCREENSHOTS_DIR}/mainpage.png

Perform Login
    [Documentation]    Открыть главную страницу, перейти в окно авторизации, авторизоваться с тестовыми данными.
...    Так как нет возможности использовать реальные данные ожидаем ошибку.
    [Arguments]    ${login}    ${password}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${LOGIN_REDIRECT}
    Click Element    ${LOGIN_REDIRECT}
    Wait Until Element Is Visible    ${LOGIN_FIELD}
    Input Text    ${LOGIN_FIELD}    ${login}
    Input Password    ${PASSWORD_FIELD}    ${password}
    Click Element    ${SUBMIT_BUTTON}
    Wait Until Page Contains Element    ${LOGIN_ERROR}
    Capture Page Screenshot    ${SCREENSHOTS_DIR}/authorization.png

Select And Verify All Tariffs
    [Documentation]    Последовательно проверяет все тарифные кнопки "Выбрать", которые видны пользователю
...    при открытии страницы
    @{tariff_buttons}=    Create List
    ...    ${TARIFF_1_SELECT_BUTTON}
    ...    ${TARIFF_2_SELECT_BUTTON}
    ...    ${TARIFF_3_SELECT_BUTTON}
    ...    ${TARIFF_4_SELECT_BUTTON}

    FOR    ${index}    ${button_locator}    IN ENUMERATE    @{tariff_buttons}
        Go To    ${BASE_URL}
        Wait Until Page Contains    Тарифы


        Wait Until Element Is Visible    ${button_locator}    timeout=10
        Click Element    ${button_locator}
        Wait Until Page Contains   Ваш заказ    timeout=15
        Log    Успешно перешли к оформлению тарифа
        Page Should Contain Element    ${SIM_TYPE}       ${DELIVERY_METHOD}    ${ORDER_BUTTON}
        Page Should Contain Element    ${DELIVERY_METHOD}
        Page Should Contain Element    ${ORDER_BUTTON}
        Capture Page Screenshot    ${SCREENSHOTS_DIR}/tariff_${index+1}_order_page.png

        Go Back
    END


