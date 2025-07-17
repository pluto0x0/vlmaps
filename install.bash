#!/bin/bash
source "${HOME}/conda/etc/profile.d/conda.sh"
conda deactivate
conda create -n vlmaps python=3.8 -y  # or use virtualenv
conda activate vlmaps
pip install pip==22.3 setuptools==65.5.0 wheel==0.37.1
pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
# ================

pip install -r requirements.txt

conda install habitat-sim=0.2.2 -c conda-forge -c aihabitat -y

cd ~
git clone --recursive https://github.com/cvg/Hierarchical-Localization/
cd Hierarchical-Localization/
python -m pip install -e .

# ================

pip install -e .