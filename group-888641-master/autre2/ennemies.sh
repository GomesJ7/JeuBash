#!/bin/bash

function read_csv() {
    while IFS="," read -r id name hp mp str int def res spd luck race class rarity
    do
	echo "#$id $name"
    done < "ennemies.csv" 
	   }
read_csv $ennemies
