#!/bin/bash
#Script lisant les personnages

read_csv() { while IFS="," read -r id name hp mp str int def res spd luck race class rarity
	     do echo "#$id $name"
	     done < "players.csv" 
	   }
read_csv "players.csv"
