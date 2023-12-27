FROM python:3.10

WORKDIR /app

COPY requirements.txt requirements.txt
COPY main.py main.py

RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8000:8000

CMD ["uvicorn", "main:app", "--reload"]