import iniElvenarPyJenka as ini
import pyautogui
import time
from random import randint

def rSleep(min, max): #milisecben kell megadni
    rSleep = randint(min, max)/1000
    time.sleep(rSleep)
def rMouseSpeed(min, max): #milisecben kell megadni
    rms = randint(min, max)/1000
    return rms
def rNum(min, max):
    rNum = randint(min, max)
    return rNum
def moveClick(clickX, clickY):
    pyautogui.moveTo(clickX, clickY, rMouseSpeed(ini.mouseSpeedMin, ini.mouseSpeedMax)) #beszed
    pyautogui.click()
def moveClickOutside():
    pyautogui.moveTo(rNum(ini.felreXmin, ini.felreXmax), rNum(ini.felreYmin, ini.felreYmax), rMouseSpeed(ini.mouseSpeedMin, ini.mouseSpeedMax)) #felre klikk
    pyautogui.click()
def manu3hourClick():
    pyautogui.moveTo(rNum(ini.aru3hourXmin, ini.aru3hourXmax), rNum(ini.aru3hourYmin, ini.aru3hourYmax), rMouseSpeed(ini.mouseSpeedMin, ini.mouseSpeedMax)) #bal felső termelés indítás (1, 1.5, 3 órás)
    pyautogui.click()


def manufact(n, elsoManuCoordX, elsoManuCoordY, mozgasCoordX, mozgasCoordY, maxDifX, maxDifY): #maxDifX: Maximum megengedett különbség az X koordinátán.
    for i in range(n):
        clickX = elsoManuCoordX + rNum(-(maxDifX), maxDifX) # - és +
        clickY = elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        pyautogui.moveTo(clickX, clickY, rMouseSpeed(ini.mouseSpeedMin, ini.mouseSpeedMax)) #beszed
        pyautogui.click()
        rSleep(ini.sleepMin, ini.sleepMax)
        moveClickOutside() #felre klikk
        rSleep(ini.sleepMin, ini.sleepMax)
        clickX = elsoManuCoordX + rNum(-(maxDifX), maxDifX) # - és +
        clickY = elsoManuCoordY + rNum(-(maxDifY), maxDifY)
        moveClick(clickX, clickY) #zzzzzzz
        elsoManuCoordX = elsoManuCoordX + mozgasCoordX
        elsoManuCoordY = elsoManuCoordY + mozgasCoordY
        rSleep(ini.sleepMin, ini.sleepMax)
        manu3hourClick() #3 órás termelés indítás
        rSleep(ini.sleepMin, ini.sleepMax)
        print(i)
