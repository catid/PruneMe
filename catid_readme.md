# Repro instructions

You will need access to the Meta-Llama-3-8B-Instruct model.  You can get access here: https://huggingface.co/meta-llama/Meta-Llama-3-8B-Instruct  After you have access, continue with the instructions below.

Set up a https://wandb.ai/ account for monitoring.

Create a new HuggingFace WRITE token for uploading later: https://huggingface.co/settings/tokens?new_token=true

Fork these scripts and modify the variables at the top of all the scripts to use your own paths.

Set up system:

I used https://runpod.io with 4 x H100 80GB SXM5 ($20/hr).  The scripts require 1, 2, 4, or 8 GPUs to evenly divide the batch sizes it uses.  Configure disk space to be 1024GB for workspace and container.  Enter the web terminal:

```bash
apt update
apt install git-lfs vim htop tmux -y
```

```bash
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
~/miniconda3/bin/conda init bash
source ~/.bashrc

tmux
```

Set up packages:

```bash
conda create -n pm python=3.10 -y && conda activate pm

git clone https://github.com/catid/PruneMe.git
cd PruneMe

pip3 install --upgrade pip
pip install -U -r requirements.txt

huggingface-cli login
```

Enter HuggingFace WRITE token from https://huggingface.co/settings/tokens and download the 70B model fast (we are paying per minute here):

```bash
pip install huggingface_hub[hf_transfer]
export HF_HUB_ENABLE_HF_TRANSFER=1
huggingface-cli download meta-llama/Meta-Llama-3-70B-Instruct --local-dir Meta-Llama-3-70B-Instruct
```

```bash

```