setup:
	# Create python virtualenv & source it
	# source capstone/bin/activate
	python3 -m venv capstone

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
    #@cd tests; pytest -vv --cov-report term-missing --cov=web test_*.py


lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	 hadolint Dockerfiles
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	# pylint --disable=R,C,W1203,W1202 app.py
	pylint --disable=R,C myapp.py

all: install lint test