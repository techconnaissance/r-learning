#set directory
setwd("C:/POC/My R")

#import from file
studs <- read.table(
                  file = "Tab-Delimited.txt",
                  header = TRUE,
                  sep = "\t",
                  quote = "\""
                )

head(studs)
#to install package dplyr for transformation - 1 time/environment

#install.packages("dplyr")

#packages are installed in C:\Users\XXXX\AppData\Local\Temp\Rtmpgz1CH1\downloaded_packages

#use package for this project
library(dplyr)


#transform - 1

temp <- select(
                .data = studs,
                Course,
                Year,
                Rank
               )

temp <- filter(
                .data = temp,
                Course == "ECE"
              )

temp <- mutate(
                .data = temp,
                total = Rank + 20
)

temp <- group_by(
                .data = temp,
                Year
)

head(temp)

temp <- summarise(
                .data = temp,
                Avg.total = mean(total)
)

temp <- arrange(
                .data = temp,
                desc( Avg.total)
)

head(temp)

total <- as.data.frame(temp)

#Transform 1 - End

#Transform 2 - Start using PIPE functions %>%

total1 <- studs %>%
          select (Course, Year, Rank) %>%
          filter (Course == "ECE") %>%
          mutate(total = Rank + 20) %>%
          group_by(Year) %>%
          summarise(Avg.total = mean(total)) %>%
          arrange(desc(Avg.total)) %>%
          as.data.frame()

total1         
#Transform 2 - End



#export
write.csv(
  x = total,
  file = "manuplated", 
  row.names = FALSE
)

