




update-alternatives --install /usr/bin/python python /usr/bin/python3 1


# From the comment:

sudo update-alternatives --config python

# Will show you an error:

# update-alternatives: error: no alternatives for python3 

# You need to update your update-alternatives , then you will be able to set your default python version.
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
# Then run :
sudo update-alternatives --config python

#Or use the following command to set python2.7 as default:
sudo update-alternatives  --set python /usr/bin/python2.7






wget -P ~/.local/lib https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2.7 ~/.local/lib/get-pip.py --user
printf "\nPATH=\$PATH:~/.local/bin/" >> ~/.bashrc
source ~/.bashrc

python2 -m pip install ipykernel
python2 -m ipykernel install --user
python2 -m pip install numpy