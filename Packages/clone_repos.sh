#!/bin/bash

## Create folders
mkdir Personal
mkdir Work
mkdir Uni

## Clone personal repos
cd Personal
git clone git@github.com:BogiThomsen/RandomStuff.git
cd ..

## Clone uni repos
cd Uni
git clone git@github.com:BogiThomsen/NEMT.git
cd ..
