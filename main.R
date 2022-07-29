setwd("C:/Users/dell/Desktop/wmwa/WMWA-R/github")

source("generatexy.R")
source("wmwa.R")

############################### generate datasets ######################################

Times <- 1000
m <- 5
n <- 5
k <- 2
alphax = 0
alphay = 1
beta <- 1
distribution = "Normal"


data <- generatexy(Times = Times, m = m, n = n, k = k, alphax = alphax, 
                   alphay=alphay,beta = beta, distribution = distribution)

X <- data[["X"]]
Y <- data[["Y"]]
Z <- data[["Z"]]
m = dim(X)[2]
n = dim(Y)[2]
l = dim(Z)[2]
N = m+n+l
nperm = 1000

ALL <- cbind(X, cbind(Y, Z))
wp <- apply(ALL, 1, wmwa, m, n, N, nperm)
emp_power <- length(which(wp <= 0.05)) / Times