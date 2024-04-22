python ./compute_block_similarity/layer_similarity.py \
    --model_path "/home/catid/models/Meta-Llama-3-70B-Instruct" \
    --dataset "arcee-ai/sec-data-mini" \
    --dataset_column "text" \
    --batch_size 8 \
    --max_length 8192 \
    --layers_to_skip 2 \
    --dataset_size 4000 \
    --dataset_subset "train" 
