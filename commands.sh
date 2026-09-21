#!/bin/bash
# NGS QC and Alignment Pipeline - Internship Project
# Author: Sneha Shalini

# Step 1: Quality Check of raw FASTQ files
echo "Running FastQC..."
fastqc sample_data/sample.fastq -o results/

# Step 2: Trimming low quality bases and adapters
echo "Running Trimmomatic..."
trimmomatic SE -phred33 sample_data/sample.fastq results/trimmed.fastq LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:36

# Step 3: Index reference genome (run once)
echo "Indexing reference..."
bwa index reference/reference.fasta

# Step 4: Alignment to reference genome
echo "Aligning with BWA..."
bwa mem reference/reference.fasta results/trimmed.fastq > results/alignment.sam

# Step 5: Convert SAM to BAM and Sort
echo "Processing BAM file..."
samtools view -bS results/alignment.sam > results/alignment.bam
samtools sort results/alignment.bam -o results/sorted_alignment.bam
samtools flagstat results/sorted_alignment.bam

echo "Pipeline Completed Successfully!"
