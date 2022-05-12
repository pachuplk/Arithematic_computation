#!/bin/bash
read -p "enter the value a:" a
read -p "eneter the value b:" b
read -p "enter the value c:" c
 
 result1=$(($a + ($b * c)))
echo $result1
result2=$((($a * $b) + c))
echo $result2
result3=$((c + (a / b)))
echo $result3
