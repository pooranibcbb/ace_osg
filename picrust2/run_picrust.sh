#!/usr/bin/env bash

set -x

## get number of cpus from .job.ad
ncpu=$(grep "^RequestCpus" .job.ad)
ncpu=${ncpu#RequestCpus = }
echo ${ncpu}

place_seqs.py -s seqs.fna -o out.tre -p ${ncpu} --intermediate intermediate/place_seqs

du -sh
find . -type f
