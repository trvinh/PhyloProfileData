library(Biostrings)

# Processing NCBI taxonomy -----------------------------------------------------
# Source downloaded from ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy//taxdmp.zip
temp <- tempfile()
download.file("ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy//taxdmp.zip", temp)
names <- read.table(
    unz(temp, "names.dmp"),
    header = FALSE,
    fill = TRUE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)
nodes <- read.table(
    unz(temp, "nodes.dmp"),
    header = FALSE,
    fill = TRUE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)
unlink(temp)

# Create data frame containing taxon ID, the scientific name, its taxonomy rank
# and the taxon ID of the higer rank (parent's ID)
preProcessedTaxonomy <- merge(
    names[names$V7 == "scientific name", c("V1", "V3")],
    nodes[,c("V1", "V5", "V3")],
    by = "V1"
)
colnames(preProcessedTaxonomy) <- c("ncbiID", "fullName", "rank", "parentID")

# Remove "'" from taxon names and ranks, remove space from taxon ranks
preProcessedTaxonomy$fullName <- gsub("'", "", preProcessedTaxonomy$fullName)
preProcessedTaxonomy$rank <- gsub("'", "", preProcessedTaxonomy$rank)
preProcessedTaxonomy$rank <- gsub(" ", "", preProcessedTaxonomy$rank)

# Save into RData object
save(preProcessedTaxonomy, file = "preProcessedTaxonomy.RData", compress='xz')

# Create AMPK-TOR phylogenetic profile data set --------------------------------
# Load data
# Source https://github.com/BIONF/phyloprofile-data/blob/master/ampk-tor.zip
tempDir <- tempdir()
temp <- tempfile(tmpdir = tempDir)
download.file(
    paste0(
        "https://github.com/BIONF/phyloprofile-data/",
        "blob/master/ampk-tor.zip?raw=true"
    ),
    temp
)

# Read AMPK-TOR phylogenetic profile
ampkTorPhyloProfile <- read.table(
    unz(temp, "ampk-tor.phyloprofile"),
    header = TRUE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)

# Read AMPK-TOR domain annotations
ampkTorDomains <- read.table(
    unz(temp, "ampk-tor.domains_F"),
    header = FALSE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)
colnames(ampkTorDomains) <- c("seedID", "orthoID", "feature", "start", "end")

# Read AMPK-TOR fasta sequences
unzip(temp, files = "ampk-tor.extended.fa", exdir = tempDir, overwrite = TRUE)
fastaTmp <- file.path(tempDir, "ampk-tor.extended.fa")
ampkTorFasta <- Biostrings::readAAStringSet(fastaTmp)
unlink(tempDir)

# Save into RData objects
save(ampkTorPhyloProfile, file = "ampkTorPhyloProfile.RData", compress='xz')
save(ampkTorDomains, file = "ampkTorDomains.RData", compress='xz')
save(ampkTorFasta, file = "ampkTorFasta.RData", compress='xz')

# Create BUSCO Arthropoda phylogenetic profile data set ------------------------
# Load data
# Source https://github.com/BIONF/phyloprofile-data/blob/master/arthropoda.zip
tempDir <- tempdir()
temp <- tempfile(tmpdir = tempDir)
download.file(
    paste0(
        "https://github.com/BIONF/phyloprofile-data/",
        "blob/master/arthropoda.zip?raw=true"
    ),
    temp
)

# Read Arthropoda phylogenetic profile
arthropodaPhyloProfile <- read.table(
    unz(temp, "arthropoda.phyloprofile"),
    header = TRUE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)

# Read Arthropoda domain annotations
arthropodaDomain <- read.table(
    unz(temp, "arthropoda.domains"),
    header = FALSE,
    sep = "\t",
    quote = "",
    comment.char = "",
    stringsAsFactors = FALSE
)
colnames(arthropodaDomain) <- c(
    "seedID", "orthoID", "length", "feature", "start", "end", "weight", "path"
)

# Read Arthropoda fasta sequences
unzip(temp, files = "arthropoda.extended.fa", exdir = tempDir, overwrite = TRUE)
fastaTmp <- file.path(tempDir, "arthropoda.extended.fa")
arthropodaFasta <- Biostrings::readAAStringSet(fastaTmp)
unlink(tempDir)

# Save into RData objects
save(
    arthropodaPhyloProfile, file = "arthropodaPhyloProfile.RData", compress='xz'
)
save(arthropodaDomains, file = "arthropodaDomains.RData", compress='xz')
save(arthropodaFasta, file = "arthropodaFasta.RData", compress='xz')
