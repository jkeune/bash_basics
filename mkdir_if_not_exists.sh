#!/bin/bash

dir=$1

if [[ ! -e $dir ]]; then
    echo "Directoy $dir does not exist. Creating directory..."
    mkdir $dir
fi
