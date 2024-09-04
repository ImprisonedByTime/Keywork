#!/bin/bash
#/home/g/Project/Beath_keys/breath.sh
#chmod +x /home/g/Project/Beath_keys/breath.sh

cd /home/g/Project/Beath_keys

python3 -m venv myenv

source myenv/bin/activate

# Install the libraries from the local wheel files
pip install --force-reinstall ./offline_lib/keyboard-0.13.5-py3-none-any.whl
pip install ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl

# Run your test Python script
python foo.py

deactivate

