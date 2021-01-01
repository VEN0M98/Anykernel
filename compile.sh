#!/bin/bash

echo "███████╗███████╗███████╗████████╗ █████╗  █████╗ "
echo "╚══███╔╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗"
echo "  ███╔╝ █████╗  █████╗     ██║   ███████║███████║"
echo " ███╔╝  ██╔══╝  ██╔══╝     ██║   ██╔══██║██╔══██║"
echo "███████╗███████╗███████╗   ██║   ██║  ██║██║  ██║"
echo "╚══════╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝"

# colorize and add text parameters
grn=$(tput setaf 2)             # green
yellow=$(tput setaf 3)          # yellow
bldgrn=${txtbld}$(tput setaf 2) # bold green
red=$(tput setaf 1)             # red
txtbld=$(tput bold)             # bold
bldblu=${txtbld}$(tput setaf 4) # bold blue
blu=$(tput setaf 4)             # blue
txtrst=$(tput sgr0)             # reset
blink=$(tput blink)             # blink

DATE_START=$(date +"%s")
echo -e "${bldgrn}"

set_perm_recursive $MODPATH 0 0 0755 0644

rm -rf /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu-fs/root/flzip/*.zip;
rm -rf /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu-fs/root/flzip/Image.gz-dtb
cp -af /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu-fs/root/nexus/out/arch/arm64/boot/Image.gz-dtb /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu-fs/root/flzip/

zip -r9 Nexus-Q-lavender-new-V5.zip * -x .git README.md *placeholder


echo "-------------------"
echo "Build Complet in:"
echo "-------------------"
echo -e "${txtrst}"


DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))
echo "Time: $(($DIFF / 60)) minutes(i) and $(($DIFF % 60)) seconds."
echo

echo "███████╗███████╗███████╗████████╗ █████╗  █████╗ "
echo "╚══███╔╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗"
echo "  ███╔╝ █████╗  █████╗     ██║   ███████║███████║"
echo " ███╔╝  ██╔══╝  ██╔══╝     ██║   ██╔══██║██╔══██║"
echo "███████╗███████╗███████╗   ██║   ██║  ██║██║  ██║"
echo "╚══════╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝"
                                                 