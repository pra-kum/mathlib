install:
	python3 -m venv venv
	. venv/bin/activate; \
	python -m pip install --upgrade pip; \
	python -m pip install -r requirements.txt

test:
	. venv/bin/activate; \
	python -m pytest --cov mathlib --cov-report html --junitxml=report.xml tests/

clean:
	rm -rf venv/ __pycache__/ .pytest_cache/

all: install test clean
