#' NCBI Taxonomy full data set
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
#' @usage data(ncbiTaxonNamesFull)
"ncbiTaxonNamesFull"

#' Phylogenetic profiles of Arthropoda taxon set
#'
#' Write the description here (what are the scores, how many taxa, how many 
#' proteins - what are those proteins)
#' @format A data frame with 5 columns and 54656 rows:
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
#' Write the description here (how many species, how many sequences, where can 
#' one get the data)
#' @format A AAStringSet object (package Biostrings)
#' @usage data(arthropodaFasta)
"arthropodaFasta"

#' Protein domain annotations of Arthropoda data
#'
#' Write the description here (what are the scores, how many taxa, how many 
#' proteins)
#' @format A data frame with 8 columns and 869651 rows:
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

#' Phylogenetic profiles of AMPK-TOR taxon set
#'
#' Write the description here (what are the scores, how many taxa, how many 
#' proteins - what are those proteins)
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
#' Write the description here (how many species, how many sequences, where can 
#' one get the data)
#' @format A AAStringSet object (package Biostrings)
#' @usage data(ampkTorFasta)
"ampkTorFasta"

#' Protein domain annotations of AMPK-TOR data
#'
#' Write the description here (what are the scores, how many taxa, how many 
#' proteins)
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