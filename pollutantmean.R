# pollutantmean.R
 
pollutantmean <- function(id, directory, summarize = FALSE) {

  
  id3 <- formatC(id, width=3, flag="0")
  filename <- paste(directory, '\\', id3, '.csv', sep='')
  
  data <- read.csv(file=filename)
  
  if(summarize) {
    print(summary(data))
  }
  
  data
}
