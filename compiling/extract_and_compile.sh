#!/bin/bash

#Uncompresses and extracts the contents of the NthPrime.tgz file
tar -xf NthPrime.tgz

#Navigates to the nthprime directory created from the extraction of the tar file
cd NthPrime/ || exit

#Compiles the source files in the NthPrime directory generating an executable called NthPrime
gcc -c main.c nth_prime.c nth_prime.h

gcc main.o nth_prime.o -o NthPrime

#Runs executable C program with given argument
./NthPrime "$1"

