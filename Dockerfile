FROM python:2.7

LABEL maintainer="Mathew Francis"

EXPOSE 3111

WORKDIR /app

COPY techtrends ./

RUN pip install -r requirements.txt
RUN python init_db.py

CMD ["python", "app.py"]