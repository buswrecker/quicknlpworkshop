#!/bin/bash

CONDA_ENV_NAME="mytestenv"
KERNEL_DISPLAY_NAME="myjupytertestenv"
conda env create -n $CONDA_ENV_NAME 
conda activate $CONDA_ENV_NAME
conda install -n $CONDA_ENV_NAME ipykernel -y
python -m ipykernel install --user --name $CONDA_ENV_NAME --display-name "$KERNEL_DISPLAY_NAME"