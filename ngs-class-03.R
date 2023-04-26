
# data frame

age <- c(23, 21, 24, 20)
name <- c('A', 'D', 'C', 'E')
course <- c('CS', 'BIO', 'CS', 'BIO')

student_info <- data.frame(Age = age, Name = name, Course = course)

# indexing data frame

student_info[3,1] # age = 24
student_info[3,'Age']


# special function for vectors 
rep(c('CS','BIO'), times=2) # repeat inputs
# [1] "CS"  "BIO" "CS"  "BIO"

rep(c('CS', 'BIO'), each = 2)
# [1] "CS"  "CS"  "BIO" "BIO"

rep(c('CS', 'BIO'), length.out = 5)

rep(c('CS','BIO'),times= c(2,2))
# [1] "CS"  "CS"  "BIO" "BIO"

rep(c('CS','BIO'),times= c(3,1))
# [1] "CS"  "CS"  "CS"  "BIO"

seq(from = 0, to = 16, by = 0.05)


log2count_limit <- seq(from=0, to=16, length.out=10000)


ge_list <- list()
set.seed(187)
for (i in 1:1000){
	ge_list[[i]] <- sample(log2count_limit, 10, replace=TRUE)
}

ge_df <- do.call('rbind', ge_list)






