pollutantmean <- function(directory,pollutant, id)  {

flist <- list.files(directory, full.names=TRUE)   #creates list
     dat <- data.frame()                             
     for (i in id)
          {                                
               dat <- rbind(dat, read.csv(flist[i]))
               
     }
  
   
     names(dat)
     mean(dat[, pollutant], na.rm=TRUE)      #calculates median without NA values
    
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)