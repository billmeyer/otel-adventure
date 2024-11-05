#!/bin/bash

[[ -f ".env" ]] && source ".env"

if [ "${#DD_API_KEY}" -ne 32 ]; then
	echo "Environment variable DD_API_KEY not valid."
	exit -1
fi

if [[ -z "${DD_SITE_PARAMETER}" ]]; then
	echo "Environment variable DD_SITE_PARAMETER not set."
	exit -1
fi

python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt

jupyter nbconvert --clear-output *.ipynb
JUPYTER_CONFIG_DIR=./jupyter-config/ jupyter lab --custom-css

