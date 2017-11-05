corr <- function(directory, threshold = 0) {

nobs <- complete(directory)

filenames <- list.files(directory)

id <- subset(nobs, nobs > threshold)

id <- id[,1]

setwd(directory)
dataretrieve <- function(fname) cor(read.csv(fname)[,"sulfate"],read.csv(fname)[,"nitrate"], use='complete.obs')

corrdata <- as.vector((do.call(cbind,lapply(filenames[id],dataretrieve))))

setwd('..')
return(corrdata)

}
