.development-dependencies: Pipfile.lock
	@pipenv sync --dev

development-dependencies: .development-dependencies

lint: development-dependencies
	@pipenv run flake8

unit-test: development-dependencies
	@pipenv run python3 -m unittest

fix-lint: development-dependencies
	@pipenv run black .

test: lint unit-test
