FROM docker.io/jleighsutherland/dream-base:v2

WORKDIR /app

COPY model /app/model

COPY gradio-serving.py /app/gradio-serving.py

RUN pip install -r model/requirements.txt

EXPOSE 5000

CMD ["mlflow", "models", "serve", "-m", "./model", "--env-manager", "local", "--host", "0.0.0.0", "--port", "5000"] 

