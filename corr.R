corr <- function(directory,threshold=0)
     {
     setwd("h:/RStuff/specdata/specdata")
     flist <- list.files(directory)   #creates list
     cc<-vector()
     dat <- vector(mode = "numeric", length = 0)
     #return(flist)               
 
          for (i in 1:length(flist)) 
         {                                
           
             
                temp <- read.csv(flist[i],header=TRUE)
                temp <-temp[complete.cases(temp),]
                r<-nrow(temp)
                if(r>threshold)
                    {
                    dat<-c(dat,cor(temp$nitrate,temp$sulfate))
                    }
            
          }
     
     return(dat)
}

cr <- corr("specdata", 150)
head(cr)
summary(cr)
cr <- corr("specdata", 400)
head(cr)
summary(cr)
cr <- corr("specdata", 5000)
head(cr)
summary(cr)
cr <- corr("specdata")
head(cr)
summary(cr)