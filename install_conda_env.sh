#!/bin/bash
wget https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh -O ~/anaconda3.sh


export ANACONDA_DIR=/opt/anaconda3
chmod +x ~/anaconda3.sh
sudo -u root  ~/anaconda3.sh -b -p $ANACONDA_DIR
rm -rf ~/anaconda3.sh
echo "export PATH="$ANACONDA_DIR"/bin:\$PATH" >> ~/.bash_profile

#Create new
conda create -n datascience python=3.6 --y
source activate datascience

conda install --y nb_conda

#jupyterthemes
pip install --upgrade jupyterthemes

# toggle toolbar ON and notebook name ON
jt -t grade3 -T -N

# Pandas
conda install --y pandas=0.20.2

# Tensorflow
conda install --y -c anaconda tensorflow-gpu=1.1.0

# Keras
conda install --y -c conda-forge keras=2.0.2

# Gensim
conda install --y -c anaconda gensim=2.2.0

# Sklearn 
conda install --y scikit-learn

# Excel Processing
pip install openpyxl

# NLTK
pip install nltk
# run nltk.download() to install different corporas

