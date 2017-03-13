library(tidyr)
library(dplyr)

# download file
download.file("https://www.raise.com/buy-starbucks-coffee-gift-cards",destfile="data/raise.csv",method="libcurl")

# read file 
raise_data <- read.csv("data/raise.csv",header=FALSE, skip = 379)

# print file
str(raise_data)

best_rate <- head(raise_data)

# create a txt document with raise rates
write.table(Sys.time(), "data/raise_starbucks.txt",
            sep = "", row.names = FALSE, quote = FALSE)

# writes the table of best rate info
write.table(best_rate, "data/raise_starbucks.txt",
            sep = "", row.names = FALSE, quote = FALSE, append = TRUE)

# add other favorite credit cards

