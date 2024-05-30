#!/bin/bash

if [-d "venv"]
then
    echo "Virtual environment already exists"
else
    virtualenv venv
fi

echo $PWD
source venv/bin/activate

pip3 install -r requirement.txt


if [-d "logs"]
then
    echo "Log folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "env-setup finishes"
