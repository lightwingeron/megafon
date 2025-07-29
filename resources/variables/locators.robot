*** Variables ***
# Главная страница
${COOKIE_BANNER}    //*[@id="mount"]/div/div/div/div[3]/div/div/div/button

# Авторизация
${LOGIN_BUTTON}     //*[@id="mount"]/div/div/div/div[1]/header/div[4]/div[2]/button/div/div/span
${LOGIN_REDIRECT}     //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div/div[1]/div[1]/div/div/div/div/div[3]/div/button/div
${LOGIN_FIELD}      //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div/div[1]/div[2]/form/div/div[1]/div[1]/div/div[1]/input
${PASSWORD_FIELD}   //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div/div[1]/div[2]/form/div/div[1]/div[2]/div/div[1]/input
${SUBMIT_BUTTON}    //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div/div[1]/div[2]/form/div/button


# Кнопки "Выбрать" для разных тарифов
${TARIFF_1_SELECT_BUTTON}    xpath=//*[@id="mount"]/div/div/div/main/div[1]/div[3]/div/div/div/div/div/div/div/div[2]/div[1]/div/div/div[2]/div[3]/div/div[3]/a[1]
${TARIFF_2_SELECT_BUTTON}    xpath=//*[@id="mount"]/div/div/div/main/div[1]/div[3]/div/div/div/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/div[3]/a[1]
${TARIFF_3_SELECT_BUTTON}    xpath=//*[@id="mount"]/div/div/div/main/div[1]/div[3]/div/div/div/div/div/div/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[3]/a[1]
${TARIFF_4_SELECT_BUTTON}    xpath=//*[@id="mount"]/div/div/div/main/div[1]/div[3]/div/div/div/div/div/div/div/div[2]/div[4]/div/div/div[2]/div[2]/div/div[3]/a[1]


# Оформление заказа
${SIM_TYPE}             //*[@id="services"]/div[1]/div[1]
${DELIVERY_METHOD}      //*[@id="services-delivery"]/div/div/div/div[2]/div/div/div[1]
${ORDER_BUTTON}         //*[@id="mount"]/div/div/div/main/div/div/div/div/div/div/div[2]/div/div/div[3]/button

# Ошибки и прочее
${LOGIN_ERROR}          //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div[2]/div/div/div
${CAPTCHA}          //*[@id="root"]/div/div/div/div/div/div[1]/div[1]/div/div/div[1]/div[2]/form/div/div[2]/div[1]/div/img