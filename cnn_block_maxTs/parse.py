import csv
import sys

f = open('bin/temp', 'r')
lines = f.readlines()
w = open('bin/block_result.csv', 'a')
writer = csv.writer(w)

for line in lines:
    if len(line.split()) != 0 and line.split()[0] == 'Kernel':
        gflops = 16 * 16 * 128 * 128 * 4 * 4 * 2 / (float(line.split(' ')[4]) / 1000) / 1000000000
        writer.writerow([sys.argv[1], sys.argv[2], sys.argv[3], line.split(' ')[4], str(gflops)])
        break

f.close()
w.close()