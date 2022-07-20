/**
 * @file main.h
 * @brief 
 *
 * @author Levy Gabriel da S. G.
 * @date June 4 2022
 */


#ifndef _MAIN_H_ 
#define _MAIN_H_

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#include "driver/i2s.h"
#include "driver/gpio.h"
#include "driver/periph_ctrl.h"

#include "esp_log.h"
#include "esp_err.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"


// i2s 
#define I2S_PORT_NUM     0
#define DMA_BUF_COUNT    64
#define DMA_BUF_LEN_SMPL 32
#define SAMPLE_RATE 8000
#define BIT_DEPTH I2S_BITS_PER_SAMPLE_32BIT
#define DATA_BUFFER_SIZE DMA_BUF_LEN_SMPL*BIT_DEPTH/8

// pins
#define CLOCK_PIN  GPIO_NUM_21  // gpio 21
#define DATA_PIN   GPIO_NUM_4   // gpio 4 

// i2s acquisition config
i2s_config_t i2s_config = {
    .mode = I2S_MODE_SLAVE | I2S_MODE_TX ,             // slave driver transmitter (inputs the clock simulating the mic)  
    .sample_rate = SAMPLE_RATE,                        // sample rate
    .bits_per_sample = BIT_DEPTH,                      // 16bit resolution per sample
    .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,      // mono audio configuration
    .communication_format = I2S_COMM_FORMAT_STAND_I2S, // pcm data format
    .dma_buf_count = DMA_BUF_COUNT,                    // number of buffers, 128 max.
    .dma_buf_len = DMA_BUF_LEN_SMPL,                   // size of each buffer, 1024 max.
    .use_apll = 1,                                     // for high accuracy clock applications, use the APLL_CLK clock source, which has the frequency range of 16 ~ 128 MHz
    .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1,          // interrupt level 1
    .fixed_mclk = 0
};

// i2s pin config
i2s_pin_config_t i2s_pins = {
    .bck_io_num = CLOCK_PIN,           // clock pin
    .ws_io_num = GPIO_NUM_18,    
    .data_out_num = DATA_PIN,          // data out pin
    .data_in_num = I2S_PIN_NO_CHANGE            
};

size_t bytes_written;
long data[DMA_BUF_LEN_SMPL] = {
    0xaaaab55a, 0xd6d6db6d, 0xb76eddde, 0xef7bdf7d,
    0xfbfbfdff, 0xbffdffff, 0xdfffffff, 0xffffffff,
    0xffffffff, 0xffefffff, 0xffefffef, 0xfeff7fbf,
    0x7efbdef7, 0xbbddbbb6, 0xedb6d6d6, 0xb5ab5555,
    0x55554a95, 0x29292492, 0x48911211, 0x10841081,
    0x02040200, 0x40010000, 0x10000000, 0x00000000,
    0x00000000, 0x00040000, 0x00100010, 0x01004040,
    0x81042088, 0x44224448, 0x92492929, 0x4a54aaaa,
};

TaskHandle_t xTaskTX;

void vTaskTX(void * pvParameters);

#endif //_MAIN_H_