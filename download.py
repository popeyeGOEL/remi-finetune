from huggingface_hub import snapshot_download
model_id="popeyeGOEL/remi-llama-2-13b-20231205-triplog"
snapshot_download(repo_id=model_id, local_dir="remi-llama-2-13b-20231215-triplog-hf",
                  local_dir_use_symlinks=False, revision="main")