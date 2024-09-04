##!/bin/bash
#
##/home/g/Project/Beath_keys/breath.sh
##chmod +x /home/g/Project/Beath_keys/breath.sh
#cd /home/g/Project/Beath_keys
#
#echo "DEBUG: Creating virtual environment..."
#python3 -m venv myenv
#
#echo "DEBUG: Activating virtual environment..."
#source myenv/bin/activate
#
## Install the libraries from the local wheel files
#echo "DEBUG: Installing keyboard package..."
#pip install --force-reinstall ./offline_lib/keyboard-0.13.5-py3-none-any.whl
#
#echo "DEBUG: Installing pynput package..."
#pip install ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl
#
## Run your test Python script
#echo "DEBUG: Running foo.py..."
#python foo.py
#
#echo "DEBUG: Deactivating virtual environment..."
#deactivate
#
#!/bin/bash

cd /home/g/Project/Beath_keys

echo "DEBUG: Creating virtual environment..."
python3 -m venv myenv

echo "DEBUG: Activating virtual environment..."
source myenv/bin/activate

# Install the libraries from the local wheel files
echo "DEBUG: Installing keyboard package..."
pip install --force-reinstall ./offline_lib/keyboard-0.13.5-py3-none-any.whl

echo "DEBUG: Force reinstalling pynput package..."
pip install --force-reinstall ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl

# Run your test Python script
echo "DEBUG: Running foo.py..."
python foo.py

echo "DEBUG: Deactivating virtual environment..."
deactivate

