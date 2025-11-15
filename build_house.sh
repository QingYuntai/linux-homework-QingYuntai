#!/bin/bash
# homework 1
# QingYuntai

echo "house"

mkdir -p House
mkdir -p House/first_floor
mkdir -p House/second_floor
mkdir -p House/first_floor/bedroom
mkdir -p House/first_floor/kitchen 
mkdir -p House/second_floor/bathroom

touch House/first_floor/bedroom/bed.txt
touch House/first_floor/bedroom/table.txt
touch House/first_floor/kitchen/fruits.txt
touch House/second_floor/bathroom/my_dog.txt

sudo chmod 700 House/second_floor/bathroom/my_dog.txt 

echo "finished"
