#!/bin/bash

# automate the setup of a new python virtual environment called testing_venv

module load anaconda3/2019.03

virtualenv testing_venv

module unload anaconda3/2019.03

# automate the activation of a python virtual environment called testing_venv

cd ./test_venv/bin

source activate

cd ../..
