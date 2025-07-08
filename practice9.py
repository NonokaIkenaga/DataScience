from sklearn.datasets import load_breast_cancer
import pandas as pd
import matplotlib.pyplot as plt

# read data
dataset=load_breast_cancer()
#print(cancer)
df=pd.DataFrame(dataset.data,columns=dataset.feature_names)
df['species']=dataset.target_names[dataset.target]
df.head()

from sklearn.model_selection import train_test_split
X=dataset.data
Y=dataset.target
X_train,X_test,Y_train,Y_test=train_test_split(X,Y,random_state=0)
from sklearn import svm
model=svm.SVC(kernel="rbf",gamma=0.001)
model.fit(X_train,Y_train)

from sklearn.metrics import accuracy_score
pred=model.predict(X_test)
score=accuracy_score(Y_test,pred)
print("test score=",score*100,"%")