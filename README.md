# FDA_Project

# Problem Statement
<p>According to the World Health Organization (WHO) stroke is the 2nd leading cause of death globally, responsible for approximately 11% of total deaths. This dataset is used to predict whether a patient is likely to get stroke based on the input parameters like gender, age, various diseases, and smoking status. Each row in the data provides relavant information about the patient.</p>

## Dataset
<p>The dataset used is the [Stroke-Prediction](https://www.kaggle.com/fedesoriano/stroke-prediction-dataset) from Kaggle.</p>
<p>The class labels are:
<ol>
<li> id: unique identifier</li>
<li> gender: "Male" and "Female"</li>
<li> age: age of the patient</li>
<li> hypertension: 0 if the patient doesn't have hypertension, 1 if the patient has hypertension</li>
<li> heart_disease: 0 if the patient doesn't have any heart diseases, 1 if the patient has a heart disease</li>
<li> ever_married: "No" or "Yes"</li>
<li> work_type: "children", "Govt_jov", "Never_worked", "Private" or "Self-employed"</li>
<li> Residence_type: "Rural" or "Urban"</li>
<li> avg_glucose_level: average glucose level in blood</li>
<li> bmi: body mass index</li>
<li> smoking_status: "formerly smoked", "never smoked", "smokes" or "Unknown"*</li>
</ol>
<br> *Note: "Unknown" in smoking_status means that the information is unavailable for this patient <br>
Target Variable: stroke is 1 if the patient had a stroke or 0 if the patient doesnt have a stroke.</p>

## Model(s) Used
#### Logistic regression 
<p>It is a process of modeling the probability of a discrete outcome given an input variable. The most common logistic regression models a binary outcome; something that can take two values such as true/false, yes/no, and so on. Multinomial logistic regression can model scenarios where there are more than two possible discrete outcomes. Logistic regression is a useful analysis method for classification problems, where you are trying to determine if a new sample fits best into a category. </p>
<p>The logistic function is of the form: - 
![Logistic regression equation](readme_images\logistic_reg_equ.png)
where μ is a location parameter (the midpoint of the curve, where μ = 1/2 and s is a scale parameter.</p>

#### Decision Tree
<p>A decision tree is a flowchart-like structure in which each internal node represents a "test" on an attribute, each branch represents the outcome of the test, and each leaf node represents a class label (decision taken after computing all attributes). The paths from root to leaf represent classification rules.</p>
<p>In decision analysis, a decision tree and the closely related influence diagram are used as a visual and analytical decision support tool, where the expected values (or expected utility) of competing alternatives are calculated.</p>
A decision tree consists of three types of nodes:
<ul>
	<li>Decision nodes – typically represented by squares</li>
	<li>Chance nodes – typically represented by circles</li>
	<li>End nodes – typically represented by triangles</li>
</ul>
<p>Commonly a decision tree is drawn using flowchart symbols as it is easier for many to read and understand. Note there is a conceptual error in the "Proceed" calculation of the tree shown below; the error relates to the calculation of "costs" awarded in a legal action.</p>
![Decision tree example diagram](..\readme_images\decision_tree_eg_diagram.png)

#### Random Forest
<p>Random forest is a Supervised Machine Learning Algorithm that is used widely in Classification and Regression problems. It builds decision trees on different samples and takes their majority vote for classification and average in case of regression.</p>
<p>One of the most important features of the Random Forest Algorithm is that it can handle the data set containing continuous variables as in the case of regression and categorical variables as in the case of classification. It performs better results for classification problems.</p>
<p>Before understanding the working of the random forest we must look into the ensemble technique. Ensemble simply means combining multiple models. Thus a collection of models is used to make predictions rather than an individual model. One of this is bagging: It creates a different training subset from sample training data with replacement & the final output is based on majority voting</p>
![Bagging example](..\readme_images\random_forest_bagging.png)
<p>The procedure: -
<ul>
	<li>Step 1: In Random forest n number of random records are taken from the data set having k number of records.</li>
	<li>Step 2: Individual decision trees are constructed for each sample.</li>
	<li>Step 3: Each decision tree will generate an output.</li>
	<li>Step 4: Final output is considered based on Majority Voting or Averaging for Classification and regression respectively.</li>
</ul>

#### AdaBoost
<p>AdaBoost is an ensemble learning method (also known as “meta-learning”) which was initially created to increase the efficiency of binary classifiers. AdaBoost uses an iterative approach to learn from the mistakes of weak classifiers, and turn them into strong ones. It uses boosting: It combines weak learners into strong learners by creating sequential models such that the final model has the highest accuracy.</p>
![Boosting example](..\readme_images\adaboost_eg_boosting.png)
<p>How the Adaboost works: -
<ul>
	<li>Step 1: A weak classifier (e.g. a decision stump) is made on top of the training data based on the weighted samples. Here, the weights of each sample indicate how important it is to be correctly classified. Initially, for the first stump, we give all the samples equal weights.</li>
	<li>Step 2: We create a decision stump for each variable and see how well each stump classifies samples to their target classes. For example, in the diagram below we check for Age, Eating Junk Food, and Exercise. We'd look at how many samples are correctly or incorrectly classified as Fit or Unfit for each individual stump.</li>
	<li>Step 3: More weight is assigned to the incorrectly classified samples so that they're classified correctly in the next decision stump. Weight is also assigned to each classifier based on the accuracy of the classifier, which means high accuracy = high weight!</li>
	<li>Step 4: Reiterate from Step 2 until all the data points have been correctly classified, or the maximum iteration level has been reached.</li>
</ul>

#### K - Nearest Neighbours
<p>K-Nearest Neighbour is one of the simplest Machine Learning algorithms based on Supervised Learning technique.
K-NN algorithm assumes the similarity between the new case/data and available cases and put the new case into the category that is most similar to the available categories.</p>
<p>K-NN algorithm stores all the available data and classifies a new data point based on the similarity. This means when new data appears then it can be easily classified into a well suite category by using K- NN algorithm.
K-NN algorithm can be used for Regression as well as for Classification but mostly it is used for the Classification problems.</p>
<p>K-NN is a non-parametric algorithm, which means it does not make any assumption on underlying data.
It is also called a lazy learner algorithm because it does not learn from the training set immediately instead it stores the dataset and at the time of classification, it performs an action on the dataset.</p>
<p>KNN algorithm at the training phase just stores the dataset and when it gets new data, then it classifies that data into a category that is much similar to the new data.</p>
![KNN graph](..\readme_images\KNN_graph.png)
<p>The K-NN working can be explained on the basis of the below algorithm: -
<ul>
	<li>Step-1: Select the number K of the neighbors.</li>
	<li>Step-2: Calculate the Euclidean distance of K number of neighbors.</li>
	<li>Step-3: Take the K nearest neighbors as per the calculated Euclidean distance.</li>
	<li>Step-4: Among these k neighbors, count the number of the data points in each category.</li>
	<li>Step-5: Assign the new data points to that category for which the number of the neighbor is maximum.</li>
</ul></p>

#### Support Vector Machine
<p>Support Vector Machine or SVM is one of the most popular Supervised Learning algorithms, which is used for Classification as well as Regression problems. However, primarily, it is used for Classification problems in Machine Learning.</p>
<p>The goal of the SVM algorithm is to create the best line or decision boundary that can segregate n-dimensional space into classes so that we can easily put the new data point in the correct category in the future. This best decision boundary is called a hyperplane.</p>
<p>SVM chooses the extreme points/vectors that help in creating the hyperplane. These extreme cases are called as support vectors, and hence algorithm is termed as Support Vector Machine.</p>
<p>Hyperplanes are decision boundaries that help classify the data points. Data points falling on either side of the hyperplane can be attributed to different classes. Also, the dimension of the hyperplane depends upon the number of features. If the number of input features is 2, then the hyperplane is just a line. If the number of input features is 3, then the hyperplane becomes a two-dimensional plane. It becomes difficult to imagine when the number of features exceeds 3.</p>
<p>Support vectors are data points that are closer to the hyperplane and influence the position and orientation of the hyperplane. Using these support vectors, we maximize the margin of the classifier. Deleting the support vectors will change the position of the hyperplane. These are the points that help us build our SVM.</p>
![support vectors](..\readme_images\SVM_support vectors.png)
