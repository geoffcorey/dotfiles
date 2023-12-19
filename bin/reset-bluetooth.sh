#!/bin/sh
bluetoothctl power off
bluetoothctl power on
#bluetoothctl pairable on
#bluetoothctl discoverable on
bluetoothctl connect CD:38:23:8D:4C:FE
bluetoothctl unblock CD:38:23:8D:4C:FE
#bluetoothctl scan bredr
#bluetoothctl pair DC:2C:26:39:D2:DA
#bluetoothctl trust DC:2C:26:39:D2:DA
bluetoothctl connect DC:2C:26:39:D2:DA
