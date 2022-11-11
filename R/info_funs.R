# Package info ------

#' Print package info.
#'
#' @description Prints some package info.
#' @return none, called for side effects.
#' @export

  print_info <- function() {

    cat("Skeleton of the DESeq package, which may be used as a patch
        while loading legacy R packages which rely on the genuine DESeq
        package, which is no longer supported by R 4.0 and higher.

        Currently affected: 'IMvigor210CoreBiologies' - the list will
        be updated.")

  }

# END ------
