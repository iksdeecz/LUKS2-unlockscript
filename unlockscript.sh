#!/bin/bash

LUKS_KEY_FILE="/root/luks_key"

for drive in $(lsblk -l -o NAME | grep "^sd"); do
    cryptsetup luksOpen --key-file $LUKS_KEY_FILE /dev/$drive $drive
done
