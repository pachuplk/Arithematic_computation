
  
#!/bin/bash

echo " Welcome to Shell Scripting Program: Computations stored with an array";

# Take three user input
read -p "Enter the value of a:" a;
read -p "Enter the value of b:" b;
read -p "Enter the value of c:" c;

expr[0]=$(($a+$b*$c));
expr[1]=$(($a*$b+$c));
expr[2]=$(($a+$b/$c));
expr[3]=$(($a%$b+$c));

echo ${expr[@]};
