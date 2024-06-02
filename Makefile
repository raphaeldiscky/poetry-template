test:
	poetry run pytest -v
format:
	poetry run black .



.PHONY: test format