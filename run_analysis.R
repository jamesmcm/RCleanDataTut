#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and
#standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set
#with the average of each variable for each activity and each subject.


library(sqldf)

replacelabel <- function(x){
  return( as.character(alabels[alabels$V1==x,"V2"][[1]]))[[1]]
}

system("./cleandata.sh")
mdf <- read.table("./mergedata.txt", header=T)
alabels<- read.table("./activity_labels.txt")
mdf$Activity <- lapply(mdf$ActivityCode,replacelabel)
mdf$Activity <- unlist(mdf$Activity, recursive=FALSE)

cn <- names(mdf)

mystring="select SubjectCode, ActivityCode, Activity,"
ln <- nchar(mystring)
for (i in 1:(length(cn)-3)) {
  mystring <- paste(mystring," avg(",cn[i], "),", sep = "")
}


mystring <- substr(mystring,1,nchar(mystring)-1)
                   
foutput<- sqldf(paste(mystring, " from mdf group by SubjectCode, ActivityCode order by SubjectCode, ActivityCode", sep = ""))
#write.csv(foutput,"tidy.txt",quote=F)
write.table(foutput,"tidy.txt",row.name=F)
