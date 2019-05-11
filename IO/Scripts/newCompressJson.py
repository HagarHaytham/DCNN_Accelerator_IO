#this code reads json file and compresses it v3.0

import json
import numpy as np

with open('CNN_info_Sample.json') as f:
    data = json.load(f)
    
#get number of layers and write it to unCompressed data
layers = len(data['layers'])
print('number of layers ', layers)
unCompressed = str(np.binary_repr(layers, 16))
print('unCompressed data after adding layers number ', unCompressed)
#unCompressed += "\n"
########################################################################################################


#used with fc to calculate number of channels
out_sx_of_previous = list()


for i in range(layers):

	#get a layer
    layer = data['layers'][i]
    print('i', i)
    
    #get layer type
    if layer['layer_type'] == 'conv':
        layer_type = 0
    elif layer['layer_type'] == 'fc':
        layer_type = 2
    else:
        layer_type = 1 

    #write layer type to unCompressed data
    unCompressed += str(np.binary_repr(layer_type, 16))
    print('unCompressed after layer type', unCompressed)
    #unCompressed += "\n"

    #get filter size
    if layer_type == 1:
    	filter_size = 1

    elif layer_type == 2:
    	filter_size = 5

    else:
    	filter_size = layer['sx']

    #append layer size to out sizes
    out_sx_of_previous.append(filter_size)

    #write filter size to unCompressed data
    unCompressed += str(np.binary_repr(filter_size, 16))
    print('unCompressed after filter size', unCompressed)
    #unCompressed += "\n"


    #get new layer size
    if layer_type == 2:
    	new_layer_size = 1
    else:
    	new_layer_size = layer['out_sx']

    #write new layer size to unCompressed data
    unCompressed += str(np.binary_repr(new_layer_size, 16))
    print('unCompressed after new layer size', unCompressed)
    #unCompressed += "\n"

	#write new layer size * new layer size to unCompressed data
    unCompressed += str(np.binary_repr(new_layer_size * new_layer_size, 16))
    print('unCompressed after new layer size', unCompressed)
    #unCompressed += "\n"    


    if layer_type == 1:
    	filters = 1

    else:
    	filters = len(layer['filters'])

    #write new layer size * new layer size * filters in current layer to unCompressed data
    unCompressed += str(np.binary_repr(new_layer_size * new_layer_size * filters , 16))
    print('unCompressed after new layer size', unCompressed)
    #unCompressed += "\n"


    if layer_type == 2:
    	n_in_channels = np.math.floor(out_sx_of_previous[i-1] * out_sx_of_previous[i-1] / 25.0)
    	unCompressed += str(np.binary_repr(new_layer_size * new_layer_size * n_in_channels , 16))
    	print('unCompressed after channels in fc', unCompressed)
    	#unCompressed += "\n"

    write bias before filter
    if layer_type != 1:
    	for f in range(layer['filters']):
    		bias = layer['biases']
    		unCompressed += str(np.binary_repr(bias, 16))
    		print('unCompressed after bias', unCompressed)
    		#unCompressed += "\n"

    		for d in range(layer['filters']['depth']):
    			

    			





count = 0
prev_bit = unCompressed[0]
compressed = str()

for i in range(len(unCompressed)):
	if prev_bit == unCompressed[i] and count < 128:
		count += 1
		print('i', unCompressed[i], 'count', count)
	else:
		compressed += (prev_bit + str(np.binary_repr(count, 7)))
		prev_bit = unCompressed[i]
		count = 1

print(compressed)

with open ("jsnUn.txt",'w') as f:            
    f.write(unCompressed)

with open ("jsnC.txt",'w') as f:            
    f.write(compressed)







