#!/usr/bin/bash

basepath=$(cd `dirname $0`; pwd)
cd $basepath/../../
source env.sh
cd $basepath/../
source setting.conf
cd $basepath


python metrics.py \
    $PREDICT_RESULT_FILE_DIR"/predict.txt" \
    $GROUNDTRUTH_FILE_DIR"/truth.txt" \
    $RESULT_JSON_FILE
