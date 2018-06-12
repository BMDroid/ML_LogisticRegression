# ML_LogisticRegression
Implement the Logistic Regression in Matlab and apply it to two different datasets.

**Logistic Regression ** is a classical **classifier** which has been use in a lot areas and different industry fields. 

This exercise is aim to implemented the logistic regression using Matlab and use it on two different datasets.

### 1. Know your data

The datasets contain the historical data from the previous applicants who took two exam and whether he/she offered admission or not. We want use these data to build a classifier to see which applicants have the chance to be offered admission based on their two exam score.

### 2. Visualizing the data

Use the Matlab we can easily visualize the data.

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/data.png" width="50%">
</p>     

### 3. Implement the Logistic Regression 

**First,** we use the sigmoid function to get our prediction results between 0 to 1.

and the sigmoid function is as following:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/sigmoid.png" width="35%">
</p> 

and our prediction h_theta:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/h_theta.png" width="35%">
</p> 

**Second,** we define our cost function and gradient.

The cost function is:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/J.png" width="35%">
</p> 

The cost function of the logistic regression is slightly different from the cost function of linear regression which is the summation of all squared error.

Here, we use a different approach, because in the logistic regression the classifier would prediction 1 or 0, thus we would like to choose a kind of penalty rule to amplifier the error of our predictions. 

And our objective is to minimize the cost function, and we have the gradient :

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/gradient.png" width="35%">
</p> 

### 4. Training

When we train the logistic regression, we prefer to use the built-in function in Matlab: **fminunc**. It is an optimization solver that finds the minimum of an unconstrained function. 

### 5. Results

After learning the parameters, we can use the model to predict the result. And it can be showed in following fig:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/results.png" width="35%">
</p> 

---

## Regularized logistic regression

The regularized logistic regression is simply adding the regularized part to the cost function, and the regularized cost function is:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/J_r.png" width="35%">
</p> 

But for the gradient part, we should not regularized the theta0. 

Thus the gradient are:

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/g_r_0.png" width="35%">
</p> 

<p align="center">  <img src="https://github.com/BMDroid/ML_LogisticRegression/blob/master/figs/g_r_1.png" width="35%">
</p> 