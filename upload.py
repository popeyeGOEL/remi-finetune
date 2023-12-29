from huggingface_hub import HfApi
api = HfApi()

model_id = "popeyeGOEL/remi-llama-2-13b-20231215-triplog-gguf"
api.create_repo(model_id, exist_ok=True, repo_type="model")
api.upload_file(
    path_or_fileobj="remi-llama-2-13b-20231215-triplog-gguf.gguf",
    path_in_repo="remi-llama-2-13b-20231215-triplog-gguf.gguf",
    repo_id=model_id,
)