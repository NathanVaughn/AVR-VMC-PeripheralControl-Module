FROM docker.io/library/python:3.11-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
RUN python -m pip install pip wheel --upgrade && \
    python -m pip install -r requirements.txt

COPY . .

CMD ["python", "pcm.py"]