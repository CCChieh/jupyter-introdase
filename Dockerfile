FROM continuumio/anaconda3
RUN conda install python=3.7 -y \
    && conda install graphviz -y \
    && conda install jupyterlab -y \
    && conda install jupyter -y \
    && conda install matplotlib -y \
    && conda install pandas -y \
    && conda install pymysql -y \
    && conda install scikit-learn -y \
    && conda install networkx -y \
