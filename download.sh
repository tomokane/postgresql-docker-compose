#!/bin/bash

FILE="./Koala_36M_1.csv"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    curl -L -o "$FILE" "https://huggingface.co/datasets/Koala-36M/Koala-36M-v1/resolve/main/Koala_36M_1.csv?download=true"
fi