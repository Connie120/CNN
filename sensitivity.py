import sys
import csv

fr = open(sys.argv[1], 'r')
fw = open(sys.argv[2], 'w')
fw = csv.writer(fw)
Tm_start = int(sys.argv[3])
Tr_start = int(sys.argv[4])
Tc_start = int(sys.argv[5])
option = sys.argv[6]

fw.writerow(['Tm', 'Tr', 'Tc', 'Block Size', 'GFLOPS'])

if option == 'Tm':
    for i in range(Tm_start, 1, -1):
        find_str = str(i) + ',' + sys.argv[4] + ',' + sys.argv[5]
        print(find_str)
        lines = fr.readlines()
        for line in lines:
            if find_str in line:
                print(line)
                GFLOPS = line.split(',')[-1]
                break
        fw.writerow([i, Tr_start, Tc_start, i * Tr_start * Tc_start, GFLOPS])
elif option == 'Tr':
    for i in range(Tr_start, 1, -1):
        find_str = sys.argv[3] + ',' + str(i) + ',' + sys.argv[5]
        lines = fr.readlines()
        for line in lines:
            if find_str in line:
                print(line)
                GFLOPS = line.split(',')[-1]
                break
        fw.writerow([Tm_start, i, Tc_start, Tm_start * i * Tc_start, GFLOPS])
elif option == 'Tc':
    for i in range(Tc_start, 1, -1):
        find_str = sys.argv[3] + ',' + sys.argv[4] + ',' + str(i)
        lines = fr.readlines()
        for line in lines:
            if find_str in line:
                print(line)
                GFLOPS = line.split(',')[-1]
                break
        fw.writerow([Tm_start, Tr_start, i, Tm_start * Tr_start * i, GFLOPS])
else:
    print("Wrong option!")
