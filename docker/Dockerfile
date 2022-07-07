FROM nvcr.io/nvidia/tensorflow:22.06-tf2-py3

WORKDIR .

COPY ./requirements.txt .

RUN python3 -m pip install -r requirements.txt && rm requirements.txt
