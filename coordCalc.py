from tkinter import*
from pyautogui import position
from time import sleep
from keyboard import is_pressed
import pyperclip



window = Tk()
window.iconbitmap('click.ico')
window.geometry("300x170")
ins = Text(window, font=("Helvetica",12), borderwidth=2, relief="solid")


ent = Entry(window)
ent.focus()
ent.pack()
#ent.delete(0, END)

fontFamily = "Helvetica"
fontSize = 12
fontColor = "red"

coord1 = Label(window, text='ctrl+shift+1')
coord1.pack()
coord2 = Label(window, text='ctrl+shift+2')
coord2.pack()
coordKivonva = Label(window, text='ctrl+shift+n')
coordKivonva.pack()
coordKivonvaOsztva = Label(window, text='ctrl+shift+n')
coordKivonvaOsztva.pack()
x1 = x2 = y1 = y2 = xKivonvaOsztva = yKivonvaOsztva = 0
whileEx = True
def whileExit():
    global whileEx
    whileEx = False




while whileEx == True:
    x, y = position()
    posStrx = str(x).rjust(4) #az rjust (rjust(4, '0')) a stringet átalakítja annyi karakteresre, ami a zárójelben az első szám, és azzal pótolja, ami a 2. érték
    posStry = str(y).rjust(4)
    mousepos = 'X: '+posStrx+' Y: '+posStry
    mouseposFix1 = 'ctrl+shift+1: '+posStrx+', '+posStry
    mouseposFix2 = 'ctrl+shift+2: '+posStrx+', '+posStry
    if is_pressed('ctrl+shift+1'):
        x1 = x
        y1 = y
        coord1.configure(text=mouseposFix1)
    if is_pressed('ctrl+shift+2'):
        x2 = x
        y2 = y
        coord2.configure(text=mouseposFix2)
    ins.insert(INSERT, mousepos)
    ins.pack()
    sleep(0.0005)

    if is_pressed('ctrl+shift+n') or is_pressed('ctrl+shift+-') or is_pressed('enter'):
        try:
            epuletSzam = ent.get()
            epuletSzam = int(epuletSzam)-1
        except ValueError:
            epuletSzam = 1
        if epuletSzam == 0:
            xKivonvaOsztva = yKivonvaOsztva = '0'
        else:
            xKivonva = str(x1-x2)
            yKivonva = str(y1-y2)
            xKivonvaOsztva = str(round((x1-x2)/epuletSzam))
            yKivonvaOsztva = str(round((y1-y2)/epuletSzam))
        coordKivonva.configure(text='ctrl+shift+n: '+xKivonva+', '+yKivonva)
        coordKivonvaOsztva.configure(text='ctrl+shift+n: '+xKivonvaOsztva+', '+yKivonvaOsztva, font=(fontFamily, fontSize), fg=fontColor)
        coord1.configure(font=(fontFamily, fontSize), fg=fontColor)

    if is_pressed('ctrl+shift+q'):
        pyperclip.copy(x1)
    if is_pressed('ctrl+shift+w'):
        pyperclip.copy(y1)
    if is_pressed('ctrl+shift+e'):
        strX1 = str(x1)
        strY1 = str(y1)
        pyperclip.copy(strX1+', '+strY1)
    if is_pressed('ctrl+shift+a'):
        pyperclip.copy(xKivonvaOsztva)
    if is_pressed('ctrl+shift+s'):
        pyperclip.copy(yKivonvaOsztva)
    if is_pressed('ctrl+shift+d'):
        strXKivonvaOsztva = str(xKivonvaOsztva)
        strYKivonvaOsztva = str(yKivonvaOsztva)
        pyperclip.copy(strXKivonvaOsztva+', '+strYKivonvaOsztva)
        
    if is_pressed('ctrl+shift+b'):
        break
    
    window.protocol('WM_DELETE_WINDOW', whileExit)



    window.update()
    ins.delete(1.0,END)
    ins.pack()

        
        

window.destroy()