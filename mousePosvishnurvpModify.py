from tkinter import*
from pyautogui import position
from time import sleep
from keyboard import is_pressed

window = Tk()
w = 200
h = 40
a = 1
ws = window.winfo_screenwidth()
hs = window.winfo_screenheight()
window.wm_attributes('-topmost','true')
text = Text(window, font=("Helvetica",20), borderwidth=2, relief="solid")
p=1
w = Label(window, text='0')
w.pack()
w2 = Label(window, text='0')
w2.pack()
while True:
    x, y = position()
    posStrx = str(x).rjust(4)
    posStry = str(y).rjust(4)
    mousepos = 'X: '+posStrx+' Y: '+posStry
    if is_pressed('ctrl+shift+x'):
        w.configure(text=mousepos)
    if is_pressed('ctrl+shift+y'):
        w2.configure(text=mousepos)
    text.insert(INSERT, mousepos)
    text.pack()
    sleep(0.0005)
    x= int(posStrx)+15
    y= int(posStry)+15

    if is_pressed('ctrl+shift+b'):
        break



    window.update()
    text.delete(1.0,END)
    text.pack()

        
        

window.destroy()