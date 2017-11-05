pollutantmean <- function(directory, pollutant, id = 1:332) {

filenames <- list.files(directory)
setwd(directory)
idsubset <- do.call(rbind,lapply(filenames[id],read.csv))
setwd('..')
mean(idsubset[,pollutant],na.rm=TRUE)

}
