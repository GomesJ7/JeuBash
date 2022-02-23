#!/bin/bash

#script lisant les bosses

read_csv() { while IFS="," read -r id name hp mp str int def res spd luck race class rarity
	     do echo "#$id $name"
	        
	     done < "bosses.csv" 
	   }
read_csv "bosses.csv"
