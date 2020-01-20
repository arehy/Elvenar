import pyautogui
import time
import iniElvenarPyJenka as ini
import functionElvenarPyJenka as func


for i in range(2):
    kristalyX = ini.kristalyX
    kristalyY = ini.kristalyY
    marvanyX = ini.marvanyX
    marvanyY = ini.marvanyY
    dragakoX = ini.dragakoX
    dragakoY = ini.dragakoY

    func.manufact(3, kristalyX, kristalyY, -64, -32, 3, 2)


    """ for i in range(2):
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
        time.sleep(1) """

