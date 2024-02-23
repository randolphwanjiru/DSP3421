#1. creating vectors with the c() function
my_vector <- c(1,2,3,4,5)

#2. Create vector with the rep() function
repeat_vector <- rep(c(1,2),each = 3)

#3. Create vector with the seq() function
seq_vector <- seq(from = 5, to = 15, by =2)

#4. Create vectors with random numbers
set.seed(123)
random_vector <- rnorm(10, mean = 0, sd =1)

#5. Create empty vector 
empty_vector <- numeric(0)

#6. Naming vector components 
named_vector <- c(10,20,30)
names(named_vector) <- c("first", "second","third")

#7. Filtering Vectors 
x <- c(1,3,5,7,9)
filter_vector <- x[x>4]

#8 Sum and product of vector components 
x <-  c(2,4,6,8)
sum_x <- sum(x)
product_x <- prod(x)

#9 Vectorized Operations
a <- c(1,2,3)
b <- c(4,5,6)
sum_ab <- a+b
diff_ab <- a*b


#10. Vector correlation
x <- c(1,2,3,4,5)
y <- c(5,4,3,2,1)
correlation <-cor(x,y)


# 11. Creating Matrices
matrix_3x3 <- matrix(1:9, nrow = 3, byrow = FALSE)

#12. Naming Matrices Rows and Columns 
rownames(matrix_3x3) <- c("Row1","Row2","Row3")
colnames(matrix_3x3) <- c("Col1","Col2","Col3")

#13. Indexing Matrices 
second_row <- matrix_3x3[2,]

#14. Adding and Deleting Rows and Columns from a matrix
matrix_4col <- cbind(matrix_3x3,c(10,11,12))
matrix_minus_2ndrow <- matrix_3x3[-2,]

#15. Applying Functions to Matries (1)
col_sums <- apply(matrix_3x3, 2, sum)

#16. Adding and multiplying Maatrices
A <- matrix(1:4, nrow = 2)
B <- matrix(rep(2,4), nrow = 2)
matrix_sum <- A + B 
matrix_products <- A %*% B


# 17. Missing Values in Vectors
z <- c(1, NA, 3, NA, 5)
z_no_na <- z
z_no_na[is.na(z)] <- mean(z, na.rm = TRUE)


#18. Filtering Matrices 
M <- matrix(1:9,nrow =3)
filtered_matrix <- M[M >5]


#19. Editing elements in matrices 
M[M >5] <- 0 
