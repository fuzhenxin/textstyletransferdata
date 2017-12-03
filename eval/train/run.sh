#!/usr/bin/env bash
# AUTHOR:   fuzx
# FILE:     run.sh
# ROLE:     TODO (some explanation)
# CREATED:  2017-06-13 20:56:12
# MODIFIED: 2017-07-10 19:34:43
num=205006
head -n $num q.txt > q_train.txt
head -n $num q.txt > r_train.txt
head -n $num s.txt > s_train.txt

tail -n 2000 q.txt > q_val.txt
tail -n 2000 q.txt > r_val.txt
tail -n 2000 s.txt > s_val.txt

tail -n 2000 q.txt > q_test.txt
tail -n 2000 q.txt > r_test.txt
tail -n 2000 s.txt > s_test.txt
