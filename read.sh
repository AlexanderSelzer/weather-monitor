#!/bin/bash

echo -e "temperature:\t\t $(cat /sys/bus/i2c/drivers/si702x/1-0040/temperature) (si7020)"
echo -e "humidity:\t\t $(cat /sys/bus/i2c/drivers/si702x/1-0040/humidity) (si7020)"

echo -e "temperature:\t\t $(cat /sys/bus/i2c/drivers/bmp085/1-0077/temp0_input) (bmp120)"
echo -e "pressure:\t\t $(cat /sys/bus/i2c/drivers/bmp085/1-0077/pressure0_input) (bmp120)"

echo -e "visible light index:\t\t $(cat /sys/bus/i2c/drivers/si1132/1-0060/visible_index) (si1132)"
echo -e "IR light index:\t\t $(cat /sys/bus/i2c/drivers/si1132/1-0060/ir_index) (si1132)"
echo -e "UV light index:\t\t $(cat /sys/bus/i2c/drivers/si1132/1-0060/uv_index) (si1132)"
