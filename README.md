# ReadMe.MD

This file describes the different files in the repository, how they are related and how to re execute the script so that it produces the output files.

Documentation for the dataset used can be found at http://bit.ly/1mEvWTG and the original dataset can be found at http://bit.ly/1p1sdWC

The files contained within this repo are 

a. **ReadMe.MD** - This file, it details the files in the repo and how to reexecute the R script
b. **Codebook.md** - The data codebook (a.k.a. data dictionary) that describes the variables in the datasets
c. **run_analysis.R** - The R script which takes the original source data and transforms it into the required output files
d. **MergedDataF1.txt** - A tidy dataset which contains measurements on the mean and standard deviation only for each measurement
e. **MergedDataF2.txt** - A tidy dataset which contains measurements on the mean and standard deviation only  for each measurement with descriptive variable names

In order to run the R script

1. Download the zip file from http://bit.ly/1p1sdWC and save it in your R working directory
2. Create a directory called "UCI HAR Dataset" in your R working directory
3. Unzip the zip file to the directory created in step 2, the directory should then contain the following

		25/07/2015  15:02    <DIR>          .
		25/07/2015  15:02    <DIR>          ..
		10/10/2012  15:55                80 activity_labels.txt
		11/10/2012  13:41            15,785 features.txt
		15/10/2012  15:44             2,809 features_info.txt
		10/12/2012  11:38             4,453 README.txt
		29/11/2012  18:01    <DIR>          test
		29/11/2012  18:01    <DIR>          train
					   5 File(s)         23,127 bytes
		*Please note the timestamps in your directory may differ*

4. Save the file *run_analysis.R* to the working directory
5. Open up the file *run_analysis.R* in R studio or R
6. Execute the R script, this will produce the datasets *MergedDataF1.txt* and *MergedDataF2.txt*
			   