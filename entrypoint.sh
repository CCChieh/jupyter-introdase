#!/bin/bash

. /root/.bashrc
conda activate daseIntro
jupyter lab >> /root/jupyter.log &
/bin/bash