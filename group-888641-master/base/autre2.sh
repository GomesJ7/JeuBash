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

#Affichage combat
X=2
#Menu de sélection
echo "Game start"
echo "Press 1 to do a New game"
echo "Press 2 to exit"


select st in "New Game" exit
do
    case $st in
	"New Game")
	    HP1=60
	    Bokoblin=1
	    echo "Game started"
	    
            #début de boucle
	    
	    while [[ $HP1 -ne 0 ]];
	    do
		#Combat
		
		echo "Link travels and see a Bokoblin"
		echo "=== FIGHT "$Bokoblin "==="
		select ft in Attack Heal
		do
		    case $ft in
			"Attack")
			    #fonction hp perdu
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
				echo  $HP2
			    fi
			    if [[ $Bokoblin -eq 10 ]]
			    then
				echo $HP3
			    fi
			    echo $HP1
			    echo "Link did a attack"
			    echo "1) Attack"
			    echo "2) Heal"
			    if [[ $HP2 -eq 0 ]]
			    then
				
				echo "Bokoblin est mort"
				
				HP2=$((HP2+30))
				Bokoblin=$((Bokoblin+1))
				clear
				break
			    fi
			    if [[ $HP1 -eq 0 ]]
			    then
				echo "Game over"
				
				echo "1 pour relancer une partie, 2 pour quitter"
				
				break
			    fi
			    if [[ $HP3 -eq 0 ]]
			    then
				echo "Vous avez gagné"
				exit
			    fi
			    ;;
			#Soin
			"Heal")
			    echo "Bokoblin" $Bokoblin
			    if [[ $Bokoblin -eq 10 ]]
			    then
				
				HP1=$((HP1+5))
				if [[ $HP1 -ge 60 ]]
				then
				    HP1=60
				fi	 
				echo "Link s'est soigné"
				echo $HP3
				echo $HP1
				
			    fi
			    if [[ $Bokoblin -lt 10 ]]
			    then
				HP1=$((HP1+25))
				if [[ $HP1 -ge 60 ]]
				then
				    HP1=60
				fi
				echo "Link s'est soigné"
				echo $HP2
				echo $HP1
				
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


