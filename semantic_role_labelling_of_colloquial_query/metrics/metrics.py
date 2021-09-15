import sys
import re
import codecs
import json
import os
import argparse
from collections import defaultdict, namedtuple



def evaluate(iterable):
    right_sen_cnt = 0
    total_sen_cnt = 0
    right_word_cnt = 0
    total_word_cnt = 0
    for line in open(iterable, "r", encoding="utf-8").readlines():
        is_sentence_end = False
        line = line.strip()

        features = line.split("\t")

        if len(features) == 1 and features == ['']:
            is_sentence_end = True

        elif len(features) < 3 and features != ['']:
            total_word_cnt += 1
            continue

        if not is_sentence_end:
            tag = features[1]
            pre = features[2]
            if tag == pre:
                right_word_cnt += 1
            total_word_cnt += 1


        else:
            if right_word_cnt == total_word_cnt:
                right_sen_cnt += 1
            total_sen_cnt += 1
            right_word_cnt = 0
            total_word_cnt = 0
    return right_sen_cnt / (total_sen_cnt+1e-10)


def write_res_one_file(tag_file,predict_file,extra_res):
    os.system("cut -f2 %s > midden_res && paste %s midden_res > %s"%(predict_file,tag_file,extra_res))

def eval(predict_file, tag_file, result_file):
    extra_res = "./extra_res"
    write_res_one_file(tag_file, predict_file, extra_res)
    eval_score = evaluate(extra_res)
    dict = {}
    dict["accuracy"] = float(eval_score)
    json.dump(dict, open(result_file, "w"))

def main():
    eval(sys.argv[1],sys.argv[2],sys.argv[3])

if __name__ == "__main__":
    main()
