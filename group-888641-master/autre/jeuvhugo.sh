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

echo "Game start"
echo "Press 1 to do a New game"
echo "Press 2 to exit"
select st in NewGame exit
do
    sleep 1
    case $st in
	"NewGame")
	    echo "Game started"
	    while [[ $Link -eq 1 ]]
		  
		  sleep 1
		  
	    do  echo "Link travels"
		
		sleep 1
		RED='\033[0;31m'
		NC='\033[0m'
		GREEN='\033[0;32m'
		echo "====================== FIGHT 1 ============================="
		
		echo	"               Bokoblin"
		echo -e "${GREEN}HP: ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥ 30 / 30${NC}"
		echo
		echo	"                               Link"
		echo -e "${RED}HP: ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥ 60 / 60${NC}"
			
	        echo	"----Obtions---------------------"
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

