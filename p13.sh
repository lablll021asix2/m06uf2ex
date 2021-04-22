#!/bin/bash
#
if [ $EUID -ne 0 ]
then
    echo "No tens permisos per executar l'script"
    exit 1
fi

function comprovarCorreu {
	
	echo -n "Digues la teva adressa de correu:"
	read opc
	if [[ $opc =~ "@"]]; 
	then
		echo opc >> /etc/blacklist.list
	fi	
	return 0
}

comprovarCorreu
exit 5
