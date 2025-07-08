# import numpy as np
from scipy import integrate

def function(x):
    f=(2*x-3)**3
    return f

result=integrate.quad(function,1,3)
print(result)    