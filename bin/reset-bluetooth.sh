#!/bin/sh
bluetoothctl power off
bluetoothctl power on
bluetoothctl pairable on
bluetoothctl discoverable on
bluetoothctl scan on
#
# M720 Triathlon
#
#bluetoothctl trust CD:38:23:8D:4C:FE
#bluetoothctl pair CD:38:23:8D:4C:FE
bluetoothctl connect CD:38:23:8D:4C:FE
bluetoothctl unblock CD:38:23:8D:4C:FE
#
# BlackWidow V3 mini
#
bluetoothctl trust E6:C4:DF:40:4D:3b
bluetoothctl pair E6:C4:DF:40:4D:3b
bluetoothctl connect E6:C4:DF:40:4D:3b
#
# Soundcore Life Q30 
#
#bluetoothctl trust AC:12:2F:E6:06:91
#bluetoothctl pair AC:12:2F:E6:06:91
bluetoothctl connect AC:12:2F:E6:06:91
