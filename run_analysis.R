library(dplyr)
library(reshape2)
y_test <- read.table('y_test.txt') # read test dataset with activity name
x_test <- read.table('X_test.txt') # read test dataset for each measurement
test_subject <- read.table('subject_test.txt')
y_train <- read.table('y_train.txt') # read train dataset with activity name
x_train <- read.table('X_train.txt') # read train dataset for each measurement
train_subject <- read.table('subject_train.txt')
variable_y <- read.table('features.txt') # read each varibale name
name_var <- as.character(variable_y$V2) # extract 561 variable name
colnames(x_test) <- name_var # rename each column in original test data
colnames(x_train) <- name_var # rename each column in original train data
y_test <- y_test %>% mutate(Activity = ifelse(y_test$V1 == 1, 'walking', 
                            ifelse(y_test$V1 == 2, 'walking_upstairs',
                            ifelse(y_test$V1 == 3, 'walking_downstairs',
                            ifelse(y_test$V1 == 4, 'sitting', 
                            ifelse(y_test$V1 == 5, 'standing', 'laying')))))) 
       # assign different activities based on activity code 1-6, create Activity variable
y_train <- y_train %>% mutate(Activity = ifelse(y_train$V1 == 1, 'walking', 
                              ifelse(y_train$V1 == 2, 'walking_upstairs',
                              ifelse(y_train$V1 == 3, 'walking_downstairs',
                              ifelse(y_train$V1 == 4, 'sitting', 
                              ifelse(y_train$V1 == 5, 'standing', 'laying')))))) 
       # assign different activities based on activity code 1-6, create Activity variable
all_comb <- rbind(x_test, x_train) # merge train and test dataset together
all_comb_act <- rbind(y_test, y_train)
all_comb_subject <- rbind(test_subject, train_subject)
names(all_comb_subject)[1] <- 'Subject'
all_comb <- all_comb[, !duplicated(colnames(all_comb))] # clean up duplicated column names
all_comb_mean <- select(all_comb, grep('mean()[^Freq]', names(all_comb), value = TRUE)) # subset columns that contains mean() measurement
all_comb_std <- select(all_comb, grep('std()', names(all_comb), value = TRUE)) # subset columns that contains std() measurement
result <- cbind(all_comb_subject, all_comb_act, all_comb_mean, all_comb_std) # combine subject, activity, mean and std all together to get a tidy data
names(result)[2] <- 'Activity code' # rename column 1


result_reshape <- melt(result, id = c('Subject', 'Activity'), measure.vars = colnames(result)[4:69]) # melt dataframe to be categorized by subject and acitivity
result_avg <- dcast(result_reshape, Subject + Activity ~ variable, mean) # cast dataframe, calculate mean of each variable by grouping subject and associated activity


