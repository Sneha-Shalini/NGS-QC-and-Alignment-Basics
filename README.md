# NGS-QC-and-Alignment-Basics
This repository contains basic NGS data analysis workflow practiced on public datasets.

**Objective:** To understand quality control, trimming and alignment of NGS reads.

**Dataset used:** Dummy FASTQ data / SRA public data (SRR example)

**Tools and Commands Used:**
- FastQC - Quality check of raw reads
- Trimmomatic / Cutadapt - Adapter trimming and low quality filtering
- BWA-MEM - Alignment to reference genome
- SAMtools - Conversion, sorting and indexing of BAM files
- IGV - Visualization of aligned reads

**Workflow:**
1. Checked raw read quality using FastQC
2. Trimmed adapters and low-quality bases using Trimmomatic
3. Aligned trimmed reads to reference genome using BWA
4. Sorted and indexed BAM files using SAMtools
5. Visualized alignment in IGV

**Learning:** This helped me understand how raw FASTQ quality affects alignment and why QC before analysis is important.

**Skills:** Linux command line, NGS QC, Alignment, SAMtools, IGV

*This is a learning repository as part of my M.Sc. Bioinformatics coursework.*
