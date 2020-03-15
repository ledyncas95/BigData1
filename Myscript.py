# Import necessary modules 
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier 
from sklearn.model_selection import train_test_split  

iris = datasets.load_iris()

X = iris.data
y = iris.target
#Particion 80/20
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20) 
knn = KNeighborsClassifier(n_neighbors=7)  
knn = KNeighborsClassifier(n_neighbors=6)
knn.fit(X_train,y_train)

print("Resultado de usar Knn sobre dataset iris :")
print("Accuracy :",knn.score(X_test,y_test))
