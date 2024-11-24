#!/usr/bin/env bash

# Add bootsplash-chili in grub
if [ "$(grep '/boot/grub/themes/chili/theme.txt' /etc/default/grub)" = "" ]; then
	sed -i 's|^ *\bGRUB_THEME\b *=.*|GRUB_THEME="/boot/grub/themes/chili/theme.txt"|' /etc/default/grub
fi

update-grub
