import csv
import sys

f = open('bin/temp', 'r')
lines = f.readlines()
w = open('bin/block_result.csv', 'a')
writer = csv.writer(w)

result = []
result.append(int(sys.argv[1]))
result.append(int(sys.argv[2]))
result.append(int(sys.argv[3]))

for line in lines:
    if len(line.split()) != 0 and line.split()[0] == 'Kernel':
        result.append(float(line.split(' ')[4]))

gflops = 16 * 16 * 128 * 128 * 4 * 4 * 2 / (min(result[3:]) / 1000) / 1000000000
result.append(min(result[3:]))
result.append(gflops)
writer.writerow(result)

f.close()
w.close()