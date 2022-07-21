/**
 * @file main.h
 * @brief 
 *
 * @author Levy Gabriel da S. G.
 * @date June 4 2022
 */

#include "main.h"

void app_main()
{
    // configure gpio pins
    ESP_ERROR_CHECK(gpio_config(&out_conf));                          // initialize data pin 
    ESP_ERROR_CHECK(gpio_config(&in_conf));                           // initialize clock pin 
    ESP_ERROR_CHECK(gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT)); // install gpio isr service
    ESP_ERROR_CHECK(gpio_isr_handler_add(CLOCK_PIN, ISR_BTN, NULL));  // hook isr handler for clock pin
}

static void IRAM_ATTR ISR_BTN()
{
    gpio_set_level(DATA_PIN, data[cnt % BUFFER_LEN]);
    cnt++;
}
