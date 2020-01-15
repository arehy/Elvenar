import pyautogui
from tkinter import *
root =Tk()

#pyautogui.displayMousePosition()

def leftClick(event):
    #print(pyautogui.position())
    print('left Click')


frame = Frame(root, width=300, height=250)
frame.bind ("<Button-1>", leftClick)
frame.pack
root.mainloop()