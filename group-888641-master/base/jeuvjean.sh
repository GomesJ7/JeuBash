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
coeur2=♥

#etat perso
Link=1
Bokoblin=1
Ganon=1

#Menu de sélection
echo "Game start"
echo "Press 1 to do a New game"
echo "Press 2 to exit"


select st in "New Game" exit
do
	     case $st in
		 "New Game")
		     echo "Game started"
                 #début de boucle            
	      while [[ $HP1 -ne 0 ]] && [[ $HP2 -ne 0 ]] ;
	             do
			     #conditions fin de boucle
			     if [[ $HP1 = 0 ]]
			     then $Link=0
				  echo "Game Over"
				  echo "Try again"

			     elif [[ $HP2 = 0 ]]
			     then $Bokoblin=0
				  echo "CONGRATULATIONS !!"
				  echo "Get ready for the next battle"
			     fi  
			     #Combat
			     echo "Link travels and see a Bokoblin"
			     echo "Fight him"
			     sleep 1
			     RED='\033[0;31m'
			     NC='\033[0m'
			     GREEN='\033[0;32m'
			     #affichage des PV
			     echo "====================== FIGHT 1 ============================="

			     echo    "               Bokoblin"
			     echo -e "${GREEN}HP: $coeur2 $HP2 / 30${NC}"
			     echo
			     echo    "                 Link"
			     echo -e "${RED}HP: $coeur1 $HP1 / 60${NC}"

			     echo    "----Obtions---------------------"

			     select ft in Attack Heal
					  do
					 case $ft in
					     "Attack")
						 #fonction hp perdu
					    HP2=$((HP2-15))
					    HP1=$((HP1-5))
						  ;;
					      "Heal")
		                            HP1=$((HP1 + 25))
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

fi
