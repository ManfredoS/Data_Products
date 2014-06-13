Data_Products
=============
* This folder contains the files and explanations for the shiny "height prediction" app 
for the courcera data science specialization course
* Also included the slidify files

### Motivation of the app:

The R-package "HistData" contains the data set "PearsonLee" which includes the height measurements (in inches) on parents and their children, ordered by gender.
This data set is used in the following to model (predict) the height of such a child (offspring) using the expected gender of the child, the gender of one parent (you in this case) and your height in inches.

### Use of the app:

The prediction app is divided into two main folds. 

1) On the left fold you are required to specify your size in inches. If you do not know your size in inches: 

your size in inches = your size in centemeters / 2.54 

(you can also check on the right fold, where your specifications are returned in inches and centimeters). After specifying your size, choose your gender (female/male) and the expected gender (female/male) of your "planned" offspring :-). All specified you can push the submit button, on order to obtain the prediction.

2) In the right fold you get some hopefully clarifying explanations on the app and in the center your previous specifications are returned (gender and size in inches and centimeters). Please check here, if your size specifications. In the following you will obtain the predicted size of your offspring at adult age in inches and centimeters.

### Prediction engine:

The app is based on a multiple linear regression model using the R "lm" command. Regressors are gender and size in inches, which are the two major explanatory variables within the "PearsonLee" data set.

## Happy prediction :-)