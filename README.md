# DESeq
Skeleton of the legacy DESeq package: a patch for loading packages depending on DESeq

# Purpose and disclaimer

At the moment (2022), there are still several development R packages depending on the meanwhile retired package `DESeq`, which got replaced by a more modern `DESeq2` [tool](https://github.com/mikelove/DESeq2). One may downgrade R to still use them or - which comes at cost of efficiency, safety and compatibility. Alternatively, you ma load the `DESeq` package skeleton provided here in order get at least some functionalities of packages of interest depening on `DESeq`.

At this place, we would like to stress, that the development package provided here does not share any code with the genuine package `DESeq` or the replacement package `DESeq2`. It may not be used for analyses of any data including RNASeq datasets.

# Installation

The easiest way to install is to use `devtools`:

```r

devtools::install_github('PiotrTymoszuk/DESeq')

```

# Usage example

Here, the package `IMvigor210CoreBiologies` content which depends on `DESeq` while loading the `cds` data set is accessed:

```r

## working with R version 4.2.0: the DESeq package won't go with it

 R.version
 
 platform       x86_64-w64-mingw32               
 arch           x86_64                           
 os             mingw32                          
 crt            ucrt                             
 system         x86_64, mingw32                  
 status                                          
 major          4                                
 minor          2.0                              
 year           2022                             
 month          04                               
 day            22                               
 svn rev        82229                            
 language       R                                
 version.string R version 4.2.0 (2022-04-22 ucrt)
 nickname       Vigorous Calisthenics

 ## tools: IMvigor210CoreBiologies depends on the legacy package DESeq
 ## yet the critical 'cds' data set opens without errors!

  library(IMvigor210CoreBiologies)
  library(tidyverse)

  data(cds)
  
 ## and its slots may be acccessed
 
 cds@phenoData@data[1:5, 1:5]
 
                Best Confirmed Overall Response binaryResponse Enrollment IC IC Level TC Level
SAMf2ce197162ce                              NE           <NA>           IC1      IC1      TC1
SAM698d8d76b934                              NE           <NA>           IC1      IC1      TC0
SAMc1b27bc16435                              PR          CR/PR           IC2     IC2+      TC0
SAM85e41e7f33f9                              NE           <NA>           IC1      IC1      TC1
SAMf275eb859a39                              PR          CR/PR           IC1      IC1      TC0

```
