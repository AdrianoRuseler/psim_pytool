
import os

for x in range(20, 70, 10):
  cmd = 'PsimCmd.exe -i "L-C filter upstream link.psimsch" -o "out'+str(x)+'.txt" -v "Ro='+str(x)+'" -g'
  os.system(cmd)
