FROM ubuntu:18.04

ENV ANACONDA_URL https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
ENV USER user
ENV HOME /home/${USER}
ENV NOTEBOOK_DIR ${HOME}/notebook
ENV PASSHASH ''

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && \
    useradd -s /bin/false -d ${HOME} -m ${USER}

USER ${USER}

RUN wget ${ANACONDA_URL} -O ~/anaconda.sh && \
    bash ~/anaconda.sh -b -p ${HOME}/anaconda && \
    export PATH="${HOME}/anaconda/bin:${PATH}" && \
    mkdir -p ${NOTEBOOK_DIR} && \
    rm ~/anaconda.sh

VOLUME ["${NOTEBOOK_DIR}"]
WORKDIR ${NOTEBOOK_DIR}
ENV PATH="${HOME}/anaconda/bin:${PATH}"
EXPOSE 8888

CMD ["/bin/bash", "-c", "jupyter notebook --ip='0.0.0.0' --notebook-dir=${NOTEBOOK_DIR} --NotebookApp.open_browser=False --NotebookApp.quit_button=False --port=8888 --NotebookApp.allow_password_change=True --NotebookApp.token='' --NotebookApp.password=${PASSHASH}"]
