#!/bin/bash

. /root/.bashrc
conda activate daseIntro
nohup jupyter lab >> /root/jupyter.log &
/bin/bash