#!/bin/bash
#$ -l arch=intel*
#$ -pe openmp 4
#$ -l h_rt=8:00:00
#$ -l mem=8G
#$ -l rmem=2G
#$ -j y
#$ -o TestBeastSNAPP_100kb.log
#$ -m bea
#$ -M morita2602@hotmail.com

#Texting SNP size variants, and lamda (diversification rates) in SNAPP BEAST2
#load the module for the program beast

source /urs/local/extras/Genomics/.bashrc

beast2 -threads 4 /home/bo1mdlmc/Beauty_imput/steps_100kb_Gamma_19_550.xml >& steps_100kb_Gamma_19_550_beast.log


