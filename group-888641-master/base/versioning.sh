#!/bin/bash

#Link
HP1=60
STR1=15
coeur1=♥

#Bokoblin
HP2=30
STR2=5
coeur2=♥

#Ganon
HP3=150
STR3=20
coeur3=♥

Link=1
Bokoblin=1
Ganon=1

#COULEURS
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'

#Menu de sélection
echo "Game start"
echo "Press 1 to do a New game"
echo "Press 2 to exit"

select st in "New Game" exit
do
    if [[ $HP1 -le 0 ]]
    then echo "Game Over plz launch the script again to retry"
	 exit
	                           fi
    case $st in
	"New Game")
	    
	    if [[ $HP3 -le 0 ]]
	    then echo "You won"
		 exit
	    fi
	    
	    echo "Game started"
	    
            #début de boucle
	    
	    while [[ $HP1 -ne 0 ]];
	    do
		#Combat

		sleep 1
		if [[ $Bokoblin -lt 10 ]]
		   then
		       echo "Link travels and see a Bokoblin"
		fi
		if [[ $Bokoblin -eq 10 ]]
		then
		    echo "Fight ganondorf"
		fi
		sleep 1
		echo "================= FIGHT "$Bokoblin "========================="
		if [[ $Bokoblin -lt 10 ]]
		   then
		echo " "
		echo    "               Bokoblin"
		echo -e "             ${GREEN}HP: $coeur2 $HP2 / 30${NC}"
		echo " "
		fi
		if [[ $Bokoblin -eq 10 ]]
		then

		    echo    "                 Ganondorf"
		    echo -e "             ${BROWN}HP: $coeur3 $HP3 / 150${NC}"
		    echo " "
		    
		    fi
		echo    "                 Link"
		echo -e "             ${RED}HP: $coeur1 $HP1 / 60${NC}"
		echo    "--------Options---------------------"
		select ft in Attack Heal
		do
		    case $ft in
			"Attack")
			    
			    if [[ $Bokoblin -lt 10 ]]
			    then
				HP2=$((HP2-15))
				HP1=$((HP1-5))
			    fi
			    if [[ $Bokoblin -eq 10 ]]
			    then
				HP3=$((HP3-15))
				HP1=$((HP1-20))
			    fi
			    
			    
			    if [[ $Bokoblin -lt 10 ]]
			    then
				

			    echo    "               Bokoblin"
			    echo -e "             ${GREEN}HP: $coeur2 $HP2 / 30${NC}"
			    echo
				
			    fi
			    if [[ $Bokoblin -eq 10 ]]
			    then
				echo    "               Ganondorf"
				echo -e "             ${BROWN}HP: $coeur3 $HP3 / 150${NC}"
			    fi
			    
			    echo    "                 Link"
			    echo -e "             ${RED}HP: $coeur1 $HP1 / 60${NC}"
			    echo " "
			    echo    "------Options---------------------"
			    echo " "
			    echo "Link did a attack"
			    echo "1) Attack"
			    echo "2) Heal"
			    if [[ $HP2 -eq 0 ]]
			    then
				
				echo "Bokoblin est mort"
				
				HP2=$((HP2+30))
				Bokoblin=$((Bokoblin+1))
				sleep 3
				clear
				break
			    fi
			    if [[ $HP1 -eq 0 ]]
			    then
				echo "Game over"
				
				exit
			    fi
			    if [[ $HP3 -eq 0 ]]
			    then
				echo "You won"
				exit
			    fi
			    ;;
			#Soin
			"Heal")
			    
			    if [[ $Bokoblin -eq 10 ]]
			    then	
				HP1=$((HP1+5))
				if [[ $HP1 -ge 60 ]]
				then
				    HP1=60
				fi	 
				echo    "               Ganondorf"
				echo -e "             ${BROWN}HP: $coeur3 $HP3 / 150${NC}"
				echo " "
				echo    "                 Link"
				echo -e "             ${RED}HP: $coeur1 $HP1 / 60${NC}"
				echo    "--------Options---------------------"
				echo " "
				echo "Link s'est soigné"
				echo "1) Attack"
				echo "2) Heal"
				
			    fi
			    if [[ $Bokoblin -lt 10 ]]
			    then
				HP1=$((HP1+25))
				if [[ $HP1 -ge 60 ]]
				then
				    HP1=60
				fi
				echo    "               Bokoblin"
				echo -e "             ${GREEN}HP: $coeur2 $HP2 / 30${NC}"
				echo
				echo    "                 Link"
				echo -e "             ${RED}HP: $coeur1 $HP1 / 60${NC}"
				echo    "--------Options---------------------"
				echo " "
				echo "Link s'est soigné"
				echo "1) Attack"
				echo "2) Heal"
			    fi 
			    ;;
	            esac
		done
		
		
	    done			 
	    
	    ;;
	"exit")
	    echo "Game quitting.."
	    break
	    ;;
	*)
	    echo "Please input what you want"
	    ;;
    esac
done


