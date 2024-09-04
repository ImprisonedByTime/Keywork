#!/bin/bash
#/home/g/Project/Beath_keys/atest/test.sh
#chmod +x /home/g/Project/Beath_keys/atest/test.sh
#source /home/g/Project/Beath_keys/atest/test.sh
#j /home/g/Project/Beath_keys/myenv/bin/activate
#/home/g/Project/Beath_keys/breath.sh
#pip download keyboard -d /home/g/Project/Beath_keys/atest/lib/
#/home/g/Project/Keywork/test.sh

cd /home/g/Project/Beath_keys/atest

python3 -m venv my_testenv

source my_testenv/bin/activate

pip install --force-reinstall ./lib/keyboard-0.13.5-py3-none-any.whl
#pip install ./lib/keyboard-0.13.5-py3-none-any.whl
#pip install --force-reinstall ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl


# Install the libraries from the correct path
#pip install ./offline_lib/keyboard-0.13.5-py3-none-any.whl
#pip install ./offline_lib/pynput-1.7.7-py2.py3-none-any.whl

# Run your Python script
python my_test.py

deactivate
