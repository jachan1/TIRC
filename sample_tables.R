source_https <- function(url, ...) {
    # load package
    require(RCurl)
    
    # parse and evaluate each .R script
    tmp <- sapply(c(url, ...), function(u) {
        eval(parse(text = getURL(u, followlocation = TRUE, cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))), envir = .GlobalEnv)
    })
    message(sprintf("%s loaded into global environment", paste(substr(names(tmp), max(grep("/", strsplit(names(tmp), "")[[1]]))+1, nchar(names(tmp))), collapse=", ")))
}

# Example
source_https("https://raw.githubusercontent.com/jachan1/TIRC/master/TIRC.R")

tab_data <- data_frame(rgrp=c("Early", "Early", "Late"),
                       rnms = c("A", "B", "C"), 
                       Red=c("10 (40%)", "10 (40%)", "5 (20%)"), 
                       Green=c("20 (50%)", "16 (40%)", "4 (10%)"))

TIRC(tab_data, rnames=F)
TIRC(tab_data, rnames="rnms")
TIRC(tab_data, rnames="rnms", rgroup_col = "rgrp")

tab_data2 <- data_frame(col=sample(c("Red", "Green"), 100, replace=T), 
                        shape=sample(c("Round", "Square"), 100, replace=T))

tab <- with(tab_data2, table(col, shape))
TIRC(tab)
