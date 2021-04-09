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

- Raw read QC (FastQC)
- Adapter trimming (Trim Galore!)
  - Insert Size calculation
  - Collapse reads (seqcsluter)
- Alignment against miRBase mature miRNA (Bowtie2)
- Alignment against miRBase hairpin
  - Post-alignment processing of miRBase hairpin
  -  Basic statistics from Alignment steps (SAMtools)
  -  Analysis on miRBase hairpin counts (edgeR)
  -  miRNA annotation (mirtop)
- Alignment against host reference genome (Bowtie2)
  - Post-alignment processing of alignment against host reference genome (SAMtools)
- Novel miRNA Discovery
  - Predict novel miRNAs (miRDeep2, miRPara, miRAnalyzer)
  - miRNA counts generation
  - Statistical analysis
