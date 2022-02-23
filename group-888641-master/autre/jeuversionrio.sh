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

#Combat
X=1

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
		     if [[ $HP1 -ne 0 ]] || [[ $HP3 -ne 0 ]];
		     then
	                 while [[ $HP1 -ne 0 ]] || [[ $HP3 -ne 0 ]];
			 do
			     #Combat
			     echo "Link travels and see a Bokoblin"
			     echo "Fight him"
			     
			     #Affichage combat
			     #if [[ $Bokoblin -ne 10 ]];
			     #then 
			     echo "===== FIGHT" $X "====="
			     echo $HP2
			     echo $HP1
			     
			     select ft in Attack Heal
			     do
				 case $ft in
					     "Attack")
						 #fonction hp perdu
					    
					    HP2=$((HP2-15))
					    HP1=$((HP1-5))
					    echo "Link a attaqué"
					    while [[ $Bokoblin -ne 10 ]];
					    do
					    echo $HP2
					    echo $HP1
					    if [[ $HP2 -eq 0 ]];
					    then
						echo "Bokoblin est mort"
						HP2=$((HP2+30))
						Bokoblin=$((Bokoblin+1))
						X=$((X+1))
						#Apparition boss
						if [[ $Bokoblin -eq 10 ]];
						then
						    echo "Vous êtes arrivés au dernier étage"
						fi
						
					    fi
					    done
					    ;;
					    #touche soin
					      "Heal")
						  HP1=$((HP1 + 25))
						  echo "Link s'est soigné"
						  
						  if [[ $HP1 -ge 60 ]];
						  then
						      HP1=60 
						  fi
						  echo $HP1
						  break
						  ;;
					    done
	                         esac
			     done
			 done
		     elif [[ $HP1 -eq 0 ]];
		     then echo "Game over"
			  exit
		     else
			 [[ $HP3 -eq 0 ]];
		     fi
    then echo "Victoire"
	 exit
    fi
		 
			 
			     
		       
	     done			 
		     
		     ;;
		 "exit")
		     echo "Game quitting.."
		     ;;
		 *)
		     echo "Please input what you want"
		     break
		     ;;
    esac
done


