FROM continuumio/anaconda3
RUN . /root/.bashrc \
    && conda create -n daseIntro -y \
    && conda activate daseIntro \
    && conda install python=3.7 graphviz jupyterlab jupyter matplotlib pandas pymysql scikit-learn networkx -y