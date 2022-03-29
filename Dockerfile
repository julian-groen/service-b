# syntax=docker/dockerfile:1

FROM python:3.9.9-slim-buster

# copy the requirements file into the image
COPY ./requirements.txt /service/requirements.txt

# switch working directory
WORKDIR /service

# install the dependencies and packages in the requirements file
RUN pip3 install -r requirements.txt

# copy every content from the local file to the image
COPY . /service

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]