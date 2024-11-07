#!/bin/bash

source venv/bin/activate
jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace *.ipynb
