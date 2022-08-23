#!/usr/bin/env bash
#https://exercism.org/tracks/bash/exercises/two-fer
NAME=$1
if [ ! -z "$NAME" ]
then 
  echo "One for "$NAME", one for me."
else 
  echo "One for you, one for me."
fi