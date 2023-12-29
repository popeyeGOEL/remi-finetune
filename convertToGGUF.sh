{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 15,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Requirement already satisfied: huggingface_hub in /home/remi/anaconda3/lib/python3.11/site-packages (0.15.1)\n",
      "Requirement already satisfied: filelock in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (3.9.0)\n",
      "Requirement already satisfied: fsspec in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (2023.4.0)\n",
      "Requirement already satisfied: requests in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (2.31.0)\n",
      "Requirement already satisfied: tqdm>=4.42.1 in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (4.65.0)\n",
      "Requirement already satisfied: pyyaml>=5.1 in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (6.0)\n",
      "Requirement already satisfied: typing-extensions>=3.7.4.3 in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (4.7.1)\n",
      "Requirement already satisfied: packaging>=20.9 in /home/remi/anaconda3/lib/python3.11/site-packages (from huggingface_hub) (23.1)\n",
      "Requirement already satisfied: charset-normalizer<4,>=2 in /home/remi/anaconda3/lib/python3.11/site-packages (from requests->huggingface_hub) (2.0.4)\n",
      "Requirement already satisfied: idna<4,>=2.5 in /home/remi/anaconda3/lib/python3.11/site-packages (from requests->huggingface_hub) (3.4)\n",
      "Requirement already satisfied: urllib3<3,>=1.21.1 in /home/remi/anaconda3/lib/python3.11/site-packages (from requests->huggingface_hub) (1.26.16)\n",
      "Requirement already satisfied: certifi>=2017.4.17 in /home/remi/anaconda3/lib/python3.11/site-packages (from requests->huggingface_hub) (2023.7.22)\n",
      "Note: you may need to restart the kernel to use updated packages.\n"
     ]
    }
   ],
   "source": [
    "pip install huggingface_hub"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "873f459514c840e69be805771843c2f6",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Fetching 18 files:   0%|          | 0/18 [00:00<?, ?it/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "4c27852374bf484398d810c7ebce8519",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading USE_POLICY.md:   0%|          | 0.00/4.77k [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "f05f0abd11274ef9b9dc3b20a3a1f00e",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading LICENSE.txt:   0%|          | 0.00/7.02k [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "72336dd330694452879cee8dab95d7f4",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading .gitattributes:   0%|          | 0.00/1.52k [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "154e71bf64b84e57830a4cc80de2bc95",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading (…)model.bin.index.json:   0%|          | 0.00/26.8k [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "fd1a7247a5204c5985b625b6ba698574",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading (…)l-00002-of-00003.bin:   0%|          | 0.00/9.89G [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "bfcd4fc954a34b18ae62a0fcbb868040",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading (…)l-00001-of-00003.bin:   0%|          | 0.00/9.88G [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "c3311673578641c5b64d840066454125",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading README.md:   0%|          | 0.00/10.1k [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "application/vnd.jupyter.widget-view+json": {
       "model_id": "c7896f42ebe445f390e399d4a1079626",
       "version_major": 2,
       "version_minor": 0
      },
      "text/plain": [
       "Downloading (…)l-00003-of-00003.bin:   0%|          | 0.00/7.18G [00:00<?, ?B/s]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "from huggingface_hub import snapshot_download\n",
    "model_id=\"NousResearch/Llama-2-7b-chat-hf\"\n",
    "snapshot_download(repo_id=model_id, local_dir=\"llama-2-7b-chat\",\n",
    "                  local_dir_use_symlinks=False, revision=\"main\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "base",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
