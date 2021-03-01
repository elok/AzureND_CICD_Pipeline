#!/usr/bin/env bash

python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate

git clone https://github.com/elok/AzureND_CICD_Pipeline.git
cd AzureND_CICD_Pipeline
make install

az webapp up -n udacity-cicd