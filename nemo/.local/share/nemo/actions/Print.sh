#!/usr/bin/bash

printer="$(zenity --list --column Printer $(lpstat -a | cut -d\  -f1))"
program="$1"
shift

while [ $# -gt 0 ]
do
    $program "$printer" "$1"
    shift
done

##DEBUG
#echo "--------------------------------------------------"
#   echo -e "\tprogram = $program"
#   echo -e "\tprinter = $printer"
#   echo -e "\tfile    = $@"
#echo "--------------------------------------------------"
##GUBED

# Diverse Druck-Befehle:
# 
# Es kann vorkommen, dass ein Drucker nicht aktiviert ist.
#  um dies zu überprüfen einfach den folgenden Befehl eingeben:
#                    lpstat -p
#  Mit diesem Befehl können auch die Namen der Drucker ausgelesen werden.
# Um den Drucker nun zu aktivieren einfach folgendes eingeben:
#                    sudo cupsenable <printer>
# 
# Um einen laufenden Print-Job zu beenden kann der folgende Befehl benutzt werden:
#                    lprm
#  unter Angabe der Jobid kann auch ein spezifischer Print-Job beendet werden:
#                    lprm <jobid>  (ohne die Klammern versteht sich)
# 
# Weitere lpstat befehle:
# 
#  lpstat      Zeigt die aktuellen Print-Jobs
#  lpstat -p   Zeigt verfügbare Drucker und deren Status an
#  lpstat -d   Zeigt den Standard Drucker an
#  lpstat -r   Ließt aus ob der cups-daemon läuft
