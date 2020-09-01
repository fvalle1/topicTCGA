FROM docker.pkg.github.com/fvalle1/topics/topicmodel:latest

LABEL maintainer="filippo.valle@unito.it"

COPY requirements.txt /home/jovyan/work
RUN python3 -m pip install --no-cache-dir -r requirements.txt

USER jovyan

ENTRYPOINT jupyter lab
CMD [""]
