FROM python:3.6

### Setup Python ###
ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE
ENV PATH="/opt/program:${PATH}"

### Install Dependencies ###
WORKDIR /opt/program
COPY poetry.lock pyproject.toml ./
RUN pip install "poetry>=1.1.4"
RUN poetry export -f requirements.txt -o requirements.txt
RUN python -m pip install -r /opt/program/requirements.txt

### Copy project code ###
COPY . .

### Create Jupyter kernel ###
RUN python -m ipykernel install --user --name blinkist

### Executable Scripts ###
RUN ["chmod", "+x", "./train"]
CMD ["train"]
