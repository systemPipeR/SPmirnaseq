# SPmirnaseq

<!-- badges: start -->
[![R-CMD-check](https://github.com/systemPipeR/SPmirnaseq/actions/workflows/R_CMD.yml/badge.svg)](https://github.com/systemPipeR/SPmirnaseq/actions/workflows/R_CMD.yml)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
<!-- badges: end -->

### :construction: Under Development!

> This pipeline is currently under development and does not have a stable release yet.

### Installation

To install the package, please use the _`BiocManager::install`_ command:
```
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("systemPipeR/SPmirnaseq", build_vignettes=TRUE, dependencies=TRUE)
```
To obtain the *systemPipeR* and *systemPipeRdata*, please run as follow:
```
if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("systemPipeR")
BiocManager::install("systemPipeRdata")
```

### Usage

### Pipeline summary

- Read Preprocessing
    - Read Preprocessing with _`Cutadapt`_
  - Preprocessing with _`preprocessReads`_ function
  - Preprocessing with TrimGalore!
  - Preprocessing with Trimmomatic
- FASTQ quality report
- Alignment against reference genome
    - Alignment with _`Bowtie2`_ 
    - Alignment with _`BWA`_ 
- Read counting for miRNA profiling experiments
- Alignment against miRBase mature miRNA and hairpin
    - Alignment with _`sRNAbench`_

- Prediction of novel microRNAs (miRDeep2, miRPara, sRNAbench)
    - Prediction `sRNAbench`
- DEG analysis with *`DESeq2`* 
- isomiR mapping and annotation 
- Visualization 
