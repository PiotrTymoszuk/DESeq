# Testing script

# Loading the ImVigor RNAseq count data -----

  R.version

  ## tools: IMvigor210CoreBiologies depends on teh legacy package DESeq

  library(IMvigor210CoreBiologies)
  library(tidyverse)

  data(cds)

  # Not run: (a lot of information)

  # str(cds)

  ## access to metadata

  cds@phenoData@data

  ## access to the counts

  cds@assayData$counts %>%
    as.data.frame %>%
    rownames_to_column('gene_no') %>%
    as_tibble

  ## access to the annotation

  cds@featureData@data

# END ------
