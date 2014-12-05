#Lines generated from makebash.py
# train set
awk ' { print substr($0, 2, 16), substr($0, 18, 16), substr($0, 34, 16), substr($0, 642, 16), substr($0, 658, 16), substr($0, 674, 16), substr($0, 1282, 16), substr($0, 1298, 16), substr($0, 1314, 16), substr($0, 1922, 16), substr($0, 1938, 16), substr($0, 1954, 16), substr($0, 2562, 16), substr($0, 2578, 16), substr($0, 2594, 16), substr($0, 3202, 16), substr($0, 3410, 16), substr($0, 3618, 16), substr($0, 3826, 16), substr($0, 4034, 16), substr($0, 4242, 16), substr($0, 4258, 16), substr($0, 4274, 16), substr($0, 5506, 16), substr($0, 5522, 16), substr($0, 5538, 16), substr($0, 6770, 16), substr($0, 6786, 16), substr($0, 6802, 16), substr($0, 8034, 16), substr($0, 8242, 16), substr($0, 8450, 16), substr($0, 8658, 16), substr($0, 50, 16), substr($0, 66, 16), substr($0, 82, 16), substr($0, 690, 16), substr($0, 706, 16), substr($0, 722, 16), substr($0, 1330, 16), substr($0, 1346, 16), substr($0, 1362, 16), substr($0, 1970, 16), substr($0, 1986, 16), substr($0, 2002, 16), substr($0, 2610, 16), substr($0, 2626, 16), substr($0, 2642, 16), substr($0, 3218, 16), substr($0, 3426, 16), substr($0, 3634, 16), substr($0, 3842, 16), substr($0, 4050, 16), substr($0, 4290, 16), substr($0, 4306, 16), substr($0, 4322, 16), substr($0, 5554, 16), substr($0, 5570, 16), substr($0, 5586, 16), substr($0, 6818, 16), substr($0, 6834, 16), substr($0, 6850, 16), substr($0, 8050, 16), substr($0, 8258, 16), substr($0, 8466, 16), substr($0, 8674, 16) }' ./X_train.txt > temptrain.txt
paste -d " " temptrain.txt subject_train.txt y_train.txt > temptrain2.txt

sed -e "s///" temptrain2.txt > temptrain.txt

unexpand temptrain.txt > temptrain2.txt

#test set
awk ' { print substr($0, 2, 16), substr($0, 18, 16), substr($0, 34, 16), substr($0, 642, 16), substr($0, 658, 16), substr($0, 674, 16), substr($0, 1282, 16), substr($0, 1298, 16), substr($0, 1314, 16), substr($0, 1922, 16), substr($0, 1938, 16), substr($0, 1954, 16), substr($0, 2562, 16), substr($0, 2578, 16), substr($0, 2594, 16), substr($0, 3202, 16), substr($0, 3410, 16), substr($0, 3618, 16), substr($0, 3826, 16), substr($0, 4034, 16), substr($0, 4242, 16), substr($0, 4258, 16), substr($0, 4274, 16), substr($0, 5506, 16), substr($0, 5522, 16), substr($0, 5538, 16), substr($0, 6770, 16), substr($0, 6786, 16), substr($0, 6802, 16), substr($0, 8034, 16), substr($0, 8242, 16), substr($0, 8450, 16), substr($0, 8658, 16), substr($0, 50, 16), substr($0, 66, 16), substr($0, 82, 16), substr($0, 690, 16), substr($0, 706, 16), substr($0, 722, 16), substr($0, 1330, 16), substr($0, 1346, 16), substr($0, 1362, 16), substr($0, 1970, 16), substr($0, 1986, 16), substr($0, 2002, 16), substr($0, 2610, 16), substr($0, 2626, 16), substr($0, 2642, 16), substr($0, 3218, 16), substr($0, 3426, 16), substr($0, 3634, 16), substr($0, 3842, 16), substr($0, 4050, 16), substr($0, 4290, 16), substr($0, 4306, 16), substr($0, 4322, 16), substr($0, 5554, 16), substr($0, 5570, 16), substr($0, 5586, 16), substr($0, 6818, 16), substr($0, 6834, 16), substr($0, 6850, 16), substr($0, 8050, 16), substr($0, 8258, 16), substr($0, 8466, 16), substr($0, 8674, 16) }' ./X_test.txt > temptest.txt
paste -d " " temptest.txt subject_test.txt y_test.txt > temptest2.txt

sed -e "s///" temptest2.txt > temptest.txt

unexpand temptest.txt > temptest2.txt

#merge
cat temptrain2.txt temptest2.txt > mergedata.txt

sed -i '1i tBodyAccmeanX	tBodyAccmeanY	tBodyAccmeanZ	tGravityAccmeanX	tGravityAccmeanY	tGravityAccmeanZ	tBodyAccJerkmeanX	tBodyAccJerkmeanY	tBodyAccJerkmeanZ	tBodyGyromeanX	tBodyGyromeanY	tBodyGyromeanZ	tBodyGyroJerkmeanX	tBodyGyroJerkmeanY	tBodyGyroJerkmeanZ	tBodyAccMagmean	tGravityAccMagmean	tBodyAccJerkMagmean	tBodyGyroMagmean	tBodyGyroJerkMagmean	fBodyAccmeanX	fBodyAccmeanY	fBodyAccmeanZ	fBodyAccJerkmeanX	fBodyAccJerkmeanY	fBodyAccJerkmeanZ	fBodyGyromeanX	fBodyGyromeanY	fBodyGyromeanZ	fBodyAccMagmean	fBodyBodyAccJerkMagmean	fBodyBodyGyroMagmean	fBodyBodyGyroJerkMagmean	tBodyAccstdX	tBodyAccstdY	tBodyAccstdZ	tGravityAccstdX	tGravityAccstdY	tGravityAccstdZ	tBodyAccJerkstdX	tBodyAccJerkstdY	tBodyAccJerkstdZ	tBodyGyrostdX	tBodyGyrostdY	tBodyGyrostdZ	tBodyGyroJerkstdX	tBodyGyroJerkstdY	tBodyGyroJerkstdZ	tBodyAccMagstd	tGravityAccMagstd	tBodyAccJerkMagstd	tBodyGyroMagstd	tBodyGyroJerkMagstd	fBodyAccstdX	fBodyAccstdY	fBodyAccstdZ	fBodyAccJerkstdX	fBodyAccJerkstdY	fBodyAccJerkstdZ	fBodyGyrostdX	fBodyGyrostdY	fBodyGyrostdZ	fBodyAccMagstd	fBodyBodyAccJerkMagstd	fBodyBodyGyroMagstd	fBodyBodyGyroJerkMagstd SubjectCode ActivityCode' mergedata.txt

sed -i 's/^ *//' mergedata.txt
