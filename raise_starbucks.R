library(tidyr)
library(dplyr)

# download file
download.file("https://www.raise.com/buy-starbucks-coffee-gift-cards",destfile="data/raise.csv",method="libcurl")

# read file 
raise_data <- read.csv("data/raise.csv",header=FALSE, skip = 379)

# convert to character
best_rate <- apply(head(raise_data, 1), 1, paste)

# trim variable obtain just the percentage
best_rate <- as.numeric(gsub("([0-9]+).*$", "\\1", substring(best_rate, 19, 22)))

# create a txt document with raise rates
write.table(Sys.time(), "data/raise_starbucks.txt",
            sep = "", row.names = FALSE, quote = FALSE)

# writes the table of best rate info
write.table(best_rate, "data/raise_starbucks.txt",
            sep = "", row.names = FALSE, quote = FALSE, append = TRUE)

# add other favorite credit cards

