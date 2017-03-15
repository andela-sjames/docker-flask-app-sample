FROM alpine:3.5

RUN apk add --update py2-pip

COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

EXPOSE 5000

CMD ["python", "/usr/src/app/app.py"]
