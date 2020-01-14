import pyautogui
from time import sleep
from random import randint

def rSleep(min, max):
    r = randint(min, max)
    r /= 1000
    sleep(r)


rSleep(800,4300)