# Blinkist Data Science Project Template
## Use this template:
### New git repository from template
1. [Create a new Github repository](https://github.com/blinkist/blinkist-sagemaker-template/generate) from this template. More info on template repositories [here](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
2. Replace the `<project-path>` and `<project-tag>` inside the README of the cloned repository.
3. Remove the module.py file, if you don't need it.

### Download .ZIP
1. If you use this template inside a larger mono-repository, we adivse to [download this repository as .ZIP](https://github.com/blinkist/blinkist-sagemaker-template/archive/main.zip).
2. Replace the `<project-path>` and `<project-tag>` inside the README of the new repository.
3. Remove the module.py file, if you don't need it.

## Commands
### Help
* `make`: To list all commands

### Deploy
1. Open a new Terminal
2. Navigate into this folder: `cd SageMaker/<project-path>`
3. Deploy project as Docker container to ECR: `make deploy tag=<project-tag>`

**Note that deploying the project will also format and lint your code.**

### Format code
* `make format`: Format code using [Black](https://github.com/psf/black) and re-order imports using [isort](https://pycqa.github.io/isort/). Formatting is applied to Python files and notebooks inside `src/`

### Linter
* `make lint`: Check code using [Flake8](https://github.com/PyCQA/flake8) to catch logical and stylistic anti-patterns. Linting is applied to Python files and notebooks inside `src/`

