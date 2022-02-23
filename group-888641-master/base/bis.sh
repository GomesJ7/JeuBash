#!/bin/bash

#Link
HP1=60
STR1=15

#Bokoblin
HP2=30
STR2=5

#Ganon
HP3=150
STR3=20

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
	      while [[ $HP1 -ne 0 ]] || [[ $HP2 -ne 0 ]] ;
	             do
			     #Combat
			     echo "Link travels and see a Bokoblin"
			     echo "Fight him"
			     select ft in Attack Heal
					  do
					 case $ft in
					     "Attack")
						 #fonction hp perdu
					    HP2=$((HP2-15))
					    HP1=$((HP1-5))
					    echo "Link a attaqué"
					    echo $HP2
					    echo $HP1
					    if [[ $HP2 -eq 0 ]]
					    then
						echo "Bokoblin est mort"
						HP2=$((HP2+30))
						break
					    fi
					    if [[ $HP1 -eq 0 ]]
					    then
						echo "Game over"
						break
					    fi
						  ;;
					      "Heal")
						  HP1=$((HP1 + 25))
						  echo "Link s'est soigné"
						  
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


