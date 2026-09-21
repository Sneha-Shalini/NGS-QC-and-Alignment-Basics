# NGS QC and Alignment Pipeline

## 🧬 Overview
A reproducible NGS data preprocessing pipeline for quality control, adapter trimming, and read alignment. This is a standard first step for RNA-Seq, WGS, and Variant Analysis workflows.

Designed for handling large-scale biological datasets efficiently on Linux.

## 🛠️ Tools Used
- **FastQC** - Quality control for raw FASTQ
- **Trimmomatic** - Adapter and low-quality base trimming
- **BWA-MEM** - Alignment to reference genome
- **SAMtools** - SAM/BAM conversion, sorting, and QC

## 🔄 Workflow
1. **QC:** `fastqc sample.fastq -o results/`
2. **Trim:** `trimmomatic PE ... SLIDINGWINDOW:4:20 MINLEN:36`
3. **Align:** `bwa mem reference/genome.fa sample_trimmed.fastq`
4. **Process:** `samtools view, sort, flagstat`

## 📁 Repo Structure
- `reference/` - Reference genome FASTA
- `sample_data/` - Raw FASTQ files
- `results/` - FastQC reports, trimmed reads, BAM files
- `scripts/` - Pipeline scripts
- `commands.sh` - Main pipeline code

## ▶️ How to Run
```bash
bash commands.sh

## 🎯 Skills Demonstrated
NGS Analysis, Linux Bash, Data QC, BWA, SAMtools, Reproducible Pipelines

## 🧪 Wet Lab Exposure (For In-Person Internship)
- DNA/RNA Isolation
- PCR & Agarose Gel Electrophoresis
- Micropipetting, Centrifugation, Sterile Techniques
- Lab Safety & Record Maintenance
*Eager for hands-on training in advanced molecular techniques in a real lab setting.*

## 📓 Lab Notebook
See `lab_protocols/` folder for SOPs maintained during M.Sc. practicals.

## 👩‍🔬 Author
Sneha Shalini | M.Sc. Bioinformatics, Pondicherry University
Seeking In-Person Bioinformatics Internship (Hands-on Lab Work)
