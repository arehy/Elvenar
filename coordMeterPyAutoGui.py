import pyautogui
from tkinter import *
root =Tk()

#pyautogui.displayMousePosition()
x, y = position()
posStrx = str(x).rjust(4)
posStry = str(y).rjust(4)
mousepos = 'X: '+posStrx+' Y: '+posStry
print(mousepos)
""" def leftClick(event):
    print(pyautogui.position())
    #print("left Click")


frame = Frame(root, width=300, height=250)
frame.bind("<Button-1>", leftClick)
frame.pack() """
root.mainloop()