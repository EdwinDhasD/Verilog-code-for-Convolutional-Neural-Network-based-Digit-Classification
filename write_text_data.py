import cv2
import matplotlib.pyplot as plt
import numpy as np


xb='./DigitDataset/6/image5025.png'


xa='./data/data.txt'

x=cv2.imread(xb)
x1=x;
y=cv2.cvtColor(x,cv2.COLOR_BGR2GRAY)
z=np.array(y)
plt.imshow(z,cmap='gray')
plt.title('Original')
plt.axis('off')
vector = z.flatten()
np.savetxt(xa, vector, fmt='%d')
print('Successfully converted to text file')