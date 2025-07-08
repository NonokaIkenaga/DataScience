import numpy as np
import matplotlib.pyplot as plt
x_data=[0,0.2*np.pi,0.4*np.pi,0.6*np.pi,0.8*np.pi,1.0*np.pi]
y_data=[np.sin(0),np.sin(0.2*np.pi),np.sin(0.4*np.pi),np.sin(0.6*np.pi),np.sin(0.8*np.pi),np.sin(1.0*np.pi)]
plt.plot(x_data,y_data,marker="o",color="b")
plt.show()