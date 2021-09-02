#!/bin/bash

tar -xf NthPrime.tgz

cd NthPrime/

gcc -c main.c nth_prime.c nth_prime.h

gcc main.o nth_prime.o -o NthPrime

./NthPrime $1

