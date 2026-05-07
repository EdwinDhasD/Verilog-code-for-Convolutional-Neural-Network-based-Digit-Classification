# -*- coding: utf-8 -*-
"""
Created on Mon Oct  7 15:43:59 2024

@author: edwin
"""

import numpy as np
import matplotlib.pyplot as plt
pat1='./data/conv1_'
pat2='./data/conv2_'
pat3='./data/conv3_'

for j in range(8):
    with open(pat1+str(j+1)+'.txt','r') as file:
        num=file.read().strip().split('\n') 
        num1=[int(num[i]) for i in range(len(num))]
    num2=np.array(num1)
    image = num2.reshape((28, 28));
    plt.subplot(2,4,j+1)
    plt.imshow(image,cmap='gray')
    plt.axis("off")
    plt.suptitle('Convolution-1 output', fontsize=16)
plt.show()

for j in range(8):
    with open(pat2+str(j+1)+'.txt','r') as file:
        num=file.read().strip().split('\n') 
        num1=[int(num[i]) for i in range(len(num))]
    num2=np.array(num1)
    image = num2.reshape((14, 14));
    plt.subplot(4,4,j+1)
    plt.imshow(image,cmap='gray')
    plt.axis("off")
    plt.suptitle('Convolution-2 output', fontsize=16)
  
plt.show()
for j in range(16):
    with open(pat3+str(j+1)+'.txt','r') as file:
        num=file.read().strip().split('\n') 
        num1=[int(num[i]) for i in range(len(num))]
    num2=np.array(num1)
    image = num2.reshape((7, 7));
    plt.subplot(4,4,j+1)
    plt.imshow(image,cmap='gray')
    plt.axis("off")
    plt.suptitle('Convolution-3 output', fontsize=16)
    

    