#!/bin/bash

# change to the dir of the script
cd $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

removeDuplicates.md \
    R2.fq.gz \
    R1.fq.gz \
    > unique

spliterIndices=marker2,marker1 \
minScores=30,100 \
demultiplex.md \
    unique \
    > ontarget

sxCutR2AdapterFilterCumulate.md \
    ontarget \
    30 \
    > query

rearrangement \
    < query \
    3< ref \
    -s0 -6 \
    -s1 4 \
    -s2 2 \
    -u -3 \
    -v -9 \
    -ru 0 \
    -rv 0 \
    -qu 0 \
    -qv -5 |
gawk -f correct_micro_homology.awk -- \
    ref \
    direction \
    > corrected