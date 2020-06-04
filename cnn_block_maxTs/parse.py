import csv
import sys

f = open('bin/temp', 'r')
lines = f.readlines()
w = open('bin/block_result.csv', 'a')
writer = csv.writer(w)

for line in lines:
    if len(line.split()) != 0 and line.split()[0] == 'Kernel':
        writer.writerow([sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], line.split(' ')[4]])
        break

f.close()
w.close()