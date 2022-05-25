FROM  python:3.9-slim

RUN apt update && apt install -yy graphviz && rm -fr /var/apt/lists/*

RUN pip install diagrams==0.21.1

WORKDIR /app

CMD for a in *.py; do python $a; done
