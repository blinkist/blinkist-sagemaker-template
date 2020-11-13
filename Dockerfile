FROM python:3.6

### Setup Python ###
ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE
ENV PATH="/opt/program:${PATH}"

### Install Dependencies ###
COPY requirements.txt /opt/program/requirements.txt
RUN pip install -r /opt/program/requirements.txt

### Copy Code ###
COPY . /opt/program
WORKDIR /opt/program

### Create Jupyter kernel ###
RUN python3 -m ipykernel install --user --name conda_python3

### Executable Scripts ###
RUN ["chmod", "+x", "./train"]
CMD ["train"]
