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
  - Preprocessing with _`preprocessReads`_ function
  - Preprocessing with TrimGalore!
  - Preprocessing with Trimmomatic
- FASTQ quality report
-  Alignment against reference genome 
- Alignment against miRBase mature miRNA
- Alignment against miRBase hairpin
- miRNA/isomiR annotation 
- Prediction of novel microRNAs (miRDeep2, miRPara, sRNAbench)

