library(reshape2)

har.zip.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
har.zip.name <- 'Dataset.zip'
har.data.dir <- 'UCI HAR Dataset'

# Downlaod helper
curlMe <- function(url, filename) {
     if(!file.exists(filename)) {
          download.file(url, destfile=filename, method="curl")
     }
     filename
}

# Download and Unzip Data
if (!file.exists(har.data.dir)) {
     curlMe(har.zip.url,har.zip.name)
     unzip(har.zip.name,overwrite=FALSE)
}

# Load feature names
features <- read.table('UCI HAR Dataset/features.txt');

# Load the activity labels
activity.labels <- read.table('UCI HAR Dataset/activity_labels.txt')

# Loads, labels and subsets HAR variable data
loadLabelSubset <- function(url) {
     data <- read.table(url,header=F,col.names=as.array(features$V2))
     data <- data[,grep('mean\\(\\)|std\\(\\)', features$V2)]
     data
}
# Loads and labels HAR subject and activity data
loadAndLabel <- function(url,label) {
     data <- read.table(url,header=F,col.names=c(label))
     data
}
# Load X data
har.test.X <- loadLabelSubset('UCI HAR Dataset/test/X_test.txt')
har.train.X <- loadLabelSubset('UCI HAR Dataset/train/X_train.txt')
# Combine X data
har.X <- rbind(har.test.X,har.train.X)

# Load y data
har.test.y <- loadAndLabel('UCI HAR Dataset/test/y_test.txt','activity')
har.train.y <- loadAndLabel('UCI HAR Dataset/train/y_train.txt','activity')
# Combine y data
har.y <- rbind(har.test.y,har.train.y)

# Load subject data
har.test.s <- loadAndLabel('UCI HAR Dataset/test/subject_test.txt','subject')
har.train.s <- loadAndLabel('UCI HAR Dataset/train/subject_train.txt','subject')
# Combine y data
har.s <- rbind(har.test.s,har.train.s)

# Combine X and y
har.all <- cbind(har.s,har.y,har.X)

# Label Activity
har.all$activity <- activity.labels[har.all$activity,]$V2

# Melt data by subject and activity
har.melt <- melt(har.all, id = c("subject", "activity"))

# Summarize data by mean
har.means <- dcast(har.melt, subject + activity ~ variable, mean)

# Output full dataset
# write.table(har.all,'har-tidy.txt')

# Output summary Data
write.table(har.means,'har-tidy-means.txt')
