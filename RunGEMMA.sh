#!/bin/bash

#Este script es para correr gemma, el analisis de GWAS con el modelo
# de una y dos caracteristicas por individuo. Usando LMM y mvLMM.
#Estas indicaciones estan en el manual de GEMMA (http://www.xzlab.org/software.html)

#1ro) para crear la matriz de parentesco: 
#BIMBAM file (porque tambien tiene la opcion de usar archivos PLINK (.ped y .map))

#Ejemplo del formato : ./gemma -g filenamedata.geno.txt -p filenamedata.pheno.txt -gk 1 -o filenameout 

gemma -g /stash/timema/gwas_trad_Patrik_clines/10_gwas/Tbartmani/Tbartmani_JL.redhead.bin.bial.noindel.qs20.cov50.mdp204Mdp4080.maf0.01.geno.gz  \
      -p /stash/shared/romain/bartmani4Marisol/Tbartmani_JL.redhead.bin.redbody.bin.pheno  \
      -gk 1 \
      -o  Tbartmani_JL.redhead.bin.redbody.matrix.output 


#2ro) para correr el analisis con el modelo LMM en GEMMA (Modelo para una caracteristica por fenotipo).
# Ejemplo del formato: ./gemma -g [filename] -p [filename] -a [filename] -k [filename] -lmm [num] -o [prefix]


#2ro) para correr el analisis con el modelo mvLMMs en GEMMA (Modelo para dos caracteristicas por fenotipo). 
# Ejemplo del formato: ./gemma -g [filename] -p [filename] -a [filename] -k [filename] -lmm [num] -n [num1] [num2] [num3] -o [prefix]

gemma -g /stash/timema/gwas_trad_Patrik_clines/10_gwas/Tbartmani/Tbartmani_JL.redhead.bin.bial.noindel.qs20.cov50.mdp204Mdp4080.maf0.01.geno.gz \
      -p /stash/shared/romain/bartmani4Marisol/Tbartmani_JL.redhead.bin.redbody.bin.pheno \
      -n 1 2 \
      -a /stash/timema/gwas_trad_Patrik_clines/10_gwas/Tbartmani/Tbartmani_JL.redhead.bin.bial.noindel.qs20.cov50.mdp204Mdp4080.maf0.01.snpannot \
      -k  /fastdata/bo1mdlmc/GWASTbatmani/mvLMMs/output/Tbartmani_JL.redhead.bin.redbody.matrix.output.cXX.txt \
      -lmm \
      -o /fastdata/bo1mdlmc/GWASTbatmani/mvLMMs/GWAS/Tbartmani_JL.redhead.bin.redbody.bin_lmm


#Para hacer los manhattan plot y otro tipo de anailisis de los resultados utilice R 
