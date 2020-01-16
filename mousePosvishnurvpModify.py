from tkinter import*
from pyautogui import position
from time import sleep
from keyboard import is_pressed

window = Tk()
window.geometry("130x170")
ins = Text(window, font=("Helvetica",12), borderwidth=2, relief="solid")

ent = Entry(window)
ent.pack()
ent.delete(0, END)



coord1 = Label(window, text='0')
coord1.pack()
coord2 = Label(window, text='0')
coord2.pack()
coordKivonva = Label(window, text='0')
coordKivonva.pack()
coordKivonvaOsztva = Label(window, text='0')
coordKivonvaOsztva.pack()


while True:
    x, y = position()
    posStrx = str(x).rjust(4) #az rjust (rjust(4, '0')) a stringet átalakítja annyi karakteresre, ami a zárójelben az első szám, és azzal pótolja, ami a 2. érték
    posStry = str(y).rjust(4)
    mousepos = 'X: '+posStrx+' Y: '+posStry
    if is_pressed('ctrl+shift+1'):
        x1 = x
        y1 = y
        coord1.configure(text=mousepos)
    if is_pressed('ctrl+shift+2'):
        x2 = x
        y2 = y
        coord2.configure(text=mousepos)
    ins.insert(INSERT, mousepos)
    ins.pack()
    sleep(0.0005)

    if is_pressed('ctrl+shift+n'):
    
        epuletSzam = ent.get()
        epuletSzam = int(epuletSzam)-1
        xKivonva = str(x1-x2)
        yKivonva = str(y1-y2)
        xKivonvaOsztva = str((x1-x2)/epuletSzam)
        yKivonvaOsztva = str((y1-y2)/epuletSzam)

        coordKivonva.configure(text=xKivonva+', '+yKivonva)
        coordKivonvaOsztva.configure(text=xKivonvaOsztva+', '+yKivonvaOsztva)

    if is_pressed('ctrl+shift+b'):
        break



    window.update()
    ins.delete(1.0,END)
    ins.pack()

        
        

window.destroy()