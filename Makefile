test-all:
	poetry run pytest -v
format-all:
	poetry run black .
test:
	poetry run pytest tests/$(NAME).py

.PHONY: test-all format-all test