library(hdm)
data(BLP)
tab2 <- c(3.393, 6.711, 8.728, 13.074, 68.597)
stopifnot(all(abs(quantile(BLP$price, c(0,0.25,0.5,0.75,1)) - tab2 +
                    11.761)<0.005))
BLP$price <- BLP$price + 11.761
