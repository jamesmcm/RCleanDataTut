meaninds=[1,2,3,41,42,43,81,82,83,121,122,123,161,162,163,201,214,227,240,253,266,267,268,345,346,347,424,425,426,503,516,529,542]

meansnames=["tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tGravityAcc-mean()-X","tGravityAcc-mean()-Y","tGravityAcc-mean()-Z","tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z","tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z","tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z","tBodyAccMag-mean()","tGravityAccMag-mean()","tBodyAccJerkMag-mean()","tBodyGyroMag-mean()","tBodyGyroJerkMag-mean()","fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z","fBodyGyro-mean()-X","fBodyGyro-mean()-Y","fBodyGyro-mean()-Z","fBodyAccMag-mean()","fBodyBodyAccJerkMag-mean()","fBodyBodyGyroMag-mean()","fBodyBodyGyroJerkMag-mean()"]

stdinds=[4,5,6,44,45,46,84,85,86,124,125,126,164,165,166,202,215,228,241,254,269,270,271,348,349,350,427,428,429,504,517,530,543]

stdnames=["tBodyAcc-std()-X","tBodyAcc-std()-Y","tBodyAcc-std()-Z","tGravityAcc-std()-X","tGravityAcc-std()-Y","tGravityAcc-std()-Z","tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z","tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-std()","tGravityAccMag-std()","tBodyAccJerkMag-std()","tBodyGyroMag-std()","tBodyGyroJerkMag-std()","fBodyAcc-std()-X","fBodyAcc-std()-Y","fBodyAcc-std()-Z","fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z","fBodyAccMag-std()","fBodyBodyAccJerkMag-std()","fBodyBodyGyroMag-std()","fBodyBodyGyroJerkMag-std()"]

mystring="print "

def mtest(x):
    if x>1:
        return 1
    else:
        return 0

for m in meaninds:
    mystring+="substr($0, "+str(2+((m-1)*16) )+", 16), "

for s in stdinds:
    mystring+="substr($0, "+str(2+((s-1)*16) )+", 16), "

#awk -i '{print $0, FILENAME}' 
#sed -e "s/^M//" temptrain2.txt > temptrain3.txt
#paste -d " " X_train.txt subject_train.txt y_train.txt > temptrain.txt
#unexpand temptrain.txt > temptrain2.txt
print "awk ' { "+ mystring[:-2] +  " }' ./X_train.txt > temptrain.txt"

ms2=""

ms2="\t".join(meansnames+stdnames)
print "sed -i '1i" + ms2+"'"

#print len(stdinds)
#print len(stdnames)

#print len(meaninds)
#print len(meansnames)




