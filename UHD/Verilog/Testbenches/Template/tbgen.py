#!/usr/bin/python3

#
#   Testbench data generator
# 
#   Input:  Exported samples from UHD --> GNU Octave (.txt)
#   
#   Output: Input data values for the Verilog testbench on stdout
#

import matplotlib.pyplot as plt

SAMPLES_FILE_PATH = '/home/vmetodiev/Documents/UHD_results/Testbench/S1/s1_1.txt'

if __name__ == '__main__':

    line_num = 0
    samples_lst = list()
 
    plot = False

	# Open file using readlines() 
    input_file = open(SAMPLES_FILE_PATH, 'r') 
    lines = input_file.readlines() 
  
    # Add some empty clock cycles
    print('\t// Wait a bit')
    print('\t#10')

    # New line becofe the actual data
    print('\n')

    # Read line by line
    for line in lines:
        print('\t// Sample num: {}'.format(line_num))
        print('\t#2')
        sample_val = line.strip()
        print(str('\t' + 'data_in' + ' = ' + sample_val + ';' + '\n'))
        samples_lst.append(int(sample_val))
        line_num += 1

    print('\t#2 $finish;')
    print('end')

    #print('The file contains {} samples'.format(line_num))

    if plot:    	
        plt.plot(samples_lst)
        plt.title('Symbol S1 - Test 1')
        plt.xlabel('Zeit')
        plt.ylabel('Amplitude')
        plt.show()