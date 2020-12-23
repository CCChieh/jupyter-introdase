FROM continuumio/anaconda3
RUN conda create -n daseIntro \
    && conda activate daseIntro \
    && conda install python=3.7 \
    && conda install graphviz \
    && conda install jupyterlab \
    && conda install jupyter \
    && conda install matplotlib \
    && conda install pandas \
    && conda install pymysql \
    && conda install scikit-learn \
    && conda install networkx \
