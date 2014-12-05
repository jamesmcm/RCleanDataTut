Overview of scripts
====================

This repo tidies the provided dataset, producing the tidied dataset in tidy.txt

The data is pre-processed with the bash script cleandata.sh, this script was partly generated from the Python script makebash.py

The tidied dataset is generated with the R script run_analysis.R, note that this calls cleandata.sh in its execution.
