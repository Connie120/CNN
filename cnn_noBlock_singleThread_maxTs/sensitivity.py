import sys
import csv

fr = open(sys.argv[1], 'r')
fw = open(sys.argv[2], 'w')
fw = csv.writer(fw)
Tm_start = int(sys.argv[3])
Tr_start = int(sys.argv[4])
Tc_start = int(sys.argv[5])
option = sys.argv[6]

fw.writerow(['Tm', 'Tr', 'Tc', 'Tr*Tc', 'Block Size', 'GFLOPS'])

if option == 'Tm':
    for i in range(Tm_start, 3, -1):
        find_str = str(i) + ',' + sys.argv[4] + ',' + sys.argv[5]
        fr.seek(0)
        lines = fr.readlines()[1:]
        for line in lines:
            line = line.strip()
            line = line.split(',')
            if i == int(line[0]) and Tr_start == int(line[1]) and Tc_start == int(line[2]):
                GFLOPS = line[-1]
                break
        fw.writerow([i, Tr_start, Tc_start, Tr_start * Tc_start, i * Tr_start * Tc_start, GFLOPS])
elif option == 'Tr':
    for i in range(Tr_start, 3, -1):
        find_str = sys.argv[3] + ',' + str(i) + ',' + sys.argv[5]
        fr.seek(0)
        lines = fr.readlines()[1:]
        for line in lines:
            line = line.strip()
            line = line.split(',')
            if Tm_start == int(line[0]) and i == int(line[1]) and Tc_start == int(line[2]):
                GFLOPS = line[-1]
                break
        fw.writerow([Tm_start, i, Tc_start, i * Tc_start, Tm_start * i * Tc_start, GFLOPS])
elif option == 'Tc':
    for i in range(Tc_start, 3, -1):
        find_str = sys.argv[3] + ',' + sys.argv[4] + ',' + str(i)
        fr.seek(0)
        lines = fr.readlines()[1:]
        for line in lines:
            line = line.strip()
            line = line.split(',')
            if Tm_start == int(line[0]) and Tr_start == int(line[1]) and i == int(line[2]):
                GFLOPS = line[-1]
                break
        fw.writerow([Tm_start, Tr_start, i, Tr_start * i, Tm_start * Tr_start * i, GFLOPS])
else:
    print("Wrong option!")
