FROM python:3.11-alpine3.17
WORKDIR /usr/app
COPY requirements.txt /usr/app/
RUN pip install -r requirements.txt
COPY . .
EXPOSE 3000
CMD [ "python", "app.py" ]