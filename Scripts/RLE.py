# -*- coding: utf-8 -*-
"""
Created on Wed Feb 27 21:34:23 2019

@author: hagar
"""

import numpy as np
import cv2
img = cv2.imread('Input_Sample.bmp')
x,y,z=(img.shape)
image = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
s=""
for i in range(x):
    for j in range(y):
        if image[i][j]!=0:
            s+='1'
        else:
            s+=str(image[i][j])
now=int(s[0]) 
count=1;
compressed=""
for i in range (1,len(s)):
    if int(s[i])==now:
        count+=1
    else:
        compressed+=str(now)+str(count)+'-'
        now=int(s[i])
        count=1
print(compressed)
print(len(compressed))
print(s)
print(len(s))

#cv2.imshow('img',img)
#cv2.waitKey(0)
#cv2.destroyAllWindows()