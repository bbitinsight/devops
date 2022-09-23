FROM python
ADD requirement.yml /app
ADD . /app
WORKDIR /app
