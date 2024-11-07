## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)

## --------------------------------------------------------------------------
## ---- message = FALSE------------------------------------------------------
library(TxDb.Hsapiens.UCSC.hg19.knownGene)


input <- function(inputfile) {
   sgvc_pred3 <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
	pdf(outputfile)
   plotVariants(sgvc_pred3, eventID = 1, color_novel = "red")
}

