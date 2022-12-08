vec_4 <- (1:12)
mat_1 <- matrix(vec_4, byrow=TRUE, nrow=3)
mat_1
mat_2 <- matrix(vec_4, byrow=FALSE, nrow=3)
mat_2

my_list_1 <- list(two = 5.2, one = "five point two", three = c(1:5))
my_list_1
my_list_1[[3]]
my_list_1$one

my_vec = rep(1:3, 5)
my_vec
my_bool_vec = (my_vec == 3)
my_vec[my_bool_vec]
