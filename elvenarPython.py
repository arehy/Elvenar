import pyautogui
import time

time.sleep(1)

pyautogui.moveTo(1803, 15, 0.2)
pyautogui.click()
time.sleep(1)

for i in range(1):
    kristalyX = 1096
    kristalyY = 423
    marvanyX = 1026
    marvanyY = 708
    dragakoX = 876
    dragakoY = 642


    for i in range(6):
        pyautogui.moveTo(kristalyX, kristalyY, 0.2)
        pyautogui.click()
        time.sleep(1)

        pyautogui.moveTo(1120, 220, 0.2) #félre klikk
        pyautogui.click()
        time.sleep(1)

        pyautogui.moveTo(kristalyX, kristalyY, 0.2)
        pyautogui.click()
        kristalyX -= 64
        kristalyY -= 32
        time.sleep(1)

        pyautogui.moveTo(610, 390, 0.2) #3 órás termelés indítás
        pyautogui.click()
        time.sleep(1)

