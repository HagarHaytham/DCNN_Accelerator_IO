# -*- coding: utf-8 -*-
"""
Created on Sat Mar  2 23:34:46 2019

@author: hagar
"""

import cv2
img = cv2.imread('Input_Sample.bmp')
x,y,z=(img.shape)
image = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
s=""
for i in range(x):
    for j in range(y):
        if image[i][j]!=0:
            s+='z'
        else:
            s+='o'
now=s[0] 
count=1;
compressed=""
for i in range (1,len(s)):
    if s[i]==now:
        count+=1
    else:
        compressed+=str(count)+str(now)
        now=s[i]
        count=1
print(compressed)
print(len(compressed))
print(s)
print(len(s))
with open ("compimg.txt",'w') as f:
    f.write(compressed)