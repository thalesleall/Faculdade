#Fazer um programa que simule uma contagem refressiva de 10 minutos, ou seja, mostre: 10:00, 9:59, 9,58, 9:57 até 00:00

import time
for m in range(9, -1, -1):
    for s in range(59, -1,-1):
        print('%02d:%02d' %(m, s))
        #time.sleep(1)
