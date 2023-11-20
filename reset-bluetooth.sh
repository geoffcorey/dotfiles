#!/bin/sh
bluetoothctl power off
bluetoothctl power on
bluetoothctl connect CD:38:23:8D:4C:FD
bluetoothctl unblock CD:38:23:8D:4C:FD
