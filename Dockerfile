FROM python:3.10

COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt

WORKDIR /srv

CMD [ "jupyter", "notebook", "--allow-root", "--NotebookApp.token=", "--no-browser", "--ip=0.0.0.0", "--port=8888" ]
