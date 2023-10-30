FROM python:3.8-alpine

RUN apk --no-cache add curl

COPY ./requirements.txt /challenge/requirements.txt

WORKDIR /challenge

RUN pip install -r requirements.txt

COPY . /challenge

ENTRYPOINT [ "python3" ]

CMD ["runserver.py" ]
