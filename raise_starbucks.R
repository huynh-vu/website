# doanload file
download.file("https://www.raise.com/buy-starbucks-coffee-gift-cards",destfile="data/raise.csv",method="libcurl")

# read file 
raise_data <- read.csv("data/raise.csv",header=TRUE, skip = 376)

# print file
str(raise_data)

# set counter
counter <- 0

# print every line that has 
best_rate <- head(raise_data, 5)

# writes the table of best rate info
write.table(best_rate, "data/raise_starbucks.txt",
            sep = "", row.names = FALSE, quote = FALSE)



