library(dplyr)

# read txt files ----------------------------------------------------------
  # TEST GROUP
  xtest <- read.table(file.choose(), header = F) # selects file iterectively
  ytest <- read.table(file.choose(), header = F)
  subjtest <- read.table(file.choose(), header = F)
  
  # TRAIN GROUP
  xtrain <- read.table(file.choose(), header = F) # selects file iterectively
  ytrain <- read.table(file.choose(), header = F)
  subjtrain <- read.table(file.choose(), header = F)
  
  # FEATURES 
  features <- read.table(file.choose(), header = F)
  
  # ACTIVITIES LABELS
  activity_labels <- read.table(file.choose(), header = F)
  # Renames the activity's names: removes "_" and converts to lower case
  activity_labels[,2]<- sub("_","",tolower(activity_labels[,2]))

# Creates Test Group Data Frame -------------------------------------------
  # give name to columns based on features
  colnames(xtest) <- features[,2]
  # adds two new columns: one for subject and one for activity
  testdata <- cbind(subjtest, ytest,xtest)
  # renames the columns just added
  colnames(testdata)[1:2] <- c("subject","activities")

# Creates Train Group Data Frame ------------------------------------------
  # give name to columns based on features
  colnames(xtrain) <- features[,2]
  # adds two new columns: one for subject and one for activity
  traindata <- cbind(subjtrain, ytrain,xtrain)
  # renames the columns just added
  colnames(traindata)[1:2] <- c("subject","activities")

# Merge Test and Train Datasets -------------------------------------------

  merged_data <- rbind2(testdata,traindata)

# Arrange merged dataset --------------------------------------------------
  # arrange feature's names
  valid_column_names <- make.names(names=names(merged_data), unique=TRUE, allow_ = TRUE)
  names(merged_data) <- valid_column_names 
  # Subject > activity > features
  merged_data <- arrange(merged_data,subject,activities)

# Extract columns that have mean() or std() -------------------------------

  indx1 <- grep("mean..",colnames(merged_data))
  indx2 <- grep("std..",colnames(merged_data))
  # dataset includes also subject and activity number
  data_filt <- cbind(merged_data[,1:2],merged_data[,indx1],merged_data[,indx2])
  # Renames features so it does not include any special character and uses lower case
  colnames(data_filt) <- gsub("[[:punct:]]", "",tolower(colnames(data_filt)))


# Rename activities column values -----------------------------------------

for(k in 1:dim(activity_labels)[1]){
  data_filt$activities[which(data_filt$activities==activity_labels$V1[k])] <- activity_labels$V2[k]
}

# Calculate mean of each variable for each subject and each activity --------

total <- data.frame()
for(i in 1:length(unique(data_filt$subject))){
  for(k in 1:length(unique(data_filt$activities)) ){
    # filters data per subject and activity
    temp <- filter(data_filt, data_filt$subject == i & data_filt$activities == activity_labels$V2[k])
    # calculates the mean for each feature that was filtered, except for columns
    # subject and activity -- output is list converted to data frame
    temp2 <- as.data.frame(lapply(temp[-1:-2],mean))
    # adds subject and activity columns with its respectively values
    temp3 <- cbind(subject = i, activities = k, temp2)
    # appends to the final data frame
    total <- rbind(total, temp3)
  }
}
# Rename activities column values 
for(k in 1:dim(activity_labels)[1]){
  total$activities[which(total$activities==activity_labels$V1[k])] <- activity_labels$V2[k]
}
#removes all auxiliary variables except total dataframe, 
#which contains the output of this scrip: the mean of each feature for each subject and each activity
rm(list=setdiff(ls(), "total"))
