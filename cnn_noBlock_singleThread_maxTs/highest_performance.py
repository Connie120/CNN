import csv
import sys

fr = open(sys.argv[1], 'r')
fw = open(sys.argv[2], 'w')
fw = csv.writer(fw)

fw.writerow(['Tm', 'Tr', 'Tc', 'Tr*Tc', 'Block_Size', 'GFLOPS'])

print('Add to dict')
dicty = {}
lines = fr.readlines()[1:]
for line in lines:
    line = line.strip()
    line = line.split(',')
    if int(line[-2]) in dicty.keys():
        dicty[int(line[-2])].append(float(line[-1]))
    else:
        dicty[int(line[-2])] = []
        dicty[int(line[-2])].append(float(line[-1]))

print('max')
for key in dicty:
    dicty[key] = max(dicty[key])

print(len(dicty))
print('write file')
i = 0
for key in dicty:
    print(i)
    for line in lines:
        line = line.strip()
        line = line.split(',')
        if key == int(line[-2]) and dicty[key] == float(line[-1]):
            Tm = int(line[0])
            Tr = int(line[1])
            Tc = int(line[2])
            break
    
    fw.writerow([Tm, Tr, Tc, Tr * Tc, Tm * Tr * Tc, dicty[key]])
    i += 1

print('done')