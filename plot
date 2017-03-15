#!/bin/python

import os,sys

print sys.argv

f = open('/tmp/test.dat', 'w')
f.write("\n")
for i in range(1,1+len(sys.argv)/2):
    f.write(str(sys.argv[i*2-1]) + " " + str(sys.argv[i*2]) + "\n")
f.close()
    
os.system("gnuplot --persist -e \"set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5;plot '/tmp/test.dat' with linespoints ls 1;pause mouse keypress\"")

