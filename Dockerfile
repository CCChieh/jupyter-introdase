FROM continuumio/anaconda3
RUN . /root/.bashrc \
    && conda create -n daseIntro -y \
    && conda activate daseIntro \
    && conda install python=3.7 graphviz jupyterlab jupyter matplotlib pandas pymysql scikit-learn networkx -y \
	&& apt-get update \
	&& apt-get install texlive-xetex texlive-fonts-recommended texlive-generic-recommended -y \
	&& mkdir -p /root/.jupyter/custom \
	&& echo "conda activate daseIntro" >> ~/.bashrc
COPY jupyter_notebook_config.py /root/.jupyter/
COPY custom.js /root/.jupyter/custom/
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
RUN ["chmod", "+x", "/entrypoint.sh"]
EXPOSE 8888