preProcessedTaxonomy <- data.frame(
    Title = "Preprocessed NCBI taxonomy data",
    Description = paste0(
        "A preprocessed NCBI taxonomy data, which required by the PhyloProfile 
        package for functions like the ability to sort input taxa based on a 
        selected reference taxon, or to change the resolution of the 
        phylogenetic profiling analysis from e.g. species level to class or 
        phylum level. 
        Reference:
        Ngoc-Vinh Tran, Bastian Greshake Tzovaras, Ingo Ebersberger; 
        PhyloProfile: Dynamic visualization and exploration of multi-layered 
        phylogenetic profiles, Bioinformatics, , bty225, 
        https://doi.org/10.1093/bioinformatics/bty225"
    ),
    BiocVersion = "3.9",
    Genome = NA,
    SourceType = "Zip",
    SourceUrl = "ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy//taxdmp.zip",
    SourceVersion = "v1",
    Species = NA,
    TaxonomyId = NA,
    Coordinate_1_based = NA,
    DataProvider = "Applied Bioinformatics Dept., Goethe University Frankfurt",
    Maintainer = "Vinh Tran <tran@bio.uni-frankfurt.de>",
    RDataClass = "data.frame",
    DispatchClass = "RData",
    RDataPath = "PhyloProfileData/preProcessedTaxonomy.RData",
    Note = "NCBI taxonomy files downloaded on May 24th 2019",
    stringsAsFactors = FALSE
)

ampkTorProfile <- data.frame(
    Title = "Phylogenetic profiles of human proteins in the AMPK-TOR pathway",
    Description = paste0(
        "The phylogenetic profiles of 147 human proteins in the AMPK-TOR pathway
        across 83 species in the three domains of life. This data set contains
        a phylogenetic profile file, a multiple fasta file and a protein 
        annotation file.
        Reference:
        Valentin Roustan, Arpit Jain, Markus Teige, Ingo Ebersberger, Wolfram 
        Weckwerth, An evolutionary perspective of AMPK–TOR signaling in the 
        three domains of life, Journal of Experimental Botany, Volume 67, Issue 
        13, June 2016, Pages 3897–3907, https://doi.org/10.1093/jxb/erw211"
    ),
    BiocVersion = "3.9",
    Genome = NA,
    SourceType = "Zip",
    SourceUrl = "https://github.com/BIONF/phyloprofile-data/blob/master/ampk-tor.zip",
    SourceVersion = "v1",
    Species = NA,
    TaxonomyId = NA,
    Coordinate_1_based = NA,
    DataProvider = "Applied Bioinformatics Dept., Goethe University Frankfurt",
    Maintainer = "Vinh Tran <tran@bio.uni-frankfurt.de>",
    RDataClass = "data.frame, AAStringSet",
    DispatchClass = "RData",
    RDataPath = paste0(
        "PhyloProfileData/ampkTorPhyloProfile.RData; ",
        "PhyloProfileData/ampkTorFasta.RData; ",
        "PhyloProfileData/ampkTorDomain.RData"
    ),
    Note = NA,
    stringsAsFactors = FALSE
)

buscoArthropodaProfile <- data.frame(
    Title = "Phylogenetic profiles of BUSCO arthropoda proteins",
    Description = paste0(
        "The phylogenetic profiles of 1011 BUSCO arthropoda ortholog groups 
        across 88 species in the three domains of life. This data set contains
        a phylogenetic profile file, a multiple fasta file and a protein 
        annotation file."
    ),
    BiocVersion = "3.9",
    Genome = NA,
    SourceType = "Zip",
    SourceUrl = "https://github.com/BIONF/phyloprofile-data/blob/master/arthropoda.zip",
    SourceVersion = "v1",
    Species = NA,
    TaxonomyId = NA,
    Coordinate_1_based = NA,
    DataProvider = "Applied Bioinformatics Dept., Goethe University Frankfurt",
    Maintainer = "Vinh Tran <tran@bio.uni-frankfurt.de>",
    RDataClass = "data.frame, AAStringSet",
    DispatchClass = "RData",
    RDataPath = paste0(
        "PhyloProfileData/arthropodaPhyloProfile.RData; ",
        "PhyloProfileData/arthropodaFasta.RData; ",
        "PhyloProfileData/arthropodaDomain.RData"
    ),
    Note = NA,
    stringsAsFactors = FALSE
)

write.csv(
    file = "inst/extdata/PhyloProfileData-metadata.csv",
    rbind(preProcessedTaxonomy, ampkTorProfile, buscoArthropodaProfile), 
    row.names=FALSE
)
