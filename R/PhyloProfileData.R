#' Data package for phylogenetic profile analysis using PhyloProfile tool
#' 
#' @description The PhyloProfileData package provides a collection of datasets 
#' to accompany the R package PhyloProfile, where they are used to illustrate 
#' how to run MOFA and analyse its results. Briefly, it contains the 
#' phylogenetic profiles, the fasta sequences and the domain annotations for two
#' experimental data sets, including human AMPK-TOR pathway proteins and BUSCO 
#' Arthropoda proteins. In addition, a preprocessing NCBI taxonomy data is also
#' provided, which required for some functions of the PhyloProfile package, i.e.
#' the ability to sort input taxa based on a selected reference taxon, or to 
#' change the resolution of the phylogenetic profiling analysis from species 
#' level to class or phylum level.
#' @details More details of the datas can be found in the vignette 
#' "PhyloProfileData".
#' @docType package
#' @name PhyloProfileData
#' @import Biostrings
NULL