#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Mar 12 16:29:48 2019

@author: haneen
"""

#this code reads json file and compresses it v1.0

import json
#from pprint import pprint


#reading json file
with open('CNN_info_Sample.json') as f:
    data = json.load(f)

layers = len(data['layers'])
layerList = list()

#if layers > 3: 
#    print('Invalid number of layers ' + str(len(data['layers'])))
#    exit()

prev_out_depth = None
xs = list()
ys = list()
types = list()
depths = list()

for i in range(layers):
    layer = data['layers'][i]
    types.append(layer['layer_type'])
    xs.append(layer['sx'])
    ys.append(layer['sy'])
    
    if i != 0:
    if depths[i-1] != layer[i]['input_depth']:
        print('out_depth != in_depth')
    else:
        depths[i] = layer[i]['out_depths']
            
for i in range(layers):
    print('layer ', i, ' type ', types[i], ' sx ',\
          xs[i], ' sy ', ys[i], ' out_depth ', depths[i])
    
bits = str()

#accessing each layer
for i in range(layers):
    
    print(i)
#    if i != 0 | i != 1:
#        if data['layers'][i]['in_depth'] != prev_out_depth:
#            print('out_depth != in_depth')
    print('depth comparison', prev_out_depth)
            
#    print(data['layers'][i])
    prev_out_depth = data['layers'][i]['out_depth']
    print('layer output_depth: ')
    print(data['layers'][i]['out_depth'])
        
    layerList.append(data['layers'][i])
    print(len(data['layers'][i]))

#for i in range(layers):   
#    print(data['layers'][i], '\n\n\n')
    
    if layerList[i]['layer_type'] == 'conv':
        
        print(layerList[i]['layer_type'])
        
        for j in range(len(layerList[i]['filters'])):
            print(layerList[i]['filters'][i])
            print('\n\n')