# SPmirnaseq

<!-- badges: start -->
![R-CMD-check](https://github.com/systemPipeR/SPmirnaseq/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

### Introduction

### Installation
```r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager") }
BiocManager::install('systemPipeR/SPmirnaseq')
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
