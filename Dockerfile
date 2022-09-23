FROM python
ADD requirement.yml /app
ADD . /app
WORKDIR /app
RUN pip install -m requirement.yml
EXPOSE 5000
CMD [python abc.py]
