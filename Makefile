.PHONY: install test lint format ci

install:
	pip install -r requirements.txt

test:
	pytest -q

lint:
	python -m pip install --user ruff
	ruff check .

format:
	python -m pip install --user black
	black .

ci: install lint test
