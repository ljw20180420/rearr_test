# Container

Docker is built automatically by the github workflow of bioconda at https://quay.io/repository/biocontainers/rearr. Singularity is built by galaxy project at https://depot.galaxyproject.org/singularity. These images contain only necessary tools for analyes. A docker image containing webUI is at ghcr.io/ljw20180420/rearr.

TODO
- example folder for docker
- example folder for singularity

# Downstream analysis

TODO
- example folder for UI image
- show alignment browser
- compare with CRISPResso output result
- show workflow UI

https://qiangwulab.sjtu.edu.cn

# Technical improvements

## Time

[Farrar's implementation of SIMD](https://doi.org/10.1093/bioinformatics/btl582).

## Space

- [Optimal alignments in linear space](https://doi.org/10.1093/bioinformatics/4.1.11).
- Branch and bound algorithm.
