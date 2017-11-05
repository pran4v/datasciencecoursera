complete <- function(directory, id = 1:332) {

filenames <- list.files(directory)
setwd(directory)
countobs <- function(filenames) sum(complete.cases(read.csv(filenames)))

nobs <- do.call(rbind,lapply(filenames[id],countobs))
setwd('..')
data.frame(id = id, nobs = nobs )
}
