PROJECT_NAME := python-template

marimo:
	uv run marimo edit

.PHONY: ensuregithub
ensuregithub:
	./tools/ensure-github-url

lint:
	ruff check .

format:
	black .

test: 
	uv run pytest -v -s -n auto

test-fast:
	uv run pytest -v -n auto -m "not slow"

check:
	make lint
	make format
	make ensuregithub
	make test

start:
	uv run main.py

docker-build:
	docker build -t $(PROJECT_NAME) .

docker-run:
	docker run -p 8080:8080 $(PROJECT_NAME)

create-kernal:
	python -m ipykernel install --user --name $(PROJECT_NAME) --display-name "Python 3.11 ($(PROJECT_NAME))"

# Database management
migrate:
	yoyo apply --config yoyo.ini --batch

migrate-rollback:
	yoyo rollback --config yoyo.ini

migrate-status:
	yoyo list --config yoyo.ini

