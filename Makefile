install:
	# upgrade installer included in venv
	# and install required packages
	pip install --upgrade pip -r requirements.txt	

format:
	# optional, formats code to standards (github.com/psf/black)
	black *.py

lint:
	# checks for bad smells (https://pylint.org/)
	pylint --disable=R,C hello.py
	
test:
	# unit tests script (docs.pytest.org/en/6.2.x/)
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
