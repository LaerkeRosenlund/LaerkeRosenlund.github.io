set.seed(123)
(mat <- matrix(as.numeric(sample(c(TRUE,FALSE),12,replace =TRUE)),3))

# Exercises:
# 1. In which order are matrix elements stored?

(vec <- 1:12)
dim(vec) <- c(3, 4)
vec

#SVAR: én kolonne af gangen, fra række 1 til nrow


#2. Use the dimension attribute to make a function that computes the sum
# of every n successive elements of a vector.
# Ex: 1 2 3 4 5 6 7 8 9 10 -> expected outcome: 3 7 11 15 19

vec1<-1:10
dim(vec1)<-c(2,5)
vec1[1,]+vec1[2,]


# 3. Convert the following matrix to a vector by using the following
# replacement rule for rows:
# (0, 0) -> 0
# (0, 1) -> 1
# (1, 1) -> 2
# (1, 0) -> NA.

mat <- matrix(0, 10, 2)
mat[c(5, 8, 9, 12, 15, 16, 17, 19)] <- 1
mat


# You have to use the following matrix to do so:
(decode <- matrix(c(0, NA, 1, 2), 2))

# Start by doing it for one row, then by using apply().
# finally replace it by a special accessor; what is the benefit?

decode[1,1]

