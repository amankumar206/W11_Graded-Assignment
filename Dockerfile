FROM python:3.9.13
WORKDIR /my_app_cancer
COPY app.py ./app.py
COPY ./model ./model
COPY ./ms ./ms
RUN pip install --upgrade pip
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]
