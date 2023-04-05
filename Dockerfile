FROM python:3.10

COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt

# allow passwordless su
RUN passwd -d root

RUN useradd -m polygl0t -s /bin/bash
CMD su - polygl0t
