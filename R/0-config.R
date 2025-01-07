#---------------------------------
# 0-config.R
#
# configuration file for the
# EcoMID GPP-TAC diagnostic comparison
# study
#---------------------------------


#---------------------------------
# load packages
#---------------------------------
library(here)
library(osfr)
library(renv)
library(tidyverse)
library(foreach)
library(epiR)
library(kableExtra)
library(patchwork)
library(ggExtra)

#---------------------------------
# define directories
#---------------------------------
data_dir <- here("../../Data/gpp-tac-comp/untouched/")
out_dir_w <- paste0(here::here(),"/output/")
code_dir <- paste0(here::here(), "/R/")

#---------------------------------
# safe color blind palette
# http://jfly.iam.u-tokyo.ac.jp/color/
# http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
# Reference: Bang Wong, Nature Methods 2011: https://www.nature.com/articles/nmeth.1618
#---------------------------------
cbpal <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

#---------------------------------
# bright color blind palette:  https://personal.sron.nl/~pault/ 
#---------------------------------
cblack <- "#000004FF"
cblue <- "#3366AA"
cteal <- "#11AA99"
cgreen <- "#66AA55"
cchartr <- "#CCCC55"
cmagent <- "#992288"
cred <- "#EE3333"
corange <- "#EEA722"
cyellow <- "#FFEE33"
cgrey <- "#777777"


#---------------------------------
# set harmonized levels for targets and pathogens
# to be used in factor variable creation, below
# orded by viruses, bacteria, protozoans, 
#---------------------------------
target_levels <- c(
  "Adenovirus_40_41","Norovirus_GI","Norovirus_GII","Rotavirus_A",
  "Cdifficile_toxinA","Cdifficile_toxinB","Campylobacter","Ecoli_O157",
  "ETEC_LT","ETEC_ST","STEC_stx1","STEC_stx2","Shigella","Salmonella",
  "Vibrio_cholerae","Yersinia_enterocolitica",
  "Cryptosporidium","Entamoeba_histolytica","Giardia")

pathogen_levels <- c(
  "Adenovirus_40_41","Norovirus_GI_GII","Rotavirus_A",
  "Cdifficile_toxinA_B","Campylobacter","Ecoli_O157","ETEC_LT_ST","STEC_stx1_stx2",
  "Shigella","Salmonella","Vibrio_cholerae","Yersinia_enterocolitica",
  "Cryptosporidium","Entamoeba_histolytica","Giardia"
)

