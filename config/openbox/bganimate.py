import subprocess
from pathlib import Path
from time import sleep

home = str(Path.home())
numPics = 553
interval = 0.10
picDir = home + '/.bg/frames'
picName = 'bg_'
fileType = '.png'

while True:
    for i in range(numPics):
        imgPath = str(picDir + '/' + picName) + str(i + 1) + fileType
        currentImg = subprocess.Popen(['feh', '--bg-center',
                                       '--bg-scale', imgPath])
        sleep(interval)
        currentImg.kill()
