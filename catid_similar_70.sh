python ./compute_block_similarity/layer_similarity.py \
    --model_path "Meta-Llama-3-70B-Instruct" \
    --dataset "arcee-ai/sec-data-mini" \
    --dataset_column "text" \
    --batch_size 1 \
    --max_length 8192 \
    --layers_to_skip 2 \
    --dataset_size 4000 \
    --dataset_subset "train" 
