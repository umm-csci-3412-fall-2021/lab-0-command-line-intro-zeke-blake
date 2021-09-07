#!/bin/bash

#Uncompresses and extracts the contents of the .tgz file
tar -xf NthPrime.tgz

#Navigates to the nthprime directory created from the extraction of the tar file
cd NthPrime/ || exit

gcc -c main.c nth_prime.c nth_prime.h

gcc main.o nth_prime.o -o NthPrime

./NthPrime "$1"

