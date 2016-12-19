

complete <- function(directory,id=1:332)  
{
     flist <- list.files(directory, full.names=TRUE)   #creates list
     nobs=numeric(length(id))
     cnt=0
               for (i in id)
               {                                
               cnt=cnt+1
                    fread<-read.csv(flist[i])
               #NROW(na.omit(fread))
               nobs[cnt]<-sum(complete.cases(fread))
               #dat<-c(flist[i] ,length(fread))
               }
    data.frame(id,nobs)  
 }



