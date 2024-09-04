#!/bin/bash
#/home/g/Project/Beath_keys/breath.sh
#source /home/g/Project/Beath_keys/myenv/bin/activate
/home/g/Project/Beath_keys/breath.sh
cd /home/g/Project/Beath_keys # Navigate to the correct directory

python3 -m venv myenv

source myenv/bin/activate

pip install --force-reinstall ./offline_lib/keyboard-0.13.5-py3-none-any.whl
pip install ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl


# Install the libraries from the correct path
#pip install ./offline_lib/keyboard-0.13.5-py3-none-any.whl
#pip install ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl

# Run your Python script
python poo.py

deactivate


