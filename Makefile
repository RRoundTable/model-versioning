PYTHON=3.8
BASENAME=$(shell basename $(CURDIR))
CONDA_CH=pytorch defaults conda-forge

env:
	conda create -n $(BASENAME)  python=$(PYTHON)

setup:
	pip install -r requirements-pip.txt

