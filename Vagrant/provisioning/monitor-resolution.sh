#!/bin/bash

echo "GRUB_GFXPAYLOAD_LINUX=1024x768" | tee -a "/etc/default/grub"
update-grub
