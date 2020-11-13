## Deploy
1. Open a new Terminal
2. Navigate into this folder: `cd SageMaker/<project-path>`
3. Deploy project as Docker container to ECR: `make deploy tag=<project-tag>`

## Format code
* `make format`: Format code using [Black](https://github.com/psf/black) and re-order imports using [isort](https://pycqa.github.io/isort/). Formatting is applied to Python files and notebooks inside `src/`.

## Linter
* `make format`: Check code using [Flake8](https://github.com/PyCQA/flake8) to catch logical and stylistic anti-patterns. Linting is applied to Python files and notebooks inside `src/`.

## Use this template:
