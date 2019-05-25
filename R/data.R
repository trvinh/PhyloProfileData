#' Preprocessed NCBI taxonomy data
#'
#' Data frame contains all NCBI taxon IDs, taxon names, their systematic 
#' taxonomy rank and IDs of their next ranks (parent IDs)
#' @format A data frame with 4 columns and 2110551 rows:
#' \itemize{
#'     \item{ncbiID}{ e.g. "10090"}
#'     \item{fullName}{ e.g. "Mus musculus"}
#'     \item{rank}{ e.g. "species"}
#'     \item{parentID}{ e.g. "862507"}
#' }
#' @usage data(preProcessedTaxonomy)
#' @source ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/taxdmp.zip
"preProcessedTaxonomy"

#' Phylogenetic profiles of AMPK-TOR taxon set
#'
#' Data frame contains the phylogenetic profiles of 147 proteins of the human 
#' AMPK-TOR pathway across 83 species in the three domains of life. This data is
#' part of the published study https://doi.org/10.1093/jxb/erw211.
#' @format A data frame with 5 columns and 6535 rows:
#' \itemize{
#'     \item{geneID}{Gene ID, e.g. "ampk_ACACA"}
#'     \item{ncbiID}{Taxonomy ID of the search species, e.g. "ncbi284812"}
#'     \item{orthoID}{Ortholog ID, e.g. "ampk_ACACA|SCHPO@284812@1|P78820|1"}
#'     \item{FAS_F}{Forward FAS score, e.g. "0.9884601"}
#'     \item{FAS_B}{Backward FAS score, e.g. "0.9907436"}
#' }
#' @usage data(ampkTorPhyloProfile)
"ampkTorPhyloProfile"

#' FASTA sequences of AMPK-TOR data
#'
#' A list of fasta sequences (AAStringSet objects) for 6535 proteins of the 
#' phylogenetic profiles. They include 147 human proteins that are part of the 
#' human AMPK-TOR pathway and 6388 orthologous proteins in other 82 species.
#' @format A AAStringSet object (package Biostrings)
#' @usage data(ampkTorFasta)
"ampkTorFasta"

#' Protein domain annotations of AMPK-TOR data
#' 
#' Data frame containing the domain annotation for all proteins in phylogenetic 
#' profiles of the human AMPK-TOR pathways.
#' @format A data frame with 5 columns and 133489 rows:
#' \itemize{
#'     \item{seedID}{Gene ID & its ortholog, e.g. 
#'     "ampk_ACACA#ampk_ACACA|ANOGA@7165@1|Q7PQ11|1"}
#'     \item{orthoID}{Seed/Ortholog ID, e.g. 
#'     "ampk_ACACA|ANOGA@7165@1|Q7PQ11|1"}
#'     \item{feature}{Annotated feature/domain, e.g. "pfam_CPSase_L_D2"}
#'     \item{start}{Start position, e.g. "260"}
#'     \item{end}{End position, e.g. "462"}
#' }
#' @usage data(ampkTorDomain)
"ampkTorDomain"

#' Phylogenetic profiles of Arthropoda taxon set
#'
#'The phylogenetic profile of 1011 ortholog groups across 88 species 
#'was calculated from the BUSCO arthropoda dataset published
#'from Simão et al.2015 https://doi.org/10.1093/bioinformatics/btv351
#' @format A data frame with 5 columns and 54500 rows:
#' \itemize{
#'     \item{geneID}{Gene ID, e.g. "97421at6656"}
#'     \item{ncbiID}{Taxonomy ID of the search species, e.g. "ncbi9598"}
#'     \item{orthoID}{Ortholog ID, e.g. "97421at6656|PANTR@9598@1|H2QTF9|1"}
#'     \item{FAS_F}{Forward FAS score, e.g. "0.6872810"}
#'     \item{FAS_B}{Backward FAS score, e.g. "0.9654661"}
#' }
#' @usage data(arthropodaPhyloProfile)
"arthropodaPhyloProfile"

#' FASTA sequences of Arthropoda data
#'
#' A list of fasta sequences (AAStringSet objects) for 1011 BUSCO ortholog 
#' groups of the phylogenetic profile. It has in total 54488 protein sequences.
#' @format A AAStringSet object (package Biostrings)
#' @usage data(arthropodaFasta)
"arthropodaFasta"

#' Protein domain annotations of Arthropoda data
#'
#' Data frame containing the domain annotation for all proteins in phylogenetic 
#' profiles of the arthropoda dataset.
#' @format A data frame with 8 columns and 866912 rows:
#' \itemize{
#'     \item{seedID}{Gene ID & its ortholog, e.g. 
#'     "136365at6656#136365at6656|ANOGA@7165@1|Q7QC64|1"}
#'     \item{orthoID}{Seed/Ortholog ID, e.g. 
#'     "136365at6656|ANOGA@7165@1|Q7QC64|1"}
#'     \item{length}{Seed/Ortholog length, e.g. "142"}
#'     \item{feature}{Annotated feature/domain, e.g. "pfam_Ribosomal_L27"}
#'     \item{start}{Start position, e.g. "26"}
#'     \item{end}{End position, e.g. "106"}
#'     \item{weight}{Feature weight, e.g. "NA"}
#'     \item{path}{Feature is used for comparison (Y/N), e.g. "Y"}
#' }
#' @usage data(arthropodaDomain)
"arthropodaDomain"
