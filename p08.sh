#!/bin/bash
#
if [ $EUID -ne 0 ]
then
    echo "No tens permisos per executar l'script"
    exit 1
fi
clear
echo -n "UUID dins de /etc/fstab:"
echo ""
cat /etc/fstab | grep UUID | cut -d " " -f 1
echo -n "Quantitat de UUID: "
echo ""
cat /etc/fstab | grep UUID | wc -l

exit 0
