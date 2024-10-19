#!/bin/bash

#speakers=(0 1 2)[]
speakers=(1089 237 260 2961 4970 5683 7021 7127 7729 8463)
# sizes=('large' 'medium' 'small' 'tiny')
sizes=('medium')
#sizes=('tiny')
rates=(0.000001)
#rates=(0.00001)


for spk in ${speakers[@]}; do
    for s in ${sizes[@]}; do
        for r in ${rates[@]}; do
            echo "spk: $spk, size: $s, rate: $r"
            CUDA_VISIBLE_DEVICES=3 python my_run.py  -s $spk -r $r -i $s -p 'xttsv2_synth_50utt' -m 'xttsv2'
        done
    done
done