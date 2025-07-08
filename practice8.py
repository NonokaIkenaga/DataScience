from sklearn.datasets import load_breast_cancer
import pandas as pd
import matplotlib.pyplot as plt

# read data
dataset=load_breast_cancer()
#print(cancer)
df=pd.DataFrame(dataset.data,columns=dataset.feature_names)
df['class']=dataset.target_names[dataset.target]
df.head()

from sklearn.model_selection import train_test_split
X=dataset.data
Y=dataset.target
X_train,X_test,Y_train,Y_test=train_test_split(X,Y,random_state=0)
from sklearn import tree
model=tree.DecisionTreeClassifier(max_depth=3)
model.fit(X_train,Y_train)

from sklearn import metrics
predict_train=model.predict(X_train)
ac_score=metrics.accuracy_score(Y_train,predict_train)
print('train score: {:.2f}%'.format(ac_score*100))

predict_train=model.predict(X_test)
ac_score=metrics.accuracy_score(Y_test,predict_train)
print('test score: {:.2f}%'.format(ac_score*100))