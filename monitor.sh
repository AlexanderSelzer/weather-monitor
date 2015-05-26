#!/bin/bash


while true; do
  TEMP1="[temperature $(cat /sys/bus/i2c/drivers/si702x/1-0040/temperature)]"
  HUMIDITY="[humidity $(cat /sys/bus/i2c/drivers/si702x/1-0040/humidity)]"

  TEMP2="[temperature2 $(cat /sys/bus/i2c/drivers/bmp085/1-0077/temp0_input)]"
  PRESSURE="[pressure $(cat /sys/bus/i2c/drivers/bmp085/1-0077/pressure0_input)]"

  LIGHT="[visible_light $(cat /sys/bus/i2c/drivers/si1132/1-0060/visible_index)]"
  IR="[ir_light $(cat /sys/bus/i2c/drivers/si1132/1-0060/ir_index)]"
  UV="[uv_light $(cat /sys/bus/i2c/drivers/si1132/1-0060/uv_index)]"

  echo "[$(date "+%Y-%m-%d-%T")] $TEMP1 $HUMIDITY $TEMP2 $PRESSURE $LIGHT $IR $UV" >> log.txt;

  sleep 6;
done
