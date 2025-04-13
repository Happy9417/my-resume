FROM python:3.9-slim

WORKDIR /app


COPY ..

RUN pip install --no-cache-dir -r requirement.txt

EXPOSE 5001

ENV FLASK_APP=app.py

CMD ["python", "-m", "flask", "--host=0.0.0.0", "--port=5001"]
