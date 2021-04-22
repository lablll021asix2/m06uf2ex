#!/bin/bash
#
######FUNCIONS#############


function most_serv {
	
	echo -n "Digues un Servei:"
	read opc	
	return 0
}
function ctl_serv {
	
	sudo systemctl disable $opc > /dev/null 
	systemctl status $opc 
}

function continuar {
	echo -n "Vols continuar?"
	read i
	
}
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1 # Finalització del script si l'usuari que l'executa no té privilegis de root. L'enunciat no diu res i he escollit sortir amb un codi de retorn igual a 1
fi

echo $i
while [$i -ne "c"]
do
most_serv
ctl_serv
continuar
done
#CRIDA A FUNCIONS

# FINALITZANT SCRIPT AMB CODI DE SORTIDA IGUAL A 10
exit 10
