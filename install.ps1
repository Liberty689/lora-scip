python -m venv venv
.\venv\Scripts\activate
pip config set global.index-url https://mirrors.cloud.tencent.com/pypi/simple
pip config set global.trusted-host mirrors.cloud.tencent.com
pip install .\torch-1.12.1+cu116-cp310-cp310-win_amd64.whl
pip install .\torchvision-0.13.1+cu116-cp310-cp310-win_amd64.whl
pip install --use-pep517 --upgrade -r requirements.txt
pip install .\xformers-0.0.14.dev0-cp310-cp310-win_amd64.whl


copy-item .\bitsandbytes_windows\*.dll .\venv\Lib\site-packages\bitsandbytes\
copy-item .\bitsandbytes_windows\cextension.py .\venv\Lib\site-packages\bitsandbytes\cextension.py
copy-item .\bitsandbytes_windows\main.py .\venv\Lib\site-packages\bitsandbytes\cuda_setup\main.py

accelerate config