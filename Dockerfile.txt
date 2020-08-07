FROM python:3.8-slim
RUN pip install -r requirements.txt
RUN pip install jupyter

RUN mkdir src
WORKDIR src/
COPY . .

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "NotebookApp.token='first_docker'"]