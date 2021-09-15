#!/usr/bin/bash

basepath=$(cd `dirname $0`; pwd)
cd $basepath/../../
source env.sh
cd $basepath/../
source setting.conf
cd $basepath


PRETRAIN_MODEL="/read-only/common/pretrain_model/tensorflow/chinese_L-12_H-768_A-12"
python bert_lstm_ner.py \
    --task_name="ner" \
    --do_train=True \
    --do_eval=False \
    --do_predict=False \
    --data_dir=$TRAIN_FILE_DIR \
    --vocab_file=$PRETRAIN_MODEL/vocab.txt \
    --bert_config_file=$PRETRAIN_MODEL/bert_config.json \
    --init_checkpoint=$PRETRAIN_MODEL/bert_model.ckpt \
    --max_seq_length=40   \
    --train_batch_size=16   \
    --learning_rate=2e-5 \
    --num_train_epochs=20 \
    --output_dir=$SAVE_MODEL_DIR
