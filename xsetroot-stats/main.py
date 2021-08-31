import os
import time
from datetime import date

while True:
  time.sleep(1)
  t = time.localtime()
  currenttime = time.strftime("%H:%M:%S | %d.%m.20%y", t)
  try:
    cputemp = (os.popen("sensors | grep Package").read().split())[3]
  except:
    try:
      cputemp = (os.popen("sensors | grep Core").read().split())[2]
    except:
      cputemp = "Temperature error"
  try:
    localip = (os.popen("ip a | grep 192").read().split())[1]
  except:
    localip = "Network error"
  text = currenttime + " | " + localip + " | " + cputemp
  os.system("xsetroot -name '" + text + " _____'")
