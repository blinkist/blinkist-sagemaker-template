# \<Project Name\>
## About
\<Description\>

## Commands
### Help
* `make`: To list all commands

### Initial project setup
1. Open a new Terminal and navigate into this folder
2. Setup package management, install dependencies, and a Jupyter kernel with: `make install`

### Deploy
1. Open a new Terminal and navigate into this folder
2. Deploy project as Docker container to ECR: `make deploy tag=<project-tag>`

**Note that deploying the project will also format and lint your code.**

### Format code
* `make format`: Format code using [Black](https://github.com/psf/black) and re-order imports using [isort](https://pycqa.github.io/isort/). Formatting is applied to Python files and notebooks inside `src/`

### Linter
* `make lint`: Check code using [Flake8](https://github.com/PyCQA/flake8) to catch logical and stylistic anti-patterns. Linting is applied to Python files and notebooks inside `src/`

### Add dependencies
This project uses [Poetry](https://github.com/python-poetry/poetry/) to create a virtualenv and to manage dependencies. The initial project setup install poetry as a command line tool. Adding dependencies is simply done by using `poetry add tensorflow`, which will add the dependency to the `pyproject.toml` file and all transient dependencies to `poetry.lock` to freeze versions.
