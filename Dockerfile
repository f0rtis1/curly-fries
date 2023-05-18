FROM python:3.8-alpine

COPY ./requirements.txt /challenge/requirements.txt

WORKDIR /challenge

RUN pip install -r requirements.txt

COPY . /challenge

RUN apk --no-cache add curl

ENTRYPOINT [ "python3" ]

CMD ["runserver.py" ]
