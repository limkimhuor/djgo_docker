FROM python:3.6

ENV PYTHONUNBUFFERED 1
ENV APP_DIR /app

RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

COPY requirements.txt $APP_DIR/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . $APP_DIR
