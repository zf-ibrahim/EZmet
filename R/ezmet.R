 

date <- function(start, end) {
  
         
    
        date = seq(as.POSIXct(paste(start), tz = "GMT"), 
                 as.POSIXct(paste(end), tz = "GMT"), by="hour")
        
        date = data.frame(date)
        
        colnames(date)= ("date")
        
   

  
  return(print(date))
}
